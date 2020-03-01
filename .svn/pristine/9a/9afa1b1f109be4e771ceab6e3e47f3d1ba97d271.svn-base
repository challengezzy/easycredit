<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp" %>
<!DOCTYPE html>
<html class="">
<head>
	<title>填写个人基本信息</title>
	<jsp:include page="/common/front/head.jsp" />
	<style type="text/css">
		.form-box {height: auto;overflow: visible;}
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
			<a href="#">产品申请</a>
			<span class="guide-sign">&gt;</span>填写个人基本信息
		</div>
		<div class="apply-step">
			<ul class="cf apply-step-list">
				<li class="apply-step-item">
					<span class="num">4</span><span class="des">资料上传</span>
				</li>
				<li class="apply-step-item">
					<span class="num">3</span><span class="des">借款信息</span>
					<div class="arrow-box">
						<span class="arrow arrow01">◆</span> <span class="arrow arrow02">◆</span>
					</div>
				</li>
				<li class="apply-step-item">
					<span class="num">2</span>
					<span class="des">企业信息</span>
					<div class="arrow-box">
						<span class="arrow arrow01">◆</span> 
						<span class="arrow arrow02">◆</span>
					</div>
				</li>
				<li class="apply-step-item apply-step-item-current">
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
			<form id="custInfoForm" action="${ctx}/product/applyFirstSave.html" method="post">
				<input id="productId" name="productId" value="${productId}" type="hidden">
				<input id="orderId" name="orderId" value="${orderId}" type="hidden">
				 
				<div class="apply-form-item">
					<h2 class="form-tit">基本信息</h2>
					<div class="form-box">
						<dl class="info-item">
							<dt class="key"><span class="must">*</span>&nbsp;借款人姓名：</dt>
							<dd class="val">
								<input id="mortgagorname" name="mortgagorname" value="${mortgagorInfo.mortgagorname}" class="form-text" type="text">
							</dd>
							<span class="mustbe">[必填]</span>
							<dd><span id="mortgagornameError"></span></dd>
						</dl>
						<dl class="info-item">
							<dt class="key"><span class="must">*</span>&nbsp;身份证号：</dt>
							<dd class="val">
								<input id="idnumber" name="idnumber" value="${mortgagorInfo.idnumber}" class="form-text" type="text" onblur="checkIdCardNo()">
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips"><span id="idnumberError"></span></dd>
						</dl>
						<dl class="info-item">
							<dt class="key"><span class="must">*</span>&nbsp;性别：</dt>
							<dd class="val">
								<select name="sex" id="sex" class="inputW130" disabled="disabled">
									<option  value="">--请选择--</option>
									<option value="1" <c:if test="${mortgagorInfo.sex==1}">selected='selected'</c:if>>男</option>
									<option value="2" <c:if test="${mortgagorInfo.sex==2}">selected='selected'</c:if>>女</option>
								</select>
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips"><span id="sexError"></span></dd>
						</dl>
						<dl class="info-item">
							<dt class="key"><span class="must">*</span>&nbsp;婚姻状况：</dt>
							<dd class="val">
								<select name="matrimonial" id="matrimonial" class="inputW130">
									<option  value="">--请选择--</option>
									<option value="0" <c:if test="${mortgagorInfo.matrimonial==0}">selected= "selected"</c:if>>未婚</option>
									<option value="1" <c:if test="${mortgagorInfo.matrimonial==1}">selected= "selected"</c:if>>已婚有子女</option>
									<option value="2" <c:if test="${mortgagorInfo.matrimonial==2}">selected= "selected"</c:if>>已婚无子女</option>
									<option value="3" <c:if test="${mortgagorInfo.matrimonial==3}">selected= "selected"</c:if>>其他</option>
								</select>
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips"><span id="matrimonialError"></span></dd>
						</dl>
						<dl class="info-item">
							<dt class="key"><span class="must">*</span>&nbsp;受教育程度：</dt>
							<dd class="val">
								<select name="educationalstatus" id="educationalstatus" class="inputW130">
									<option  value="">--请选择--</option>
									<option value="0" <c:if test="${mortgagorInfo.educationalstatus==0}">selected= "selected"</c:if>>博士研究生</option>
									<option value="1" <c:if test="${mortgagorInfo.educationalstatus==1}">selected= "selected"</c:if>>硕士研究生</option>
									<option value="2" <c:if test="${mortgagorInfo.educationalstatus==2}">selected= "selected"</c:if>>大学本科</option>
									<option value="3" <c:if test="${mortgagorInfo.educationalstatus==3}">selected= "selected"</c:if>>大学专科和专科学校</option>
									<option value="4" <c:if test="${mortgagorInfo.educationalstatus==4}">selected= "selected"</c:if>>中等专业学校或中等技术学校</option>
									<option value="5" <c:if test="${mortgagorInfo.educationalstatus==5}">selected= "selected"</c:if>>技术学校</option>
									<option value="6" <c:if test="${mortgagorInfo.educationalstatus==6}">selected= "selected"</c:if>>高中</option>
									<option value="7" <c:if test="${mortgagorInfo.educationalstatus==7}">selected= "selected"</c:if>>初中</option>
									<option value="8" <c:if test="${mortgagorInfo.educationalstatus==8}">selected= "selected"</c:if>>小学</option>
									<option value="9" <c:if test="${mortgagorInfo.educationalstatus==9}">selected= "selected"</c:if>>文盲或半文盲</option>
									<option value="10" <c:if test="${mortgagorInfo.educationalstatus==10}">selected= "selected"</c:if>>其他</option>
								</select>
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips"><span id="educationalstatusError"></span></dd>
						</dl>
						<dl class="info-item">
							<dt class="key"><span class="must">*</span>电子邮件：</dt>
							<dd class="val">
								<input id="email" name="email" value="${mortgagorInfo.email}" class="form-text" type="text">
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips"><span id="emailError"></span></dd>
						</dl>
						<dl class="info-item">
							<dt class="key"><span class="must">*</span>&nbsp;手机号：</dt>
							<dd class="val">
								<input id="cellphone" name="cellphone" value="${mortgagorInfo.cellphone}" class="form-text" type="text">
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips">
								<span id="cellphoneError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key"><span class="must">*</span>&nbsp;办公电话：</dt>
							<dd class="val">
								<input id="telephone" name="telephone" value="${mortgagorInfo.telephone}" class="form-text" type="text">
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips"><span id="telephoneError"></span></dd>
						</dl>
						<dl class="info-item">
							<dt class="key">&nbsp;从业年限：</dt>
							<dd class="val">
								<input id="workinglife" name="workinglife" value="${mortgagorInfo.workinglife}" class="form-text" type="text">&nbsp;年
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">&nbsp;子女人数：</dt>
							<dd class="val">
								<input id="childrennum" name="childrennum" value="${mortgagorInfo.childrennum}" class="form-text" type="text">&nbsp;人
							</dd>
						</dl>
					</div>
				</div>
				
				<div class="apply-form-item">
					<h2 class="form-tit">居住信息</h2>
					<div class="form-box">
						<dl class="info-item">
							<dt class="key"><span class="must">*</span>&nbsp;房产类型：</dt>
							<dd class="val">
								<select id="houseproperty" name="houseproperty"  class="inputW130">
									<option value="">--请选择--</option>
									<option value="0" <c:if test="${mortgagorResidential.houseproperty==0}">selected= "selected"</c:if>>自有房产-无房贷</option>
									<option value="1" <c:if test="${mortgagorResidential.houseproperty==1}">selected= "selected"</c:if>>自有房产-有房贷</option>
									<option value="2" <c:if test="${mortgagorResidential.houseproperty==2}">selected= "selected"</c:if>>租赁</option>
									<option value="3" <c:if test="${mortgagorResidential.houseproperty==3}">selected= "selected"</c:if>>与亲属同住</option>
									<option value="4" <c:if test="${mortgagorResidential.houseproperty==4}">selected= "selected"</c:if>>单位宿舍</option>
									<option value="5" <c:if test="${mortgagorResidential.houseproperty==5}">selected= "selected"</c:if>>其他</option>
								</select>
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips"><span id="housepropertyError"></span></dd>
						</dl>
						<dl class="info-item" id="housingloandl">
							<dt class="key"><span class="must">*</span>&nbsp;月还房贷：</dt>
							<dd class="val">
								<input id="housingloan" name="housingloan" value="${mortgagorResidential.housingloan}" class="form-text" type="text">&nbsp;元人民币
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips"><span id="housingloanError"></span></dd>
						</dl>
						<dl class="info-item">
							<dt class="key"><span class="must">*</span>&nbsp;居住地址：</dt>
							<dd class="val">
								<input id="residentialaddress" name="residentialaddress" value="${mortgagorResidential.residentialaddress}" class="form-text" type="text">
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips"><span id="residentialaddressError"></span></dd>
						</dl>
						<dl class="info-item">
							<dt class="key"><span class="must">*</span>&nbsp;户籍地址：</dt>
							<dd class="val">
								<input id="registeraddress" name="registeraddress" value="${mortgagorResidential.registeraddress}" class="form-text" "  type="text">
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips"><span id="registeraddressError"></span></dd>
						</dl>
						<dl class="info-item">
							<dt class="key">
								<span class="must">*</span>&nbsp;联系地址：
							</dt>
							<dd class="val">
								<select id="contactaddresstype" name="contactaddresstype" class="inputW130">
									<option value="">--请选择--</option>
									<option value="0" <c:if test="${mortgagorResidential.contactaddresstype==0}">selected= "selected"</c:if>>居住地址</option>
									<option value="1" <c:if test="${mortgagorResidential.contactaddresstype==1}">selected= "selected"</c:if>>户籍地址</option>
									<option value="2" <c:if test="${mortgagorResidential.contactaddresstype==2}">selected= "selected"</c:if>>公司地址</option>
								</select>
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips">
								<span id="contactaddresstypeError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">在此城市生活时长：</dt>
							<dd class="val">
								<input id="citylife" name="citylife" value="${mortgagorResidential.citylife}" class="form-text" maxlength="100" type="text">年 
							</dd>
							<dd class="tips">
								<span id="citylifeError"></span>
							</dd>
						</dl>
						<div class="clear"></div>
					</div>
				</div>
				<div  class="apply-form-item" >
					<h2 class="form-tit">联系人信息</h2>
					<div class="form-box" id="spouse-tr">
						<dl class="info-item" id="spousenamedl">
							<dt class="key">
								<span class="must">*</span>&nbsp;配偶姓名：
							</dt>
							<dd class="val">
								<input id="spousename" name="spousename" value="${mortgagorContact.spousename}" class="form-text" type="text">
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips">
								<span id="spousenameError"></span>
							</dd>
						</dl>
						<dl class="info-item" id="spousecellphonedl">
							<dt class="key">
								<span class="must">*</span>&nbsp;手机号：
							</dt>
							<dd class="val">
								<input id="spousecellphone" name="spousecellphone"  value="${mortgagorContact.cellphone}" class="form-text" type="text">
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips">
								<span id="spousecellphoneError"></span>
							</dd>
						</dl>
						<dl class="info-item" id="spouseidnumberdl">
							<dt class="key">&nbsp;身份证号：</dt>
							<dd class="val">
								<input id="spouseidnumber" name="spouseidnumber" value="${mortgagorContact.idnumber}" class="form-text"  type="text">
							</dd>
						</dl>
						<dl class="info-item" id="spouseregisteraddressdl">
							<dt class="key">&nbsp;配偶户籍地址：</dt>
							<dd class="val">
								<input id="spouseregisteraddress" name="spouseregisteraddress" value="${mortgagorContact.registeraddress}" class="form-text" type="text">
							</dd>
						</dl>
						<dl class="info-item" id="spousecontactaddresstypedl">
							<dt class="key">&nbsp;配偶联系地址：</dt>
							<dd class="val">
								<select id="spousecontactaddresstype" name="spousecontactaddresstype" value="${mortgagorContact.contactaddresstype}" class="inputW130">
									<option value="">--请选择--</option>
									<option value="0" <c:if test="${mortgagorContact.contactaddresstype==0}">selected= "selected"</c:if>>与户籍地址相同</option>
									<option value="1" <c:if test="${mortgagorContact.contactaddresstype==1}">selected= "selected"</c:if>>与申请人联系地址相同</option>
								</select>
							</dd>
						</dl>
						</div>
						<div class="apply-form-item">
						<dl class="info-item">
							<dt class="key">其他联系人1姓名：</dt>
							<dd class="val">
								<input id="correlation1name" name="correlation1name" value="${mortgagorContact.correlation1name}" class="form-text" type="text">
							</dd>
							<dd class="tips">
								<span id="correlation1nameError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">其他联系人1手机号：</dt>
							<dd class="val">
								<input id="correlation1cellphone" name="correlation1cellphone" value="${mortgagorContact.correlation1cellphone}" class="form-text" type="text">
							</dd>
							<dd class="tips">
								<span id="correlation1cellphoneError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">&nbsp;其他联系人1类型：</dt>
							<dd class="val">
								<select id="correlation1type" name="correlation1type" class="inputW130">
									<option value="">--请选择--</option>
									<option value="0" <c:if test="${mortgagorContact.correlation1type==0}">selected= "selected"</c:if>>亲属</option>
		 							<option value="1" <c:if test="${mortgagorContact.correlation1type==1}">selected= "selected"</c:if>>朋友</option>
									<option value="2" <c:if test="${mortgagorContact.correlation1type==2}">selected= "selected"</c:if>>同事</option>
								</select>
							</dd>
						</dl>
						<dl class="info-item" id="correlation2namedl">
							<dt class="key">其他联系人2姓名：</dt>
							<dd class="val">
								<input id="correlation2name" name="correlation2name" value="${mortgagorContact.correlation2name}"
								 	class="form-text" type="text">
							</dd>
							<dd class="tips"><span id="correlation2nameError"></span></dd>
						</dl>
						<dl class="info-item" id="correlation2cellphonedl">
							<dt class="key">其他联系人2手机号：</dt>
							<dd class="val">
								<input id="correlation2cellphone" name="correlation2cellphone" value="${mortgagorContact.correlation2cellphone}"
								 class="form-text" type="text">
							</dd>
							<dd class="tips">
								<span id="correlation2cellphoneError"></span>
							</dd>
						</dl>
						<dl class="info-item" id="correlation2typedl">
							<dt class="key">&nbsp;其他联系人2类型：</dt>
							<dd class="val">
								<select id="correlation2type" name="correlation2type"  value="${mortgagorContact.correlation2type}" class="inputW130">
									<option value="">--请选择--</option>
									<option value="0" <c:if test="${mortgagorContact.correlation2type==0}">selected= "selected"</c:if>>亲属</option>
		 							<option value="1" <c:if test="${mortgagorContact.correlation2type==1}">selected= "selected"</c:if>>朋友</option>
									<option value="2" <c:if test="${mortgagorContact.correlation2type==2}">selected= "selected"</c:if>>同事</option>
								</select>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">工作证明人1姓名：</dt>
							<dd class="val">
								<input id="reterence1name" name="reterence1name" value="${mortgagorContact.reterence1name}"
								  class="form-text" maxlength="80"  type="text">
							</dd>
							<dd class="tips">
								<span id="reterence1nameError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">工作证明人1部门：</dt>
							<dd class="val">
								<input id="reterence1depart" name="reterence1depart" value="${mortgagorContact.reterence1depart}"
								 class="form-text" maxlength="40" type="text">
							</dd>
							<dd class="tips">
								<span id="reterence1departError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">工作证明人1职位：</dt>
							<dd class="val">
								<input id="reterence1position" name="reterence1position" value="${mortgagorContact.reterence1position}"
								 class="form-text" maxlength="40"  type="text">
							</dd>
							<dd class="tips">
								<span id="reterence1positionError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">工作证明人1手机号：</dt>
							<dd class="val">
								<input id="reterence1cellphone" name="reterence1cellphone" value="${mortgagorContact.reterence1cellphone}"
								 class="form-text" maxlength="40" type="text">
							</dd>
							<dd class="tips">
								<span id="reterence1cellphoneError"></span>
							</dd>
						</dl>
						
						<dl class="info-item">
							<dt class="key">工作证明人2姓名：</dt>
							<dd class="val">
								<input id="reterence2name" name="reterence2name" value="${mortgagorContact.reterence2name}"
								 class="form-text" type="text">
							</dd>
							<dd class="tips">
								<span id="reterence2nameError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">工作证明人2部门：</dt>
							<dd class="val">
								<input id="reterence2depart" name="reterence2depart" value="${mortgagorContact.reterence2depart}" 
								class="form-text" type="text">
							</dd>
							<dd class="tips">
								<span id="reterence2departError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">工作证明人2职位：</dt>
							<dd class="val">
								<input id="reterence2position" name="reterence2position" value="${mortgagorContact.reterence2position}"
								 class="form-text" type="text">
							</dd>
							<dd class="tips">
								<span id="reterence2positionError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">工作证明人2手机号：</dt>
							<dd class="val">
								<input id="reterence2cellphone" name="reterence2cellphone" value="${mortgagorContact.reterence2cellphone}"
								  class="form-text" type="text">
							</dd>
							<dd class="tips">
								<span id="reterence2cellphoneError"></span>
							</dd>
						</dl>
					</div>
				</div>
				<div class="form-action">
					<input class="blue-btn save-btn" value="保存" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;
					<input class="blue-btn next-btn" value="下一步" onclick="javascript:submitNextStep();" type="button">
				</div>
			</form>
		</div>
	</div>
