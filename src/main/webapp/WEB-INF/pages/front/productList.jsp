<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>产品申请-借款申请</title>
	<jsp:include page="/common/front/head.jsp" />
</head>

<body>
<div class="container"><div id="fsp-model-div"></div></div>
<div class="fsp_header_frame">

	<jsp:include page="/common/front/top.jsp" />
	
	<div class="header_bar">
		<div class="cf header">
			<div class="logo">
				<a href="/index.jsp"><img src="${ctx}/images/logo.png" alt="翊融金融"></a>
			</div>
			<div class="nav">
				<ul class="nav-list">
					<li class="nav-item">
	                    <a href="${ctx}/member/myBusiness.html" class="nav-link ">我的申请</a>
					</li>
	    			<li class="nav-item">
	                    <a href="${ctx}/member/orderList.html" class="nav-link ">放款查询</a>
					</li>
	    			<li class="nav-item">
	                    <a href="${ctx}/member/productList.html" class="nav-link nav-link-current">产品申请</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div class="main">
	<form action="${ctx}/product/applyFirst.html" method="post" id="applyForm" name="applyForm">
		<input id="productId" value="" name="productId" type="hidden">
	</form>
	<div class="product_apply_frame">
		<c:forEach items="${list}" var="obj" varStatus="status">
			<div class="product_apply">
				<div class="product_apply_header">
					<h2>${obj.productname}</h2>
					<a href="javascript:submitApply('${obj.id}');">立即申请</a> 
				</div>
				<ul>
				<c:forEach items="${obj.productEvidencelist}" var="obj1" varStatus="status">
					<li class="" style="background: rgba(0, 0, 0, 0) url('');">
					<div>
					   <div id="leftImg"  style="float:left;"><img src="/${obj1.evidenceurl}" width="63" height="63" /></div>
					   <div id="rightDesc"  style="float:right;padding:0px 0px 0px 10px;word-wrap:break-word; width:130px;}">
					   	<p>${obj1.evidencedescribe}</p>
					   </div>
					</div>
					</li>
				</c:forEach>
				</ul>
			</div>
		</c:forEach>
	</div>
</div>

<!--页尾导航-->
<jsp:include page="/common/front/footer.jsp" />
 
<!-- 页面js -->
<script type="text/javascript">
	function submitApply(productId) {
		$("#productId").val(productId);
		$("#applyForm").submit();
	}
</script>

</body>
</html>