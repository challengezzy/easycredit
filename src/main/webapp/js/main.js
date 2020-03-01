//以下是除框架外主要JS脚本内容。
//解决Windows Phone 8 和 Internet Explorer 10兼容问题
if (navigator.userAgent.match(/IEMobile\/10\.0/)) {
    var msViewportStyle = document.createElement("style");
    msViewportStyle.appendChild(document.createTextNode("@-ms-viewport{width:auto!important}"));
    document.getElementsByTagName("head")[0].appendChild(msViewportStyle);
}

//主要JS代码开始
// 定义tooltip提示
$('.tooltip-show').popover({
    selector: "[data-toggle=tooltip]",
    container: "body",
    trigger: "hover",
    html: "true"
})

// 定义popover提示
$('.popover-show').popover({
    selector: "[data-toggle=popover]",
    trigger: "focus",
    html: "true",
    container: "body",
})

// popover提示,鼠标未离开提示框时提示不消失
$("[data-toggle=popover2]").popover({
    trigger: 'manual',
    //            placement:'bottom', 
    template: '<div class="popover  popover_big"><div class="arrow"></div><h3 class="popover-title"></h3><div class="popover-content"></div></div>',
    html: 'true',
}).on("mouseenter",function() {
    var _this = this;
    $(this).siblings(".popover").popover('hide');
    $(this).popover("show");
    $(this).siblings(".popover").on("mouseleave",
    function() {
        $(_this).popover('hide');
    });
}).on("mouseleave",function() {
    var _this = this;
    setTimeout(function() {
        if (!$(".popover:hover").length) {
            $(_this).popover("hide")
        }
    },
    100);
});

$('.popover-show-more').popover({
    selector: "[data-toggle=popover]",
    trigger: "click",
    placement: "right",
    html: "true",
    container: "body"
})

//插件JS代码开始
//解决i8、ie9输入框提示语不显示问题
$.support.placeholder = false;
if ("placeholder" in document.createElement("input")) $.support.placeholder = true;
if (!$.support.placeholder) {
    var active = document.activeElement;
    $(":text, textarea").live("focus",
    function() {
        if ($(this).attr("placeholder") != "" && $(this).val() == $(this).attr("placeholder")) {
            $(this).val("").removeClass("placeholder");
        }
    }).live("change",
    function() {
        var placeHolder = $(this).attr("placeholder");
        if (!placeHolder || $.trim(placeHolder) === "") {
            return;
        }

        if ($(this).val() == placeHolder) {
            $(this).addClass("placeholder");
        } else {
            $(this).removeClass("placeholder");
        }
    }).live("blur",
    function() {
        if ($(this).attr("placeholder") != "" && ($(this).val() == "" || $(this).val() == $(this).attr("placeholder"))) {
            $(this).val($(this).attr("placeholder")).addClass("placeholder");
        }
    });
    $(":text, textarea").blur();
    $(active).focus();
    $("form").submit(function() {
        $(this).find(".placeholder").each(function() {
            // 防止通过js修改输入框的值，没有移除placeholder样式(如时间控件)，导致值被清空
            if ($(this).val() === $(this).attr("placeholder")) {
                $(this).val("");
            }
        });
    });
}

//模组引用外部页面内容
$('[data-load-remote]').on('click',function(e) {
    e.preventDefault();
    var $this = $(this);
    var remote = $this.data('load-remote');
    if (remote) {
        $($this.data('target') + ' .modal-body').load(remote);
    }
});

//日期选择插件
//选择日期时间
$('.form_datetime').datetimepicker({
    language: 'zh-CN',
    pickerPosition: 'bottom-left',
    weekStart: 1,
    todayBtn: 1,
    autoclose: 1,
    todayHighlight: 1,
    minuteStep: 1,
    showMeridian: 1,
    startView: 2,
    minView: 0,
    maxView: 4,
});

//选择日期
$('.form_date').datetimepicker({
    language: 'zh-CN',
    pickerPosition: 'bottom-left',
    weekStart: 1,
    todayBtn: 1,
    autoclose: 1,
    todayHighlight: 1,
    minuteStep: 1,
    showMeridian: 1,
    startView: 2,
    minView: 2,
    maxView: 4,
});

//选择日期
$('.form_date_s').datetimepicker({
    language: 'zh-CN',
    pickerPosition: 'bottom-left',
    weekStart: 1,
    todayBtn: 1,
    autoclose: 1,
    todayHighlight: 1,
    minuteStep: 1,
    showMeridian: 1,
    startView: 2,
    minView: 2,
    maxView: 4,
});

//选择时间
$('.form_time').datetimepicker({
    language: 'zh-CN',
    pickerPosition: 'bottom-left',
    weekStart: 1,
    autoclose: 1,
    todayHighlight: 1,
    minuteStep: 1,
    showMeridian: 1,
    startView: 1,
    minView: 0,
    maxView: 1,
    todayBtn: 0,
    forceParse: 0
});

//用JQ UI的拖动功能使得所有模态框可以拖动。
$(".modal-content").draggable({
    handle: ".modal-header",
    cursor: "move",
});

