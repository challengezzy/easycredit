<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<form role="form" id="inputForm" action="${ctx}/manage/security/user/updatePasswordSave.html" method="post">
	<input type="hidden" id="userId" name="userId" value=""/>
	<div class="modal-header">
       <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icon-remove"></i></button>
       <h4 class="modal-title" id="myModalLabel">重置密码</h4>
    </div>
	 <div class="modal-body">
       	<div class="form-group clearfix" >
            <label  class="control-label col-sm-4  col-lg-4 text-right"><b class="color_red">*</b>新密码：</label>
            <div class=" col-sm-9  col-lg-5">
              <input  class="form-control" type="password" id="password" name="password" maxlength="32" value=""  placeholder="(请输入新密码)"/>
            </div>
        </div>
        <div class="form-group clearfix" >
            <label  class="control-label col-sm-4 col-lg-4 text-right"><b class="color_red">*</b>重复密码：</label>
            <div class=" col-sm-9   col-lg-5">
              <input  class="form-control" type="password" id="password2" name="password2" maxlength="32" value=""  placeholder="(再次输入新密码)"/>
            </div>
        </div>
	    <div class="modal-footer">
		   	<button type="button" class="btn btn-default" data-dismiss="modal"><i class="icon-remove"></i> 取消</button>
		   	<button type="submit" class="btn btn-primary" ><i class="icon-ok"></i> 确定</button>
	   </div>
	 </div>
</form>

<script type="text/javascript">
$(document).ready(function() {
	$("#inputForm").validate({
		rules: {
			"password":{
				required:true,
				maxlength:32
			},
			"password2": {
				equalTo: "#password"
			},
		},
		messages: {
			"password2": {
				equalTo: "两次输入的密码不一致"
			}
		}
	});
});
</script>  

 