<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp" %>
<!DOCTYPE html>
<html class="">
<head>
	<title>填写企业基本信息</title>
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
			<a href="#">产品申请</a><span class="guide-sign">&gt;</span>填写企业基本信息
		</div>
		<div class="apply-step">
			<ul class="cf apply-step-list">
				<li class="apply-step-item">
					<span class="num">4</span>
					<span class="des">资料上传</span>
				</li>
				<li class="apply-step-item">
					<span class="num">3</span>
					<span class="des">借款信息</span>
					<div class="arrow-box">
						<span class="arrow arrow01">◆</span> 
						<span class="arrow arrow02">◆</span>
					</div>
				</li>
				<li class="apply-step-item apply-step-item-current">
					<span class="num">2</span>
					<span class="des">企业信息</span>
					<div class="arrow-box">
						<span class="arrow arrow01">◆</span>
						<span class="arrow arrow02">◆</span>
					</div>
				</li>
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
			<form id="custCorpForm" action="${ctx}/product/applySecondSave.html" method="post" onsubmit="return checkForm();">
				<input id="productId" name="productId" value="${productId}" type="hidden">
				<input id="orderId" name="orderId" value="${orderId}" type="hidden">
				
				<div class="apply-form-item">
					<h2 class="form-tit">企业基本信息</h2>
					<div class="form-box">
						<dl class="info-item">
							<dt class="key">
								<span class="must">*</span>&nbsp;企业名称：
							</dt>
							<dd class="val">
								<input id="companyname" name="companyname" value="${companyInfo.companyname}" 
									onblur="javascript:checkcompanyname();" class="form-text" type="text">
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips">
								<span id="companynameError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">
								<span class="must">*</span>&nbsp;部门：
							</dt>
							<dd class="val">
								<input id="department" name="department" value="${companyInfo.department}" 
									onblur="javascript:checkdepartment();" class="form-text" maxlength="6" type="text">&nbsp;
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips">
								<span id="departmentError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">
								<span class="must">*</span>&nbsp;职位：
							</dt>
							<dd class="val">
								<select id="position" name="position"  class="inputW130" onchange="javascript:changeposition();">
									<option value="">--请选择--</option>
									<option value="0" <c:if test="${companyInfo.position==0}">selected= "selected"</c:if>>法人</option>
									<option value="1" <c:if test="${companyInfo.position==1}">selected= "selected"</c:if>>高级管理人员</option>
									<option value="2" <c:if test="${companyInfo.position==2}">selected= "selected"</c:if>>中级管理人员</option>
									<option value="3" <c:if test="${companyInfo.position==3}">selected= "selected"</c:if>>一般管理人员</option>
									<option value="4" <c:if test="${companyInfo.position==4}">selected= "selected"</c:if>>一般正式员工</option>
									<option value="5" <c:if test="${companyInfo.position==5}">selected= "selected"</c:if>>派遣员工</option>
									<option value="6" <c:if test="${companyInfo.position==6}">selected= "selected"</c:if>>退休人员</option>
									<option value="7" <c:if test="${companyInfo.position==7}">selected= "selected"</c:if>>股东</option>
									<option value="8" <c:if test="${companyInfo.position==8}">selected= "selected"</c:if>>其他</option>
								</select>
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips">
								<span id="positionError"></span>
							</dd>
						</dl>
						
						<dl class="info-item">
							<dt class="key">
								<span class="must">*</span>&nbsp;企业类型：
							</dt>
							<dd class="val">
								<select id="companytype" name="companytype" value="${companyInfo.companytype}"  class="inputW130" onchange="javascript:changecompanytype();">
									<option value="">--请选择--</option>
									<option value="0" <c:if test="${companyInfo.companytype==0}">selected= "selected"</c:if>>机关事业单位</option>
									<option value="1" <c:if test="${companyInfo.companytype==1}">selected= "selected"</c:if>>国企</option>
									<option value="2" <c:if test="${companyInfo.companytype==2}">selected= "selected"</c:if>>外资</option>
									<option value="3" <c:if test="${companyInfo.companytype==3}">selected= "selected"</c:if>>合资</option>
									<option value="4" <c:if test="${companyInfo.companytype==4}">selected= "selected"</c:if>>民营</option>
									<option value="5" <c:if test="${companyInfo.companytype==5}">selected= "selected"</c:if>>个体</option>
									<option value="6" <c:if test="${companyInfo.companytype==6}">selected= "selected"</c:if>>其他</option>
								</select>
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips">
								<span id="companytypeError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">
								<span class="must">*</span>&nbsp;主营业务：
							</dt>
							<dd class="val">
								<input id="primarybusiness" name="primarybusiness" class="form-text" value="${companyInfo.primarybusiness}" 
									onblur="checkprimarybusiness()" maxlength="50" type="text">
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips">
								<span id="primarybusinessError"></span>
							</dd>
						</dl>
						<dl class="info-item" id="licencenodl">
							<dt class="key">
								<span class="must">*</span>&nbsp;营业执照号：
							</dt>
							<dd class="val">
								<input id="licenceno" name="licenceno" class="form-text" value="${companyInfo.licenceno}"
									maxlength="30" onblur="javascript:checklicenceno();" type="text">
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips">
								<span id="licencenoError"></span>
							</dd>
						</dl>
						<dl class="info-item" id="registerdatesdl">
							<dt class="key">
								<span class="must">*</span>&nbsp;营业执照注册日期：
							</dt>
							<dd class="val">
								<input id="registerdates" name="registerdates" class="Wdate Wdate2 form-text" value="<fmt:formatDate value="${companyInfo.registerdate}" type="both" pattern="yyyy-MM-dd"/>"
									onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',vel:'registDateEx'})"
									type="text" onblur="javascript:checkregisterdates();">
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips">
								<span id="registerdatesError"></span>
							</dd>
						</dl>
						<dl class="info-item" id="limittypedl">
							<dt class="key">
								<span class="must">*</span>&nbsp;营业执照期限类型：
							</dt>
							<dd class="val">
								<select id="limittype" name="limittype"  class="inputW130" onchange="javascript:changelimittype();">
									<option value="">--请选择--</option>
									<option value="0" <c:if test="${companyInfo.limittype==0}">selected= "selected"</c:if>>有期限</option>
									<option value="1" <c:if test="${companyInfo.limittype==1}">selected= "selected"</c:if>>无期限</option>
								</select>
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips">
								<span id="limittypeError"></span>
							</dd>
						</dl>
						<dl class="info-item" id="limitdatesdl">
							<dt class="key">
								<span class="must">*</span>&nbsp;营业执照到期日：
							</dt>
							<dd class="val">
								<input id="limitdates" name="limitdates" class="Wdate Wdate2 form-text" value="<fmt:formatDate value="${companyInfo.limitdate}" type="both" pattern="yyyy-MM-dd"/>" 
									onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',vel:'regiEndDateEx'})"
									type="text" onblur="javascript:checklimitdates();">
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips">
								<span id="limitdatesError"></span>
							</dd>
						</dl>
						<dl class="info-item" id="registeredcapitaldl">
							<dt class="key">
								<span class="must">*</span>&nbsp;注册资本：
							</dt>
							<dd class="val">
								<input id="registeredcapital" name="registeredcapital" class="form-text" value="${companyInfo.registeredcapital}" 
									maxlength="16" onblur="javascript:checkregisteredcapital();"
									type="text">&nbsp;元
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips">
								<span id="registeredcapitalError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">&nbsp;企业所在城市：</dt>
							<dd class="val">
								<select id="areaid" name="areaid" value="${companyInfo.areaid}"  class="inputW130" >
									<option value="">--请选择--</option>
									<option value="13" <c:if test="${companyInfo.areaid==13}">selected= "selected"</c:if>>北京</option>
			 						<option value="23" <c:if test="${companyInfo.areaid==23}">selected= "selected"</c:if>>常州</option>
									<option value="44" <c:if test="${companyInfo.areaid==44}">selected= "selected"</c:if>>长春</option>
									<option value="34" <c:if test="${companyInfo.areaid==34}">selected= "selected"</c:if>>长沙</option>
									<option value="27" <c:if test="${companyInfo.areaid==27}">selected= "selected"</c:if>>成都</option>
									<option value="25" <c:if test="${companyInfo.areaid==25}">selected= "selected"</c:if>>大连</option>
									<option value="50" <c:if test="${companyInfo.areaid==50}">selected= "selected"</c:if>>丹东</option>
									<option value="15" <c:if test="${companyInfo.areaid==15}">selected= "selected"</c:if>>东莞</option>
									<option value="32" <c:if test="${companyInfo.areaid==32}">selected= "selected"</c:if>>佛山</option>
									<option value="24" <c:if test="${companyInfo.areaid==24}">selected= "selected"</c:if>>福州</option>
									<option value="19" <c:if test="${companyInfo.areaid==19}">selected= "selected"</c:if>>广州</option>
									<option value="52" <c:if test="${companyInfo.areaid==52}">selected= "selected"</c:if>>哈尔滨</option>
									<option value="43" <c:if test="${companyInfo.areaid==43}">selected= "selected"</c:if>>海口</option>
									<option value="04" <c:if test="${companyInfo.areaid==04}">selected= "selected"</c:if>>杭州</option>
									<option value="22" <c:if test="${companyInfo.areaid==22}">selected= "selected"</c:if>>合肥</option>
									<option value="36" <c:if test="${companyInfo.areaid==36}">selected= "selected"</c:if>>呼和浩特</option>
									<option value="48" <c:if test="${companyInfo.areaid==48}">selected= "selected"</c:if>>黄石</option>
									<option value="56" <c:if test="${companyInfo.areaid==56}">selected= "selected"</c:if>>惠州</option>
									<option value="21" <c:if test="${companyInfo.areaid==21}">selected= "selected"</c:if>>济南</option>
									<option value="09" <c:if test="${companyInfo.areaid==09}">selected= "selected"</c:if>>嘉兴</option>
									<option value="10" <c:if test="${companyInfo.areaid==10}">selected= "selected"</c:if>>金华</option>
									<option value="40" <c:if test="${companyInfo.areaid==40}">selected= "selected"</c:if>>昆明</option>
									<option value="47" <c:if test="${companyInfo.areaid==47}">selected= "selected"</c:if>>兰州</option>
									<option value="12" <c:if test="${companyInfo.areaid==12}">selected= "selected"</c:if>>丽水</option>
									<option value="41" <c:if test="${companyInfo.areaid==41}">selected= "selected"</c:if>>南昌</option>
									<option value="16" <c:if test="${companyInfo.areaid==16}">selected= "selected"</c:if>>南京</option>
									<option value="31" <c:if test="${companyInfo.areaid==31}">selected= "selected"</c:if>>南通</option>
									<option value="02" <c:if test="${companyInfo.areaid==02}">selected= "selected"</c:if>>宁波</option>
									<option value="51" <c:if test="${companyInfo.areaid==51}">selected= "selected"</c:if>>盘锦</option>
									<option value="35" <c:if test="${companyInfo.areaid==35}">selected= "selected"</c:if>>秦皇岛</option>
									<option value="26" <c:if test="${companyInfo.areaid==26}">selected= "selected"</c:if>>青岛</option>
									<option value="18" <c:if test="${companyInfo.areaid==18}">selected= "selected"</c:if>>泉州</option>
									<option value="1" <c:if test="${companyInfo.areaid==1}">selected= "selected"</c:if>>上海</option>
									<option value="8" <c:if test="${companyInfo.areaid==8}">selected= "selected"</c:if>>绍兴</option>
									<option value="5" <c:if test="${companyInfo.areaid==5}">selected= "selected"</c:if>>深圳</option>
									<option value="46" <c:if test="${companyInfo.areaid==46}">selected= "selected"</c:if>>沈阳</option>
									<option value="53" <c:if test="${companyInfo.areaid==53}">selected= "selected"</c:if>>石家庄</option>
									<option value="7" <c:if test="${companyInfo.areaid==7}">selected= "selected"</c:if>>苏州</option>
									<option value="6" <c:if test="${companyInfo.areaid==6}">selected= "selected"</c:if>>台州</option>
									<option value="20" <c:if test="${companyInfo.areaid==20}">selected= "selected"</c:if>>天津</option>
									<option value="55" <c:if test="${companyInfo.areaid==55}">selected= "selected"</c:if>>威海</option>
									<option value="58" <c:if test="${companyInfo.areaid==58}">selected= "selected"</c:if>>潍坊</option>
									<option value="3" <c:if test="${companyInfo.areaid==3}">selected= "selected"</c:if>>温州</option>
									<option value="54" <c:if test="${companyInfo.areaid==54}">selected= "selected"</c:if>>乌鲁木齐</option>
									<option value="14" <c:if test="${companyInfo.areaid==14}">selected= "selected"</c:if>>无锡</option>
									<option value="39" <c:if test="${companyInfo.areaid==39}">selected= "selected"</c:if>>芜湖</option>
									<option value="37" <c:if test="${companyInfo.areaid==37}">selected= "selected"</c:if>>武汉</option>
									<option value="45" <c:if test="${companyInfo.areaid==45}">selected= "selected"</c:if>>西安</option>
									<option value="17" <c:if test="${companyInfo.areaid==17}">selected= "selected"</c:if>>厦门</option>
									<option value="59" <c:if test="${companyInfo.areaid==59}">selected= "selected"</c:if>>徐州</option>
									<option value="29" <c:if test="${companyInfo.areaid==29}">selected= "selected"</c:if>>烟台</option>
									<option value="28" <c:if test="${companyInfo.areaid==28}">selected= "selected"</c:if>>扬州</option>
									<option value="49" <c:if test="${companyInfo.areaid==49}">selected= "selected"</c:if>>宜昌</option>
									<option value="42" <c:if test="${companyInfo.areaid==42}">selected= "selected"</c:if>>郑州</option>
									<option value="38" <c:if test="${companyInfo.areaid==38}">selected= "selected"</c:if>>中山</option>
									<option value="33" <c:if test="${companyInfo.areaid==33}">selected= "selected"</c:if>>重庆</option>
									<option value="30" <c:if test="${companyInfo.areaid==30}">selected= "selected"</c:if>>珠海</option>
									<option value="57" <c:if test="${companyInfo.areaid==57}">selected= "selected"</c:if>>淄博</option>
									<option value="11" <c:if test="${companyInfo.areaid==11}">selected= "selected"</c:if>>衢州</option>
									<option value="60" <c:if test="${companyInfo.areaid==60}">selected= "selected"</c:if>>其他</option>
								</select>
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips">
								<span id="areaidError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">
								<span class="must">*</span>&nbsp;企业详细地址：
							</dt>
							<dd class="val">
								<input id="detailaddress" name="detailaddress"  class="form-text" value="${companyInfo.detailaddress}" 
									maxlength="40" onblur="checkDealAddress()" type="text">
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips">
								<span id="detailaddressError"></span>
							</dd>
						</dl>
					</div>
				</div>
				<div class="apply-form-item">
					<div class="form-box">
						<h2 class="form-tit">个人收支情况</h2>
						<dl class="info-item">
							<dt class="key">&nbsp;个人年总收入：</dt>
							<dd class="val">
								<input id="incomeperyear" name="incomeperyear" value="${companyInfo.incomeperyear}"
									onblur="checkincomeperyear()" class="form-text" type="text">&nbsp;万元
							</dd>
							<dd class="tips">
								<span id="incomeperyearError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">&nbsp;每月收入：</dt>
							<dd class="val">
								<input id="incomepermonth" name="incomepermonth" value="${companyInfo.incomepermonth}"
								 	onblur="checkincomepermonth()" class="form-text" type="text">&nbsp;元
							</dd>
							<dd class="tips">
								<span id="incomepermonthError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">&nbsp;每月其他收入：</dt>
							<dd class="val">
								<input id="otherincomepermonth" name="otherincomepermonth" value="${companyInfo.otherincomepermonth}" 
									onblur="checkotherincomepermonth()" class="form-text"  type="text">&nbsp;元
							</dd>
							<dd class="tips">
								<span id="otherincomepermonthError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">&nbsp;收入来源：</dt>
							<dd class="val">
								<input id="otherincomeresourse" name="otherincomeresourse" value="${companyInfo.otherincomeresourse}" class="form-text"  type="text">&nbsp;
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">&nbsp;目前需供养人数：</dt>
							<dd class="val">
								<input id="supportnum" name="supportnum" value="${companyInfo.supportnum}" 
								onblur="checksupportnum()" class="form-text"  type="text">&nbsp;人
							</dd>
							<dd class="tips">
								<span id="supportnumError"></span>
							</dd>
						</dl>
					</div>
				</div>
				<div class="form-action">
					<input onclick="javascript:submitPreStep('${orderId}','${productId}');" class="blue-btn next-btn" value="上一步" type="button">&nbsp;&nbsp;&nbsp;&nbsp;
					<input class="blue-btn save-btn" value="保存" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;
					<input class="blue-btn next-btn" value="下一步" onclick="javascript:submitNextStep();" type="button">
				</div>
			</form>
		</div>
	</div>