</div>

<!--页尾导航-->
<jsp:include page="/common/front/footer.jsp" />

<script src="${ctx}/js/jqueryValidate-front.js" type="text/javascript"></script>
 
<script type="text/javascript">
function submitNextStep() {
	$("#custInfoForm").attr("action","/product/applyFirstSave?nextStep=yes");
	$("#custInfoForm").submit();
}
	
$(document).ready(function() {
	$("#custInfoForm").validate({
		rules: {
			"mortgagorname":{required:true},
			"idnumber":{required:true,isIdnumber:true},
			"sex":{required:true},
			"matrimonial":{required:true},
			"educationalstatus":{required:true},
			"workinglife":{digits:true},
			"childrennum":{digits:true},
			"email":{required:true,email:true},
			"cellphone":{required:true,mobile:true},
			"telephone":{required:true,phone:true},
			"houseproperty":{required:true},
			"housingloan":{required:true,isPrice:true},
			"residentialaddress":{required:true},
			"registeraddress":{required:true},
			"contactaddresstype":{required:true},
			"citylife":{digits:true,max:100},
			"spousename":{required:true},
			"spousecellphone":{required:true,mobile:true},
			"correlation1cellphone":{mobile:true},
			"correlation2cellphone":{mobile:true},
			"reterence1cellphone":{mobile:true},
			"reterence2cellphone":{mobile:true}
		}
	});
	
	jQuery.validator.addMethod("isIdnumber", function(value, element) {   
		var cardNoInfo = getIdCardInfo(value);
		if (!cardNoInfo.isTrue) {
			return cardNoInfo.isTrue;
		}
		//性别为必填写项，根据身份证号自动带出，且不可编辑
		if (cardNoInfo.isMale) {
			$("#sex").val("1");
		} else {
			$("#sex").val("2");
		}
        return this.optional(element) || cardNoInfo.isTrue;       
    }, "请填写正确的身份证号!"); 
	
	jQuery.validator.addMethod("isPrice", function(value, element) {       
         return this.optional(element) || /^[-\+]?\d+$/.test(value) || /^[-\+]?\d+(\.\d+)?$/.test(value);       
    }, "请输入正确的金额！"); 
	 
	var value=$("#houseproperty").val();  
	housingloandl(value);
	$('#houseproperty').change(function(){
		var value=$(this).children('option:selected').val(); 
		housingloandl(value);
	}); 
	
	var value=$("#matrimonial").val();  
	spousecedl(value);
	$('#matrimonial').change(function(){
		var value=$(this).children('option:selected').val(); 
		spousecedl(value);
	});
	
	//$("#correlation2namedl").hide();
	//$("#correlation2cellphonedl").hide();
	//$("#correlation2typedl").hide();
	
	 
	
});

