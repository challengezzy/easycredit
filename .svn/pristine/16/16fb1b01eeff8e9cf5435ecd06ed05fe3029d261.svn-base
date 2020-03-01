<%@ page contentType="text/html;charset=UTF-8" %>
<div class="modal-dialog"  >
<div class="modal_align_wrap">
  <div class="modal-content" style="max-width:800px;" >
    <div class="modal-header">
       <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icon-remove"></i></button>
      <h4 class="modal-title" id="myModalLabel">新增/编辑 用户组</h4>
    </div>
   
    <form role="form" action="${ctx}/manage/security/organization/save.html" method="post" id="inputForm" >
    	<input id="organizationId" name="id" type="hidden"/>
	    <div class="modal-body">
	     	 <div class="form-group clearfix" >
	           <label  class="control-label col-sm-3 col-lg-4 text-right"><b class="color_red">*</b>用户组名称:</label>
	           <div class="col-sm-7">
	             <input id="organizationname" name="organizationname" class="form-control" type="text"  placeholder="请输入用户组名称" />
	           </div>
	    	 </div>
	    	 <div class="form-group clearfix" >
	           <label  class="control-label col-sm-3 col-lg-4 text-right"><b class="color_red">*</b>用户组角色:</label>
	           <div class="col-sm-7">
	           		<select id="organizationtype" name="organizationtype"  class="form-control" size="1">
						<option value="">--请选择用户组名称--</option>
						<option value="0">初审组</option>
						<option value="1">复审组</option>
						<option value="2">合作商审批组</option>
						<option value="3">系统管理组</option>
					</select>
	           </div>
	    	 </div>
	       <div class="modal-footer">
	      	<button type="button" class="btn btn-default" data-dismiss="modal"><i class="icon-remove"></i> 取消</button>
	      	<button type="submit" class="btn btn-primary"><i class="icon-ok"></i> 确定</button>
	      </div>
	    </div>
    </form>
  </div> 
 </div> 
</div> 
 
<script type="text/javascript">
	$(document).ready(function() {
		$("#inputForm").validate({
			rules: {
				"treasureName":{required:true,isOverMonth:true,maxlength:100}
			}
		});
	});
</script>  