</div>
<!--页尾导航-->
<jsp:include page="/common/front/footer.jsp" />

<!-- 插件js -->
<script type="text/javascript" src="${ctx}/js/front/WdatePicker.js"></script>
 
<!-- 页面js -->
<script type="text/javascript">

function submitNextStep() {
    $("#custCorpForm").attr("action", "/product/applySecondSave.html?nextStep=yes");
    $("#custCorpForm").submit();
}

function submitPreStep(orderId,productId) {
	 window.location.href="/product/applyFirst.html?orderId="+orderId+"&productId="+productId;
}

$(function(){
	var position = $("#position").val();
	if(position==0 ||position==7){
		$("#licencenodl").hide();
		$("#registerdatesdl").hide();
		$("#limittypedl").hide();
		$("#limitdatesdl").hide();
		$("#registeredcapitaldl").hide();
	}else{
		$("#licencenodl").show();
		$("#registerdatesdl").show();
		$("#limittypedl").show();
		$("#limitdatesdl").show();
		$("#registeredcapitaldl").show();
	}
});

//检查表单
function checkForm() {
	var position = $("#position").val();
	if(position==0 ||position==7){
	
		
		$("#licencenodl").show();
		$("#registerdatesdl").show();
		$("#limittypedl").show();
		$("#limitdatesdl").show();
		$("#registeredcapitaldl").show();
	}else{
			$("#licencenodl").hide();
		$("#registerdatesdl").hide();
		$("#limittypedl").hide();
		$("#limitdatesdl").hide();
		$("#registeredcapitaldl").hide();
	}
	if(position==0){
		if (!checkcompanyname()) {
	        return false;
	    }
	    if (!checkdepartment()) {
	        return false;
	    }
	    if (!changeposition()) {
	        return false;
	    }
	    if (!changecompanytype()) {
	        return false;
	    }
	    if (!checkprimarybusiness()) {
	        return false;
	    }
	    if (!checklicenceno()) {
	        return false;
	    }
	    if (!checkregisterdates()) {
	        return false;
	    }
	    if (!changelimittype()) {
	        return false;
	    }
	    if (!checklimitdates()) {
	        return false;
	    }
	    if (!checkregisteredcapital()) {
	        return false;
	    }
	    if (!checkDealAddress()) {
	        return false;
	    }
	    
	    
	    if (!checkincomeperyear()) {
	        return false;
	    }
	    if (!checkincomepermonth()) {
	        return false;
	    }
	    if (!checkotherincomepermonth()) {
	        return false;
	    }
	    if (!checksupportnum()) {
	        return false;
	    }
	}
    return true;
};

