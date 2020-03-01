<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<form role="form" action="${ctx}/manage/orderretrunlist/updateRebank.html" method="post" id="inputForm" >
	<input id="returnlistid" name="returnlistid" type="hidden" value="${returnlistid}"/>

	<div class="modal-header">
       <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icon-remove"></i></button>
       <h4 class="modal-title" id="myModalLabel">还款信息更新</h4>
    </div>
	 <div class="modal-body">
	  	 <div class="form-group clearfix" >
	        <label  class="control-label col-sm-3 col-lg-4 text-right"><b class="color_red">*</b>未还款金额:</label>
	        <div class="col-sm-7">
	          <input id="norepaymentamount" name="norepaymentamount" class="form-control" type="text"  value="${param.norepaymentamount}" ></input>
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
		$("#inputForm").validate({
			rules: {
				"treasureName":{required:true,isOverMonth:true,maxlength:100}
			}
		});
	});
</script>  
