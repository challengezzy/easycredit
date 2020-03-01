<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<form role="form" action="${ctx}/manage/product/update.html" method="post" id="productUpdateForm">
	<input id="organizationId" name="organizationId" type="hidden" />
	<div class="modal-body">
		<div class="form-group clearfix">
			<label class="control-label col-sm-3 col-lg-4 text-right"><b class="color_red">*</b>产品名称:</label>
			<div class="col-sm-7">
				<input id="productname" name="productname" class="form-control" type="text" value="${products[0].productname}" />
			</div>
		</div>
		<div class="form-group clearfix">
			<label class="control-label col-sm-3 col-lg-4 text-right"><b class="color_red">*</b>产品编号:</label>
			<div class="col-sm-7">
				<input id="productno" name="productno" class="form-control" type="text" value="${products[0].productno}" />
			</div>
		</div>
		<div class="form-group clearfix ">
			<label class="control-label col-sm-4 text-right"><b
				class="color_red">*</b>初审组：</label>
			<div class=" col-sm-8">
				<select name="organizationid1" class="form-control" size="1" value="${products[0].organizationid1}">
					<option value="${products[0].organizationid1}">${products[0].organizationname1}</option>
					<c:forEach items="${organizations}" var="obj">
						<c:if test="${obj.organizationtype =='0'}">
							<option value="${obj.id}">${obj.organizationname}</option>
						</c:if>
					</c:forEach>
				</select>
			</div>
		</div>
		<div class="form-group clearfix ">
			<label class="control-label col-sm-4 text-right"><b class="color_red">*</b>复审组：</label>
			<div class=" col-sm-8">
				<select name="organizationid2" class="form-control" size="1" value="${products[0].organizationid2}">
					<option value="${products[0].organizationid2}">${products[0].organizationname2}</option>
					<c:forEach items="${organizations}" var="obj">
						<c:if test="${obj.organizationtype =='1'}">
							<option value="${obj.id}">${obj.organizationname}</option>
						</c:if>
					</c:forEach>
				</select>
			</div>
		</div>
		<div class="form-group clearfix ">
			<label class="control-label col-sm-4 text-right"><b class="color_red">*</b>合作方审核组：</label>
			<div class=" col-sm-8">
				<select name="organizationid3" class="form-control" size="1" value="${products[0].organizationid3}">
					<option value="${products[0].organizationid3}">${products[0].organizationname3}</option>
					<c:forEach items="${organizations}" var="obj">
						<c:if test="${obj.organizationtype =='2'}">
							<option value="${obj.id}">${obj.organizationname}</option>
						</c:if>
					</c:forEach>
				</select>
			</div>
		</div>
		<div class="form-group clearfix">
			<label class="control-label col-sm-3 col-lg-4 text-right"><b class="color_red">*</b>产品描述:</label>
			<div class="col-sm-7">
				<textarea id="comments" name="comments" class="form-control">${products[0].comments}</textarea>
			</div>
		</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-default" data-dismiss="modal"> <i class="icon-remove"></i> 取消 </button>
			<button type="submit" class="btn btn-primary"><i class="icon-ok"></i>确定</button>
		</div>
	</div>
</form>

<script type="text/javascript">
	$(document).ready(function() {
		$("#productUpdateForm").validate({
			rules : {
				"treasureName" : {
					required : true,
					isOverMonth : true,
					maxlength : 100
				}
			}
		});
	});
</script>
