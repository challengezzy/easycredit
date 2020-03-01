<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<div class="modal-header">
   <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icon-remove"></i></button>
   <h4 class="modal-title" id="myModalLabel">编辑借款人</h4>
</div>
<form role="form" action="${ctx}/manage/mortgagor/update.html" method="post" id="inputForm" >
	<input id="id" name="id" type="hidden" value="${mortgagorinfo[0].id}" />
	<input id="companyid" name="companyid" type="hidden" value="${mortgagorinfo[0].companyid}" />
	<div class="modal-body">
	  	 <div class="form-group clearfix" >
	        <label  class="control-label col-sm-3 col-lg-4 text-right"><b class="color_red">*</b>借款人姓名:</label>
	        <div class="col-sm-7">
	          <input id="mortgagorname" name="mortgagorname" class="form-control" type="text"  value="${mortgagorinfo[0].mortgagorname}" />
	        </div>
	 	 </div>
	 	 <div class="form-group clearfix" >
	        <label  class="control-label col-sm-3 col-lg-4 text-right"><b class="color_red">*</b>借款人身份证号:</label>
	        <div class="col-sm-7">
	          <input id="idnumber" name="idnumber" class="form-control" type="text"  value="${mortgagorinfo[0].idnumber}" />
	        </div>
	 	 </div>
	 	 <div class="form-group clearfix" >
	        <label  class="control-label col-sm-3 col-lg-4 text-right"><b class="color_red">*</b>手机号:</label>
	         <div class="col-sm-7">
	          <input id="cellphone" name="cellphone" class="form-control" type="text" value="${mortgagorinfo[0].cellphone}" />
	        </div>
	 	 </div>
	 	 <div class="form-group clearfix" >
	        <label  class="control-label col-sm-3 col-lg-4 text-right"><b class="color_red">*</b>邮箱:</label>
	         <div class="col-sm-7">
	          <input id="email" name="email" class="form-control" type="text" value="${mortgagorinfo[0].email}" />
	        </div>
	 	 </div>
	 	 <div class="form-group clearfix" >
	        <label  class="control-label col-sm-3 col-lg-4 text-right"><b class="color_red">*</b>所属公司:</label>
	         <div class="col-sm-7">
	        
	          <input id="companyname" name="companyname" class="form-control" type="text" value="${mortgagorinfo[0].companyname}" />
	        </div>
	 	 </div>
	 	 <div class="form-group clearfix" >
	        <label  class="control-label col-sm-3 col-lg-4 text-right"><b class="color_red">*</b>配偶姓名:</label>
	         <div class="col-sm-7">
	        
	          <input id="spousename" name="spousename" class="form-control" type="text" value="${mortgagorinfo[0].spousename}" />
	        </div>
	 	 </div>
	 	 <div class="form-group clearfix" >
	        <label  class="control-label col-sm-3 col-lg-4 text-right"><b class="color_red">*</b>配偶身份证号:</label>
	         <div class="col-sm-7">
	        
	          <input id="spouseidnumber" name="spouseidnumber" class="form-control" type="text" value="${mortgagorinfo[0].spouseidnumber}" />
	        </div>
	 	 </div>
	 	 <div class="form-group clearfix" >
	        <label  class="control-label col-sm-3 col-lg-4 text-right"><b class="color_red">*</b>配偶手机号:</label>
	         <div class="col-sm-7">
	        
	          <input id="spousecellphone" name="spousecellphone" class="form-control" type="text" value="${mortgagorinfo[0].spousecellphone}" />
	        </div>
	 	 </div>
	    <div class="modal-footer">
	   		<button type="button" class="btn btn-default" data-dismiss="modal"><i class="icon-remove"></i> 取消</button>
	   		<button type="submit" class="btn btn-primary"><i class="icon-ok"></i> 确定</button>
	   </div>
	 </div>
</form>
 
 
