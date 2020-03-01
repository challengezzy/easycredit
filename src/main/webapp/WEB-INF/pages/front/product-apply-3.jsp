<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp" %>
<!DOCTYPE html>
<html class="">
<head>
	<title>填写借款基本信息</title>
	<jsp:include page="/common/front/head.jsp" />
	<!-- 页面css -->
	<link rel="stylesheet" href="${ctx}/css/tavern.css">
	<link rel="stylesheet" href="${ctx}/css/blue.css">
	<link rel="stylesheet" href="${ctx}/css/zTreeStyle.css" type="text/css">
	<style>
	.ztree li span.button.switch.level0 {
		visibility: hidden;
		width: 1px;
	}
	.ztree li ul.level0 {
		padding: 0;
		background: none;
	}
	a:link,a:visited {
		color: #7187b3;
		text-decoration: none;
	}
	a:hover,a:active {
		color: #ff0000;
		text-decoration: none;
	}
	.loadHref {
		float: left;
		line-height: 30px;
		margin-left: 15px;
		margin-right: 20px;
	}
	</style>
</head>
<body>
<div class="container">
	<div id="fsp-model-div"></div>
</div>
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

<!-- 页面内容 -->
<div class="main">
	<div class="apply">
		<div class="apply-crumbs">
			<a href="#">产品申请</a><span class="guide-sign">&gt;</span>填写借款基本信息
		</div>
		<div class="apply-step">
			<ul class="cf apply-step-list">
				<li class="apply-step-item">
					<span class="num">4</span>
					<span class="des">资料上传</span>
				</li>
				<li class="apply-step-item apply-step-item-current">
					<span class="num">3</span>
					<span class="des">借款信息</span>
					<div class="arrow-box">
						<span class="arrow arrow01">◆</span> 
						<span class="arrow arrow02">◆</span>
					</div>
				</li>
				<li class="apply-step-item">
					<span class="num">2</span>
					<span class="des">企业信息</span>
					<div class="arrow-box">
						<span class="arrow arrow01">◆</span> 
						<span class="arrow arrow02">◆</span>
					</div></li>
				<li class="apply-step-item">
					<span class="num">1</span>
					<span class="des">借款人信息</span>
					<div class="arrow-box">
						<span class="arrow arrow01">◆</span> 
						<span class="arrow arrow02">◆</span>
					</div>
				</li>
			</ul>
		</div>
		<div class="apply-main">
			<form id="custInfoForm" action="${ctx}/product/applyThirdSave.html" method="post" onsubmit="return checkForm();">
			<input id="productId" name="productId" value="${productId}" type="hidden">
			<input id="orderId" name="orderId" value="${orderId}" type="hidden">

			<div class="apply-form-item">
			<h2 class="form-tit">基本信息</h2>
			<div class="form-box">
				<dl class="info-item">
					<dt class="key">产品名称：</dt>
					<dd class="val">${param.productName}</dd>
					<dd class="tips"></dd>
				</dl>
				
				<dl class="info-item">
					<dt class="key">
						<span class="must">*</span>&nbsp;申请金额：
					</dt>
					<dd class="val">
						<input id="applicationamount" name="applicationamount" maxlength="10" value="${orderInfoList.applicationamount}"
							class="form-text" onblur="checkLoanAmount()" type="text">&nbsp;元
					</dd>
					<span class="mustbe">[必填]</span>
					<dd class="tips">
						<span id="loanAmountError"></span>
					</dd>
				</dl>
				<dl class="info-item">
					<dt class="key">
						<span class="must">*</span>&nbsp;申请期限：
					</dt>
					<dd class="val">
						<input id="applicationlimit" name="applicationlimit" maxlength="10" value="${orderInfoList.applicationlimit}"
							class="form-text" onblur="checkapplicationlimit()" type="text">&nbsp;个月
					</dd>
					<span class="mustbe">[必填]</span>
					<dd class="tips">
						<span id="applicationlimitError"></span>
					</dd>
				</dl>
				
				<dl class="info-item">
					<dt class="key">&nbsp;可接受月还款：</dt>
					<dd class="val">
						<input id="avilblemonthlyrepayment" name="avilblemonthlyrepayment" maxlength="10" value="${orderInfoList.avilblemonthlyrepayment}"
							class="form-text"  type="text">&nbsp;元
					</dd>
				</dl>
				<dl class="info-item">
					<dt class="key">
						<span class="must">*</span>&nbsp;借款用途：
					</dt>
					<dd class="val">
						<input id="purpose" name="purpose" class="form-text" value="${orderInfoList.purpose}"
							maxlength="100" onblur="checkLoanUse()" type="text">
					</dd>
					<span class="mustbe">[必填]</span>
					<dd class="tips">
						<span id="loanUseError"></span>
					</dd>
				</dl>
				<dl class="info-item">
					<dt class="key">
						<span class="must">*</span>&nbsp;还款来源：
					</dt>
					<dd class="val">
						<input id="sourceofrepayment" name="sourceofrepayment" maxlength="100" value="${orderInfoList.sourceofrepayment}"
							class="form-text" onblur="checkPaymentSource()" type="text">
					</dd>
					<span class="mustbe">[必填]</span>
					<dd class="tips">
						<span id="paymentSourceError"></span>
					</dd>
				</dl>
			</div>
			<div style="height: 50px;"></div>
			<div class="form-action">
				<input id="preStepButton" onclick="javascript:submitPreStep('${orderId}','${productId}');"
					class="blue-btn next-btn" value="上一步" type="button">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input id="saveButton" class="blue-btn save-btn" value="保存"
					type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
				<input id="nextStepButton" class="blue-btn next-btn" value="下一步"
					onclick="javascript:submitNextStep();" type="button">
				</div>
			</div>
			</form>
		</div>
	</div>