//表单插件Selec2
jQuery(document).ready(function() {
	 
    $('.select2_sample1').select2({
        placeholder: "请选择...",
        allowClear: true
    });
    $('.select2_sample2').select2({
        placeholder: "请选择...",
        allowClear: true
    });
    $(".select2_sample3").select2({
        allowClear: true,
        minimumInputLength: 1,
        query: function(query) {
            var data = {
                results: []
            },i,j,s;
            for (i = 1; i < 5; i++) {
                s = "";
                for (j = 0; j < i; j++) {
                    s = s + query.term;
                }
                data.results.push({
                    id: query.term + i,
                    text: s
                });
            }
            query.callback(data);
        }
    });
    
    $(".select2_sample4").select2({
        allowClear: true,
        formatResult: format,
        formatSelection: format,
        escapeMarkup: function(m) {
            return m;
        }
    });

    $(".select2_sample5").select2({
        tags: ["red", "green", "blue", "yellow", "pink"]
    });
    
    $(".select2_sample6").select2({
        placeholder: "请选择一部电影",
        minimumInputLength: 1,
        ajax: { // instead of writing the function to execute the request we use Select2's convenient helper
            url: "http://api.rottentomatoes.com/api/public/v1.0/movies.json",
            dataType: 'jsonp',
            data: function(term, page) {
                return {
                    q: term,
                    // search term
                    page_limit: 10,
                    apikey: "ju6z9mjyajq2djue3gbvv26t" // please do not use so this example keeps working
                };
            },
            results: function(data, page) { // parse the results into the format expected by Select2.
                // since we are using custom formatting functions we do not need to alter remote JSON data
                return {
                    results: data.movies
                };
            }
        },
        initSelection: function(element, callback) {
            // the input tag has a value attribute preloaded that points to a preselected movie's id
            // this function resolves that id attribute to an object that select2 can render
            // using its formatResult renderer - that way the movie name is shown preselected
            var id = $(element).val();
            if (id !== "") {
                $.ajax("http://api.rottentomatoes.com/api/public/v1.0/movies/" + id + ".json", {
                    data: {
                        apikey: "ju6z9mjyajq2djue3gbvv26t"
                    },
                    dataType: "jsonp"
                }).done(function(data) {
                    callback(data);
                });
            }
        },
        formatResult: movieFormatResult,
        // omitted for brevity, see the source of this page
        formatSelection: movieFormatSelection,
        // omitted for brevity, see the source of this page
        dropdownCssClass: "bigdrop",
        // apply css that makes the dropdown taller
        escapeMarkup: function(m) {
            return m;
        } // we do not want to escape markup since we are displaying html in results
    });
    
   
    function format(state) {
        if (!state.id) return state.text; // optgroup
        return state.text;
    }
    
    function movieFormatResult(movie) {
        var markup = "<table class='movie-result'><tr>";
        if (movie.posters !== undefined && movie.posters.thumbnail !== undefined) {
            markup += "<td valign='top'><img src='" + movie.posters.thumbnail + "'/></td>";
        }
        markup += "<td valign='top'><h5>" + movie.title + "</h5>";
        if (movie.critics_consensus !== undefined) {
            markup += "<div class='movie-synopsis'>" + movie.critics_consensus + "</div>";
        } else if (movie.synopsis !== undefined) {
            markup += "<div class='movie-synopsis'>" + movie.synopsis + "</div>";
        }
        markup += "</td></tr></table>"
        return markup;
    }

    function movieFormatSelection(movie) {
        return movie.title;
    }
});

$(function() {
    //日期范围选择	
    $(".daterange").daterangepicker({

        startDate: moment().subtract(29, 'days'),
        endDate: moment(),
        minDate: '2014-01-01',
        //  maxDate: '2016-01-01',
        //  dateLimit: { days: 60 },
        showDropdowns: true,
        showWeekNumbers: true,
        timePicker: false,
        timePickerIncrement: 1,
        timePicker12Hour: true,
        ranges: {
            '今天': [moment(), moment()],
            '昨天': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
            '最近7天': [moment().subtract(6, 'days'), moment()],
            '最近30天': [moment().subtract(29, 'days'), moment()],
            '本月': [moment().startOf('month'), moment().endOf('month')],
            '上个月': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
        },
        opens: 'left',
        buttonClasses: ['btn'],
        applyClass: 'btn-primary',
        cancelClass: 'btn-default',
        format: 'YYYY-MM-DD',
        separator: ' 至 ',
        locale: {
            applyLabel: '确定',
            cancelLabel: '取消',
            fromLabel: '从',
            toLabel: '到',
            customRangeLabel: '自定义',
            daysOfWeek: ['一', '二', '三', '四', '五', '六', '日'],
            monthNames: ['一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月', '九月', '十月', '十一月', '十二月'],
            firstDay: 0
        }

    });

    //拖动动面板脚本
    $(".column").sortable({
        connectWith: ".column",
        handle: ".panel-heading",
        cancel: ".portlet-toggle",
        placeholder: "portlet-placeholder ui-corner-all"
    });
    $(".column .panel").addClass("ui-corner-all").find(".panel-title").addClass("ui-corner-all").append("<span class='badge badge-info btn  pull-right portlet-toggle'><i class='icon-minus'></i> 折叠</span>");
    $(".column .portlet-toggle").click(function() {
        if ($(this).html() == '<i class="icon-plus"></i> 展开') {
            $(this).html("<i class='icon-minus'></i> 折叠");
        } else $(this).html("<i class='icon-plus'></i> 展开");
        var icon = $(this);
        icon.closest(".column .panel").find(".panel-body").toggle();
    });

});

//标签选择器
function change_tab(id) {
    $('.record').hide();
    $('#' + id).show();
    var idx = $('.statistics_button').nextAll().index($('#' + id)) + 1;
    $('.statistics_button>a').removeClass('bt_on');
    $('.statistics_button>a:nth-child(' + idx + ')').addClass('bt_on');
}

$(".btn-edit-list button").bind("click",
function() {
    var id = $(this).attr("data-id");
    var name = $(this).attr("data-name");
    var time = $(this).attr("data-time");
    $("#updateID").val(id);
    $("#updateName").val(name);
    $("#updateTime").val(time);
});