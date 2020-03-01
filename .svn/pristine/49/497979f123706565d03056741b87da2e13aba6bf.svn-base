function jumpPage(pageNo, totalPages) {
	if(pageNo!=''){
		if(!isNaN(parseInt(pageNo,10))){
			if(new Number(pageNo) > new Number(totalPages))
				pageNo = totalPages;
			
			$("#pageNo").val(pageNo);
			$("#mainForm").submit();
		}else{
			$("#jumpPageNo").val("");
		}
	}
}

function sort(orderBy, defaultOrder) {
	if ($("#orderBy").val() == orderBy) {
		if ($("#order").val() == "") {
			$("#order").val(defaultOrder);
		}
		else if ($("#order").val() == "desc") {
			$("#order").val("asc");
		}
		else if ($("#order").val() == "asc") {
			$("#order").val("desc");
		}
	}
	else {
		$("#orderBy").val(orderBy);
		$("#order").val(defaultOrder);
	}

	$("#mainForm").submit();
}

function setPageSize(pageSize){
	$("#pageNo").val("1");
	$("#pageSize").val(pageSize);
	$("#mainForm").submit();
}

function search() {
	$("#order").val("");
	$("#orderBy").val("");
	$("#pageNo").val("1");

	$("#mainForm").find(":text:visible").each(function () {
	    this.value = $.trim(this.value);
	});

	$("#mainForm").submit();
}

var listReg = /.*list.jsp$/ig;
//if (listReg.test(servletPath)) {
    $(function() {
        var startEle = $("input[name*='start'][name$='Date'],input[name*='start'][name$='Time']");
        if (startEle.length > 0) {
            var startEleName = startEle.attr("name");
            var endEleName = startEleName.replace("start", "end");
            
            var rules = {};
            rules[endEleName] = {
                    beforeToday: new Date(nowMilliseconds),
                    maxDate: ["input[name='" + startEleName + "']", "开始时间"]
            }
            
            $("#mainForm").validate({
                rules: rules
            });
        }
        
        var functionHrefReg = new RegExp("^javascript:", "i");
        var anchorHrefReg = new RegExp("#$");
        var operationLinks = $("div.panel-body ul.dropdown-menu a").filter(function (index) {
            var href = this.href;
            var isMatch = functionHrefReg.test(href) || anchorHrefReg.test(href);
            // console.info(href + "======" + isMatch);
            return !isMatch;
        });
        operationLinks.click(function (event) {
            // 不跳转链接，通过下面的doGet()添加参数以后跳转
            event.preventDefault();

            // 避免选中的复选框，导致生成的url多加了其他checkedIds
            // if (!$(this).closest("div.table_page").length) {
                // checkAll(false);
            // }

            doGet(this.href, true);
        });
    });
//}

function confirmAction(url, msg) {
	if(confirm(msg) == true)
		window.location.assign(url + getSearchParams(true, url));
}

function checkAll(isCheck) {
    isCheck = !!isCheck;

    $("input.checkedIds").each(function() {
        this.checked = isCheck;
    });
}

function getSearchParams(excludeCheckedIds, toUrl, id){
    // 跳转到的Url和当前页面不在同一个namespace时，不添加查询条件等参数，避免后台报错
    if (toUrl && toUrl.indexOf("/") >= 0) {
        var url = location.pathname;
        var nameSpaceIndex = url.lastIndexOf("/");
        var nameSpace = url.substr(0, nameSpaceIndex + 1);
        
        if (toUrl.indexOf(nameSpace) < 0) {
            return "";
        }
    }
    
    var form = null;
    if (id) {
        form = $("#" + id);
    } else {
        form = $("form");
    }

    var container = form.find(":input:not(input[name='checkedIds'])").filter(function () {
        var result = false;
        var placeholder = $(this).attr("placeholder");
        var value = $.trim(this.value);

        if (placeholder && placeholder != value) {
            result = true;
        } else if (!placeholder && value) {
            result = true;
        }

        return result;
    });
    var params = "";
    if (container.length) {
        params = params + "&" + container.serialize();
    }
    if (!excludeCheckedIds) {
        params = params + "&checkedIds=" + getCheckedIds();
    }

    return params;
}

function getCheckedIds() {
    return $.map($("input[name='checkedIds']:checked"), function(a) {
        return (a.value);
    });
}

/** get请求 */
function doGet(url, excludeCheckedIds){
    location.assign(url+getSearchParams(excludeCheckedIds, url));
}