//企业名称
function checkcompanyname() {
	var position = $("#position").val();
	if(position==0){
	    var companyname = $.trim($("#companyname").val());
	    if (companyname== "") {
	        $("#companynameError").html("企业名称不能为空");
	        $("#companynameError").addClass("err");
	        return false;
	    }
	    if (companyname.length > 50) {
	        $("#companynameError").html("企业名称字段长度不超过50");
	        $("#companynameError").addClass("err");
	        return false;
	    }
	}
    $("#companynameError").html("");
    $("#companynameError").removeClass("err");
    return true;
};

//部门
function checkdepartment() {
	var position = $("#position").val();
	if(position==0){
	    var department = $.trim($("#department").val());
	    if (department.length == 0) {
	        $("#departmentError").html("部门不能为空");
	        $("#departmentError").addClass("err");
	        return false;
	    }
	}
    $("#departmentError").html("");
    $("#departmentError").removeClass("err");
    return true;
};

//职位
function changeposition() {
    var position = $("#position").val();
    if (position == "") {
        $("#positionError").html("职位不能为空");
        $("#positionError").addClass("err");
        return false;
    }
	if(position==0 ||position==7){
		
		
		$("#licencenodl").show();
		$("#registerdatesdl").show();
		$("#limittypedl").show();
		$("#limitdatesdl").show();
		$("#registeredcapitaldl").show();
	}else{
	$("#licencenodl").hide();
		$("#registerdatesdl").hide();
		$("#limittypedl").hide();
		$("#limitdatesdl").hide();
		$("#registeredcapitaldl").hide();
	}
    $("#positionError").html("");
    $("#positionError").removeClass("err");
    return true;
};

