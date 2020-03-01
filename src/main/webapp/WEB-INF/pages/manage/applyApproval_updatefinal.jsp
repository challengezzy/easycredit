<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>

<form  action="${ctx}/manage/applyApproval/update.html" method="post" id="inputForm" >
	<input id="orderid" name="orderid" type="hidden" value="${orderid}">
	<input id="resultflag" name="resultflag" type="hidden" value="${resultflag}">
	<input id="status" name="status" type="hidden" value="${status}">

	<div class="modal-header">
       <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icon-remove"></i></button>
       <h4 class="modal-title" id="myModalLabel">合作审核确认页</h4>
    </div>
	 <div class="modal-body">
	 	 <div class="form-group clearfix" >
		  	 <label class="control-label col-sm-3 col-lg-4 text-right"><b class="color_red">*</b>审批金额：</label>
		  	 <div class="col-sm-7">
		  	 	<input id="loanamountpre" name="loanamountpre" type="text" value="${loanamountpre}">
	 	 	 </div>
	 	 </div>
	 	 <div class="form-group clearfix" >
		  	 <label class="control-label col-sm-3 col-lg-4 text-right"><b class="color_red">*</b>审批利率(%)：</label>
		  	 <div class="col-sm-7">
		  	 	<input id="loanratepre" name="loanratepre" type="text" value="${loanratepre}">
	 	 	 </div>
	 	 </div>
	 	  <div class="form-group clearfix" >
		  	 <label class="control-label col-sm-3 col-lg-4 text-right"><b class="color_red">*</b>审批期限(月)：</label>
		  	 <div class="col-sm-7">
		  	 	<input id="loantimelimitpre" name="loantimelimitpre" type="text" value="${loantimelimitpre}">
	 	 	 </div>
	 	 </div>
	 	 
		  
	  	 <div class="form-group clearfix" >
	        <label  class="control-label col-sm-3 col-lg-4 text-right"><b class="color_red">*</b>审批意见：</label>
	        <div class="col-sm-7">
	           	<textarea id="comments" name="comments" class="form-control" type="text"  value="${comments}"></textarea>
	        </div>
	 	 </div>
	    <div class="modal-footer">
		   	<button type="button" class="btn btn-default" data-dismiss="modal"><i class="icon-remove"></i> 取消</button>
		   	<button type="submit" class="btn btn-primary"><i class="icon-ok"></i> 确定</button>
	   	</div>
	 </div>
</form>

<script type="text/javascript">
$(document).ready(function() {
		
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
	
	$("#inputForm").validate({
		rules: {
			"loanamount":{required:true,isPrice:true},
			"loantimes":{required:true,date:true},
			"loanlimittimes":{required:true,date:true},
			"comments":{required:true,maxlength:300},
		}
	});
	
    jQuery.validator.addMethod("isPrice", function(value, element) {       
         return this.optional(element) || /^[-\+]?\d+$/.test(value) || /^[-\+]?\d+(\.\d+)?$/.test(value);       
    }, "请输入正确的金额！"); 
});
</script>  
