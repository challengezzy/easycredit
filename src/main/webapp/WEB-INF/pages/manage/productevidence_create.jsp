<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<form role="form" action="${ctx}/manage/product/saveEvidence.html" enctype="multipart/form-data" method="post" id="evidenceForm" >
 <input id="productid" name="productid" type="hidden" value="${productid}" />
 <div class="modal-body">
  	 <div class="form-group clearfix" >
        <label  class="control-label col-sm-3 col-lg-4 text-right"><b class="color_red">*</b>显示序号</label>
        <div class="col-sm-7">
          <input id="displayorder" name="displayorder" class="form-control" type="text" maxlength="1" />
        </div>
 	 </div>
 	 <div class="form-group clearfix" >
 	    <label  class="control-label col-sm-3 col-lg-4 text-right"><b class="color_red">*</b>选择文件</label>
 	    <div class="col-sm-7">
 	    	<input type="file" class="form-control" id="evidenceImgFile" name="imgFile">
 	    </div>
 	 </div>
 	 <div class="form-group clearfix" >
        <label  class="control-label col-sm-3 col-lg-4 text-right"><b class="color_red">*</b>简要说明:</label>
         <div class="col-sm-7">
          <textarea id="evidencedescribe" name="evidencedescribe" class="form-control" type="text"  value=""></textarea>
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
		$("#evidenceForm").validate({
			rules: {
				"displayorder":{required:true,minlength:1,maxlength:1,digits:true},
				"evidenceImgFile": {required: true},
				"evidencedescribe": {required: true,minlength:4,maxlength:40},
			},
			messages: {
				"displayorder":"请输入顺序数字",
				"evidencedescribe":"请输入描述信息",
			}
		});
	});
</script>

 
 