//公司类型
function changecompanytype() {
	var position = $("#position").val();
	if(position==0){
	    var companytype = $("#companytype").val();
	    if (companytype == "") {
	        $("#companytypeError").html("公司类型不能为空");
	        $("#companytypeError").addClass("err");
	        return false;
	    }
	}
    $("#companytypeError").html("");
    $("#companytypeError").removeClass("err");
    return true;
};

//主营业务
function checkprimarybusiness() {
	var position = $("#position").val();
	if(position==0){
	    var termSign = $("#primarybusiness").val();
	    if (termSign == "") {
	        $("#primarybusinessError").html("主营业务不能为空");
	        $("#primarybusinessError").addClass("err");
	        return false;
	    }
	}
    $("#primarybusinessError").html("");
    $("#primarybusinessError").removeClass("err");
    return true;
};

//营业执照号
function checklicenceno() {
	var position = $("#position").val();
	if(position==0){
	    var licenceno = $("#licenceno").val();
	    if (licenceno == "") {
	        $("#licencenoError").html("营业执照号不能为空");
	        $("#licencenoError").addClass("err");
	        return false;
	    }
	    var re = /[\u4E00-\u9FA5]/g;
	    if (re.test(licenceno)) {
	        $("#licencenoError").html("营业执照号不能为汉字");
	        $("#licencenoError").addClass("err");
	        return false;
	    }
	}
    $("#licencenoError").html("");
    $("#licencenoError").removeClass("err");
    return true;
}