$(document).ready(function() {
    var addRows = $(".add-row");
    if (addRows.length) {
        $(".add-row").click(addRow);
        $(".edit-row").click(editRow);
        $(".delete-row").click(deleteRow);
        $(".move-row-up").click(moveUp);
        $(".move-row-down").click(moveDown);
        
        var tableId = $(".add-row").attr("data-table-id");
        if (tableId) {
            table = $("#" + tableId);
        } else {
            table = $(this).closest("table");
        }
        if (table.length && !table.get(0).tBodies[0].rows.length) {
            $(".add-row").click();
        }
    }
});

function addRow(event) {
    event.preventDefault();
    var table = null;
    var tableId = $(this).attr("data-table-id");
    if (tableId) {
        table = $("#" + tableId);
    } else {
        table = $(this).closest("table");
    }
    
    var templateRow = cloneRow(table);
    
    table.append(templateRow);
    recalcRowNo(table.get(0));
    renameInputName(templateRow.get(0));
    templateRow.show();
}

function cloneRow(table) {
    var templateRow = table.find("tr.row-template").clone(true);
    templateRow.removeClass("row-template");
    
    return templateRow;
}

function editRow(event, srcEle) {
    event.preventDefault();
    var srcEle = this || srcEle;
    var table = $(srcEle).closest("table");
    
    var orgRow = $(srcEle).closest("tr");
    var orgCells = orgRow.get(0).cells;
    var templateRow = cloneRow(table).get(0);
    var cells = templateRow.cells;
    var cellLength = cells.length;
    for (var i = 0; i < cellLength; i++) {
        var orgInput = $(orgCells[i]).find(":input");
        var orgVal = orgCells[i].innerHTML;
        if (orgInput.length) {
            orgVal = orgInput.val();
        }
        
        var input = $(cells[i]).children(":input");
        if (input.length) {
            input.val(orgVal);
            input.attr("name", orgInput.attr("name"));
        } else {
            cells[i].innerHTML = orgVal;
        }
    }
    
    orgRow.replaceWith(templateRow);
    $(templateRow).show();
}

function deleteRow(event, srcEle) {
    event.preventDefault();
    var srcEle = this || srcEle;
    var orgRow = $(srcEle).closest("tr");
    if (!orgRow.siblings().length) {
        alert("不允许删除最后一行！");
        return;
    }

    var table = $(srcEle).closest("table").get(0);
    var index = orgRow.get(0).sectionRowIndex;
    var rowContainer = orgRow.parent();
    orgRow.remove();
    
    recalcRowNo(table);

    var rows = rowContainer.children("tr");
    for (var i = index; i < rows.length; i++) {
        renameInputName(rows[i]);
    }
}

function moveUp(event, srcEle, step) {
    event.preventDefault();
    var srcEle = this || srcEle;
    var step = step || -1;
    var table = $(srcEle).closest("table").get(0);
    var orgRow = $(srcEle).closest("tr").get(0);
    var index = orgRow.sectionRowIndex;
    // table.moveRow(index, index + step);
    // table.swapNode(orgRow, otherRow);
   if (step < 0 && index + step >= 0) {
        var otherRow = table.tBodies[0].rows[index + step];
        $(orgRow).insertBefore($(otherRow));
        recalcRowNo(table);
        renameInputName(orgRow);
        renameInputName(otherRow);
    }
}

function moveDown(event, srcEle, step) {
    event.preventDefault();
    var srcEle = this || srcEle;
    var step = step || 1;
    var table = $(srcEle).closest("table").get(0);
    var orgRow = $(srcEle).closest("tr").get(0);
    var index = orgRow.sectionRowIndex;
    // table.moveRow(index, index + step);
    // table.swapNode(orgRow, otherRow);
    if (step > 0 && index + step < table.rows.length) {
        var otherRow = table.tBodies[0].rows[index + step];
        $(orgRow).insertAfter($(otherRow));
        recalcRowNo(table);
        renameInputName(orgRow);
        renameInputName(otherRow);
    }
}

function recalcRowNo(table) {
    var hasNo = $(table).find("tbody td.no");
    
    if (hasNo) {
        var rows = table.tBodies[0].rows;
        for (var i = 0; i < rows.length; i++) {
            var row = $(rows[i]);
            row.find("td.no").html(i + 1);
        }
    }
}

var indexReg = /\[\d*\]/;
function renameInputName(row) {
    var index = row.sectionRowIndex;
    
    $(row).find(":input").each(function () {
        var orgName = this.name;
        var name = orgName.replace(indexReg, "[" + index + "]");
        this.name = name;
    });
}