</div>

<!--页尾导航-->
<jsp:include page="/common/front/footer.jsp" />

<!-- 页面js -->
<script type="text/javascript" src="${ctx}/js/front/jquery-1_002.js"></script>
<script type="text/javascript" src="${ctx}/js/front/jmpopups-0.js"></script>
<script type="text/javascript" src="${ctx}/js/front/jquery.js"></script>
<script type="text/javascript" src="${ctx}/js/front/utilTools.js"></script>

<script type="text/javascript">
	function submitNextStep() {
		$("#custInfoForm").attr("action","/product/applyThirdSave?nextStep=yes");
		$("#custInfoForm").submit();
	}
	
	function submitPreStep(orderId,productId) {
		 window.location.href="/product/applySecond.html?orderId="+orderId+"&productId="+productId;
	}
	
	function checkForm(){//检查表单
   		if(!checkLoanAmount()){
			return false;
		}
   		if(!checkapplicationlimit()){
			return false;
		}
		if(!checkLoanUse()){
			return false;
		}
		if(!checkPaymentSource()){
			return false;
		}
	}
	
	function checkLoanAmount(){//申请金额
   		var loanAmount = $("#applicationamount").val();
   		loanAmount = $.trim(loanAmount);
			if(loanAmount==""){
				$("#loanAmountError").html("申请金额不能为空");
				$("#loanAmountError").addClass("err");
				return false;
			}
			 var reg = /^[0-9]{1}\d*(\.\d{1,2})?$/;
			var result1 = reg.test(loanAmount);
			if (!result1) {
				$("#loanAmountError").html("申请金额必须为整数，可保留两位小数");
				$("#loanAmountError").addClass("err");
				return false;
			}
			$("#loanAmountError").html("");
			$("#loanAmountError").removeClass("err");
			return true;
	}
   	
	//申请期限
	function checkapplicationlimit(){
		var loanUse=$("#applicationlimit").val();
		loanUse = $.trim(loanUse);
		if(loanUse==""){
			$("#applicationlimitError").html("申请期限不能为空");
			$("#applicationlimitError").addClass("err");
			return false;
		}
		var reg=/^[0-9]*[1-9][0-9]*$/;
		var result1 = reg.test(loanUse);
		if (!result1) {
			$("#applicationlimitError").html("申请期限必须为整数");
			$("#applicationlimitError").addClass("err");
			return false;
		}
		$("#applicationlimitError").html("");
		$("#applicationlimitError").removeClass("err");
		return true
	}
	
	//借款用途说明
	function checkLoanUse(){
		var purpose=$("#purpose").val();
		purpose = $.trim(purpose);
		if(purpose==""){
			$("#loanUseError").html("借款用途说明不能为空");
			$("#loanUseError").addClass("err");
			return false;
		}
		$("#loanUseError").html("");
		$("#loanUseError").removeClass("err");
		return true
	}
	
	//还款来源说明
	function checkPaymentSource(){
		var paymentSource=$("#sourceofrepayment").val();
		paymentSource = $.trim(paymentSource);
		if(paymentSource==""){
			$("#paymentSourceError").html("还款来源说明不能为空");
			$("#paymentSourceError").addClass("err");
			return false;
		}
		$("#paymentSourceError").html("");
		$("#paymentSourceError").removeClass("err");
		return true;
	}
	
</script>
</body>
</html>