//营业执照注册日期
function checkregisterdates() {
	var position = $("#position").val();
	if(position==0){
	    var termSign = $("#registerdates").val();
	    if (termSign == "") {
	        $("#registerdatesError").html("营业执照注册日期不能为空");
	        $("#registerdatesError").addClass("err");
	        return false;
	    }
	}
    $("#registerdatesError").html("");
    $("#registerdatesError").removeClass("err");
    return true;
}

//营业执照期限类型
function changelimittype() {
	var position = $("#position").val();
	if(position==1){
	$("#limitdatesdl").hide();
	}
	if(position==0){
	$("#limitdatesdl").show();
	    var termSign = $("#limittype").val();
	    if (termSign == "") {
	        $("#limittypeError").html("营业执照注册日期不能为空");
	        $("#limittypeError").addClass("err");
	        return false;
	    }
	}
	 
    $("#limittypeError").html("");
    $("#limittypeError").removeClass("err");
    return true;
}

//营业执照到期日
function checklimitdates() {
	var position = $("#position").val();
	if(position==0){
	    var termSign = $("#limitdates").val();
	    if (termSign == "") {
	        $("#limitdatesError").html("营业执照到期日不能为空");
	        $("#limitdatesError").addClass("err");
	        return false;
	    }
	}
    $("#limitdatesError").html("");
    $("#limitdatesError").removeClass("err");
    return true;
}

