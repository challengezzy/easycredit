<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>

<div class="panel panel-default">
<!-- Default panel contents -->
<div class="panel-heading"><strong>文件上传</strong></div>
<div class="panel-body">
   	<form id ="fileUploadForm" action="/manage/product/uploadImage" method="post"
	    enctype="multipart/form-data" class="form-horizontal" role="form" target="hidden_frame">
		<div class="modal-body">
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-3 control-label">注释</label>
				<div class="col-sm-5">
				    <input type="text" class="form-control" id="saveName" name="name" placeholder="保存的文件名" disabled>
				</div>
			</div>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-3 control-label">文件类型</label>
				<div class="col-sm-5">
				    <select id="saveExamType" name="fileType" class="form-control">
                              <option value="1">身份证</option>
                              <option value="2">户口本</option>
                              <option value="3" selected>营业执照</option>
                              <option value="4">四六级</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-3 control-label">上传文件</label>
				<div class="col-sm-5">
				    <input type="file" class="form-control" id="firstDemoImgFile" name="imgFile">
				</div>
			</div>
		</div>
		<div class="modal-footer">
			<div id="uploadSucceed" class="alert alert-success pull-left" style="display: none;">
			    <strong>新增成功！</strong><span id="uploadSucceedMsg"></span>
			</div>
			<div id="uploadFailed" class="alert alert-danger pull-left" style="display: none;">
			    <strong>对不起！上传失败... &nbsp;&nbsp;</strong><span id="uploadFailedMsg"></span>
			</div>
		    <button id="createPeriadBtn" type="submit" class="btn btn-default">确定 </button>
		</div>
	</form> 
	<iframe name='hidden_frame' id="hidden_frame" style='display:none'></iframe>
  </div>
</div>


<script src="${ctx}/js/jquery.js" charset="UTF-8" type="text/javascript"></script> 
<script type="text/javascript" src="/js/modules/upload/uploadFile.js"></script>