function spousecedl(value){
	if(value==1||value==2){
		$("#spousenamedl").show();
		$("#spousecellphonedl").show();
		$("#spouseidnumberdl").show();
		$("#spouseregisteraddressdl").show();
		$("#spousecontactaddresstypedl").show();
	}else{
		$("#spousenamedl").hide();
		$("#spousecellphonedl").hide();
		$("#spouseidnumberdl").hide();
		$("#spouseregisteraddressdl").hide();
		$("#spousecontactaddresstypedl").hide();
	}
	
	var idNumber = $("#idnumber").val();
	var cardNoInfo = getIdCardInfo(idNumber);
	//性别为必填写项，根据身份证号自动带出，且不可编辑
	if (cardNoInfo.isMale) {
		$("#sex").val("1");
	} else {
		$("#sex").val("2");
	}
	
}

function housingloandl(value){
	if(value==1){
		$("#housingloandl").show();
	}else{
		$("#housingloandl").hide();
	}
}

function checkIdCardNo() {//身份证号
	var idNumber = $("#idnumber").val();
	var productId = $("#productId").val();
	
	var cardNoInfo = getIdCardInfo(idNumber);
	if (!cardNoInfo.isTrue) {
		return cardNoInfo.isTrue;
	}
	
	//调用后台服务接口查询客户信息
	$.ajax({
 		type: "POST",
 		url:"${ctx}/product/isExisIdNumber.html?idNumber="+idNumber,
 		success:function(data){
 			if(data=="1"){
 				 var url = '/product/getMortgagorByIdNumber?idNumber=' + idNumber+"&productId="+productId ;
 			     
 			    window.location.href=url;
 			}
 		},
 		error:function(){ }
  	});
	return cardNoInfo.isTrue;
}
	 