//注册资本
function checkregisteredcapital() {
	var position = $("#position").val();
	if(position==0){
	    var regiFund = $("#registeredcapital").val();
	    regiFund = $.trim(regiFund);
	    if (regiFund == "") {
	        $("#registeredcapitalError").html("注册资本不能为空");
	        $("#registeredcapitalError").addClass("err");
	        return false;
	    }
	    var reg = /^[0-9]{1}\d*(\.\d{1,2})?$/;
	    var result1 = reg.test(regiFund);
	    if (!result1) {
	        $("#registeredcapitalError").html("注册资本必须为数值，可保留两位小数");
	        $("#registeredcapitalError").addClass("err");
	        return false;
	    }
	}
    $("#registeredcapitalError").html("");
    $("#registeredcapitalError").removeClass("err");
    return true;
};

//企业详细地址
function checkDealAddress() { 
	var position = $("#position").val();
	if(position==0){
	  var dealAddress = $("#detailaddress").val();
	  dealAddress = $.trim(dealAddress);
	  if (dealAddress.length == 0) {
	      $("#detailaddressError").html("企业详细地址不能为空");
	      $("#detailaddressError").addClass("err");
	      return false;
	  }
  }
  $("#detailaddressError").html("");
  $("#detailaddressError").removeClass("err");
  return true;
}

//判断输入框中文本的汉字个数
function getCharaChinese(value) {
    var re = /[\u4E00-\u9FA5]/g;
    var count = "0";
    if (re.test(value)) {
        count = value.match(re).length;
    }
    return count;
};

//个人年总收入
function checkincomeperyear() { 
    var incomeperyear = $.trim($("#incomeperyear").val());
    if (incomeperyear!="") {
    	var reg = /^[0-9]{1}\d*(\.\d{1,2})?$/;
	    var result1 = reg.test(incomeperyear);
	    if (!result1) {
	        $("#incomeperyearError").html("个人年总收入必须为数值");
	        $("#incomeperyearError").addClass("err");
	        return false;
	    }
    }
    $("#incomeperyearError").html("");
    $("#incomeperyearError").removeClass("err");
    return true;
}

//每月收入
function checkincomepermonth() { 
    var incomepermonth = $.trim($("#incomepermonth").val());
    if (incomepermonth!="") {
    	var reg = /^[0-9]{1}\d*(\.\d{1,2})?$/;
	    var result1 = reg.test(incomepermonth);
	    if (!result1) {
	        $("#incomepermonthError").html("每月收入必须为数值");
	        $("#incomepermonthError").addClass("err");
	        return false;
	    }
    }
    $("#incomepermonthError").html("");
    $("#incomepermonthError").removeClass("err");
    return true;
}

//每月其他收入
function checkotherincomepermonth() { 
    var otherincomepermonth = $.trim($("#otherincomepermonth").val());
    if (otherincomepermonth!="") {
    	var reg = /^[0-9]{1}\d*(\.\d{1,2})?$/;
	    var result1 = reg.test(otherincomepermonth);
	    if (!result1) {
	        $("#otherincomepermonthError").html("每月其他收入必须为数值");
	        $("#otherincomepermonthError").addClass("err");
	        return false;
	    }
    }
    $("#otherincomepermonthError").html("");
    $("#otherincomepermonthError").removeClass("err");
    return true;
}

//目前需供养人数
function checksupportnum() { 
    var supportnum = $.trim($("#supportnum").val());
    if (supportnum!="") {
    	var reg = /^[0-9]{1}\d*(\.\d{1,2})?$/;
	    var result1 = reg.test(supportnum);
	    if (!result1) {
	        $("#supportnumError").html("目前需供养人数必须为数值");
	        $("#supportnumError").addClass("err");
	        return false;
	    }
    }
    $("#supportnumError").html("");
    $("#supportnumError").removeClass("err");
    return true;
}
</script>
</body>
</html>