function getIdCardInfo(cardNo) {
	var info = {
		isTrue : false,
		year : null,
		month : null,
		day : null,
		isMale : false,
		isFemale : false
	};
	if (!cardNo && 15 != cardNo.length && 18 != cardNo.length) {
		info.isTrue = false;
		return info;
	}
	if (15 == cardNo.length) {
		var year = cardNo.substring(6, 8);
		var month = cardNo.substring(8, 10);
		var day = cardNo.substring(10, 12);
		var p = cardNo.substring(14, 15); //性别位
		var birthday = new Date(year, parseFloat(month) - 1,parseFloat(day));
		// 对于老身份证中的年龄则不需考虑千年虫问题而使用getYear()方法
		if (birthday.getYear() != parseFloat(year)
				|| birthday.getMonth() != parseFloat(month) - 1
				|| birthday.getDate() != parseFloat(day)) {
			info.isTrue = false;
		} else {
			info.isTrue = true;
			info.year = birthday.getFullYear();
			info.month = birthday.getMonth() + 1;
			info.day = birthday.getDate();
			if (p % 2 == 0) {
				info.isFemale = true;
				info.isMale = false;
			} else {
				info.isFemale = false;
				info.isMale = true
			}
		}
		info.isTrue = false;
		return info;
	}
	if (18 == cardNo.length) {
		var year = cardNo.substring(6, 10);
		var month = cardNo.substring(10, 12);
		var day = cardNo.substring(12, 14);
		var p = cardNo.substring(14, 17)
		var birthday = new Date(year, parseFloat(month) - 1,
				parseFloat(day));
		// 这里用getFullYear()获取年份，避免千年虫问题
		if (birthday.getFullYear() != parseFloat(year)
				|| birthday.getMonth() != parseFloat(month) - 1
				|| birthday.getDate() != parseFloat(day)) {
			info.isTrue = false;
			return info;
		}
		var Wi = [ 7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2,
				1 ];// 加权因子
		var Y = [ 1, 0, 10, 9, 8, 7, 6, 5, 4, 3, 2 ];// 身份证验证位值.10代表X
		// 验证校验位
		var sum = 0; // 声明加权求和变量
		var _cardNo = cardNo.split("");
		if (_cardNo[17].toLowerCase() == 'x') {
			_cardNo[17] = 10;// 将最后位为x的验证码替换为10方便后续操作
		}
		for (var i = 0; i < 17; i++) {
			sum += Wi[i] * _cardNo[i];// 加权求和
		}
		var i = sum % 11;// 得到验证码所位置
		if (_cardNo[17] != Y[i]) {
			return info.isTrue = false;
		}
		info.isTrue = true;
		info.year = birthday.getFullYear();
		info.month = birthday.getMonth() + 1;
		info.day = birthday.getDate();
		if (p % 2 == 0) {
			info.isFemale = true;
			info.isMale = false;
		} else {
			info.isFemale = false;
			info.isMale = true
		}
		return info;
	}
	return info;
}
	
</script>

</body>
</html>