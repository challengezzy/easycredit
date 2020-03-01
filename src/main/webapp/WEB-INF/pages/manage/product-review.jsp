<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp" %>
<!DOCTYPE html>
<html class="">
<head>
	<title>信息查看页</title>
	<jsp:include page="/common/front/head.jsp" />
	<style type="text/css">
		.spanImg {
			cursor:pointer;
			height: 50px;
			overflow: auto;
			width: 200px;
			float:left;
		}
		.main {
    		background: #fff none repeat scroll 0 0;
		}
		.apply {
   			 background: #fff none repeat scroll 0 0;
		}
		.apply-step-item {
			cursor:pointer; 
		}
	</style>
</head>
<body>
<!-- 页面内容 -->
<div class="main">
	<div class="apply">
		<div class="apply-step">
			<ul class="cf apply-step-list">
				<li class="apply-step-item" id="four">
					<span class="num">4</span><span class="des">资料上传</span>
				</li>
				<li class="apply-step-item" id="three">
					<span class="num">3</span><span class="des">借款信息</span>
					<div class="arrow-box">
						<span class="arrow arrow01">◆</span> <span class="arrow arrow02">◆</span>
					</div>
				</li>
				<li class="apply-step-item" id="two">
					<span class="num">2</span>
					<span class="des">企业信息</span>
					<div class="arrow-box">
						<span class="arrow arrow01">◆</span> 
						<span class="arrow arrow02">◆</span>
					</div>
				</li>
				<li class="apply-step-item apply-step-item-current" id="one">
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
			<div class="one">
			<div class="apply-form-item">
				<h2 class="form-tit">基本信息</h2>
				<div class="form-box">
					<dl class="info-item">
						<dt class="key"><span class="must">*</span>&nbsp;借款人姓名：</dt>
						<dd class="val">
							<input name="mortgagorname" id="mortgagorname" value="${mortgagorInfo.mortgagorname}" 
							  class="form-text" type="text">
						</dd>
						<span class="mustbe">[必填]</span>
						<dd><span id="custNameError"></span></dd>
					</dl>
					<dl class="info-item">
						<dt class="key"><span class="must">*</span>&nbsp;身份证号：</dt>
						<dd class="val">
							<input id="idnumber" name="idnumber" value="${mortgagorInfo.idnumber}" 
							  class="form-text" type="text">
						</dd>
						<span class="mustbe">[必填]</span>
						<dd class="tips"><span id="paperIdError"></span></dd>
					</dl>
					<dl class="info-item">
						<dt class="key"><span class="must">*</span>&nbsp;性别：</dt>
						<dd class="val">
							<select name="sex" id="sex" class="inputW130" >
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
							<select name="matrimonial" id="matrimonial"  class="inputW130">
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
							<select name="educationalstatus" id="educationalstatus" value="${mortgagorInfo.educationalstatus}" class="inputW130">
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
						<dt class="key">
							<span class="must">*</span>&nbsp;从业年限：
						</dt>
						<dd class="val">
							<input id="workinglife" name="workinglife" value="${mortgagorInfo.workinglife}"
							 onblur="javascript:checkEmpYears();" class="form-text" type="text">&nbsp;年
						</dd>
						<span class="mustbe">[必填]</span>
						<dd class="tips"><span id="workinglifeError"></span></dd>
					</dl>
					<dl class="info-item">
						<dt class="key"><span class="must">*</span>&nbsp;子女人数：</dt>
						<dd class="val">
							<input id="childrennum" name="childrennum" value="${mortgagorInfo.childrennum}" 
							onblur="javascript:checkChildNum();" class="form-text" type="text">&nbsp;人
						</dd>
						<span class="mustbe">[必填]</span>
						<dd class="tips"><span id="childNumError"></span></dd>
					</dl>
					
					<dl class="info-item">
						<dt class="key">电子邮件：</dt>
						<dd class="val">
							<input id="email" name="email" value="${mortgagorInfo.email}" 
							onblur="javascript:checkEmail();" class="form-text" type="text">
						</dd>
						<dd class="tips"><span id="emailError"></span></dd>
					</dl>
					<dl class="info-item">
						<dt class="key"><span class="must">*</span>&nbsp;手机号：</dt>
						<dd class="val">
							<input id="cellphone" name="cellphone" value="${mortgagorInfo.cellphone}"
							 onblur="javascript:checkMobilePhone();" class="form-text" type="text">
						</dd>
						<span class="mustbe">[必填]</span>
						<dd class="tips">
							<span id="mobilePhoneError"></span>
						</dd>
					</dl>
					<dl class="info-item">
						<dt class="key"><span class="must">*</span>&nbsp;办公电话：</dt>
						<dd class="val">
							<input id="telephone" name="telephone" value="${mortgagorInfo.telephone}"
							 class="form-text" onblur="javascript:checkTelephone();" type="text">
						</dd>
						<span class="mustbe">[必填]</span>
						<dd class="tips"><span id="telephoneError"></span></dd>
					</dl>
				</div>
			</div>
			<div class="apply-form-item">
				<h2 class="form-tit">居住信息</h2>
				<div class="form-box">
					<dl class="info-item">
						<dt class="key"><span class="must">*</span>&nbsp;房产类型：</dt>
						<dd class="val">
							<select id="houseproperty" name="houseproperty" value="${mortgagorResidential.houseproperty}" class="inputW130">
								<option value="">--请选择--</option>
								<option value="0" <c:if test="${mortgagorResidential.houseproperty==0}">selected= "selected"</c:if>>自由房产</option>
								<option value="1" <c:if test="${mortgagorResidential.houseproperty==1}">selected= "selected"</c:if>>租赁</option>
								<option value="2" <c:if test="${mortgagorResidential.houseproperty==2}">selected= "selected"</c:if>>与亲属同住</option>
								<option value="3" <c:if test="${mortgagorResidential.houseproperty==3}">selected= "selected"</c:if>>单位宿舍</option>
								<option value="4" <c:if test="${mortgagorResidential.houseproperty==4}">selected= "selected"</c:if>>其他</option>
							</select>
						</dd>
						<span class="mustbe">[必填]</span>
						<dd class="tips"><span id="housepropertyError"></span></dd>
					</dl>
					<dl class="info-item">
						<dt class="key"><span class="must">*</span>&nbsp;月还房贷：</dt>
						<dd class="val">
							<input id="housingloan" name="housingloan" value="${mortgagorResidential.housingloan}"
							 onblur="javascript:checkOtherHouseNum();" class="form-text" type="text">&nbsp;元人民币
						</dd>
						<span class="mustbe">[必填]</span>
						<dd class="tips"><span id="housingloanError"></span></dd>
					</dl>
					<dl class="info-item">
						<dt class="key"><span class="must">*</span>&nbsp;居住地址：</dt>
						<dd class="val">
							<input id="residentialaddress" name="residentialaddress" value="${mortgagorResidential.residentialaddress}"
							   onblur="javascript:checkAddress();" class="form-text" type="text">
						</dd>
						<span class="mustbe">[必填]</span>
						<dd class="tips"><span id="residentialaddressError"></span></dd>
					</dl>
					<dl class="info-item">
						<dt class="key"><span class="must">*</span>&nbsp;户籍地址：</dt>
						<dd class="val">
							<input id="registeraddress" name="registeraddress" value="${mortgagorResidential.registeraddress}" 
									class="form-text" "  type="text">
						</dd>
						<span class="mustbe">[必填]</span>
						<dd class="tips"><span id="registeraddressError"></span></dd>
					</dl>
					<dl class="info-item">
						<dt class="key">
							<span class="must">*</span>&nbsp;联系地址：
						</dt>
						<dd class="val">
							<input id="contactaddresstype1" name="contactaddresstype1" value="" type="hidden"> 
							<select id="contactaddresstype" name="contactaddresstype" value="${mortgagorResidential.contactaddresstype}" class="inputW130">
								<option value="">--请选择--</option>
								<option value="0" <c:if test="${mortgagorResidential.contactaddresstype==0}">selected= "selected"</c:if>>居住地址</option>
								<option value="1" <c:if test="${mortgagorResidential.contactaddresstype==1}">selected= "selected"</c:if>>户籍地址</option>
							</select>
						</dd>
						<span class="mustbe">[必填]</span>
						<dd class="tips">
							<span id="contactAddrFlagError"></span>
						</dd>
					</dl>
					<dl class="info-item">
						<dt class="key">在此城市生活时长：</dt>
						<dd class="val">
							<input id="citylife" name="citylife" value="${mortgagorResidential.citylife}" class="form-text"
								maxlength="26" onblur="javascript:checkSegiSeat();"
								type="text">年 
						</dd>
						<dd class="tips">
							<span id="isSameAddrError"></span>
						</dd>
					</dl>
					<div class="clear"></div>
				</div>
			</div>
			<div  class="apply-form-item" >
					<h2 class="form-tit">联系人信息</h2>
					<div class="form-box" id="spouse-tr">
						<input name="familyType" value="02" type="hidden">
						<dl class="info-item">
							<dt class="key">
								<span class="must">*</span>&nbsp;配偶姓名：
							</dt>
							<dd class="val">
								<input id="spousename" name="spousename" value="${mortgagorContact.spousename}"  class="form-text"
									maxlength="10" onblur="javascript:checkspousename();"
									type="text">
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips">
								<span id="spousenameError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">
								<span class="must">*</span>&nbsp;身份证号：
							</dt>
							<dd class="val">
								<input id="spouseidnumber" name="spouseidnumber" value="${mortgagorContact.idnumber}" 
									class="form-text" onblur="javascript:checkspouseidnumber();"
									type="text">
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips">
								<span id="spouseidnumberError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">
								<span class="must">*</span>&nbsp;手机号：
							</dt>
							<dd class="val">
								<input id="spousecellphone" name="spousecellphone"  value="${mortgagorContact.cellphone}"
									class="form-text"
									onblur="javascript:checkspousecellphone();" type="text">
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips">
								<span id="spousecellphoneError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">
								<span class="must">*</span>&nbsp;配偶户籍地址：
							</dt>
							<dd class="val">
								<input id="spouseregisteraddress" name="spouseregisteraddress" value="${mortgagorContact.registeraddress}"
									class="form-text" maxlength="25" style="width: 300px;"
									onblur="javascript:checkFamilySegiSeat();" type="text">
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips">
								<span id="spouseregisteraddressError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">
								<span class="must">*</span>&nbsp;配偶联系地址：
							</dt>
							<dd class="val">
								<input id="spousecontactaddresstype1" name="spousecontactaddresstype1" value="" type="hidden"> 
								<select id="spousecontactaddresstype" name="spousecontactaddresstype" value="${mortgagorContact.contactaddresstype}" class="inputW130">
									<option value="">--请选择--</option>
									<option value="0" <c:if test="${mortgagorContact.contactaddresstype==0}">selected= "selected"</c:if>>与户籍地址相同</option>
									<option value="1" <c:if test="${mortgagorContact.contactaddresstype==1}">selected= "selected"</c:if>>与申请人联系地址相同</option>
								</select>
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips">
								<span id="correlation1typeError"></span>
							</dd>
						</dl>
						</div>
						<div class="apply-form-item">
						<dl class="info-item">
							<dt class="key">其他联系人1姓名：</dt>
							<dd class="val">
								<input id="correlation1name" name="correlation1name" value="${mortgagorContact.correlation1name}"
								 	class="form-text" maxlength="20" onblur="checkNum('2')" type="text">
							</dd>
							<dd class="tips">
								<span id="correlation1nameError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">其他联系人1手机号：</dt>
							<dd class="val">
								<input id="correlation1cellphone" name="correlation1cellphone" value="${mortgagorContact.correlation1cellphone}"
								 class="form-text" maxlength="80" onblur="checkNum('3')" type="text">
							</dd>
							<dd class="tips">
								<span id="correlation1cellphoneError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">
								<span class="must">*</span>&nbsp;其他联系人1类型：
							</dt>
							<dd class="val">
								<select id="correlation1type" name="correlation1type" value="${mortgagorContact.correlation1type}" class="inputW130">
									<option value="">--请选择--</option>
									<option value="0" <c:if test="${mortgagorContact.correlation1type==0}">selected= "selected"</c:if>>亲属</option>
		 							<option value="1" <c:if test="${mortgagorContact.correlation1type==1}">selected= "selected"</c:if>>朋友</option>
									<option value="2" <c:if test="${mortgagorContact.correlation1type==2}">selected= "selected"</c:if>>同事</option>
								</select>
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips">
								<span id="correlation1typeError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">其他联系人2姓名：</dt>
							<dd class="val">
								<input id="correlation2name" name="correlation2name" value="${mortgagorContact.correlation2name}"
								 	class="form-text" onblur="checkNum('2')" type="text">
							</dd>
							<dd class="tips"><span id="correlation2nameError"></span></dd>
						</dl>
						<dl class="info-item">
							<dt class="key">其他联系人2手机号：</dt>
							<dd class="val">
								<input id="correlation2cellphone" name="correlation2cellphone" value="${mortgagorContact.correlation2cellphone}"
								 class="form-text" maxlength="80" onblur="checkNum('3')" type="text">
							</dd>
							<dd class="tips">
								<span id="correlation1cellphoneError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">
								<span class="must">*</span>&nbsp;其他联系人2类型：
							</dt>
							<dd class="val">
								<input id="correlation2type1" name="correlation2type1" value="" type="hidden"> 
								<select id="correlation2type" name="correlation2type"  value="${mortgagorContact.correlation2type}" class="inputW130">
									<option value="">--请选择--</option>
									<option value="0" <c:if test="${mortgagorContact.correlation2type==0}">selected= "selected"</c:if>>亲属</option>
		 							<option value="1" <c:if test="${mortgagorContact.correlation2type==1}">selected= "selected"</c:if>>朋友</option>
									<option value="2" <c:if test="${mortgagorContact.correlation2type==2}">selected= "selected"</c:if>>同事</option>
								</select>
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips">
								<span id="correlation2typeError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">工作证明人1姓名：</dt>
							<dd class="val">
								<input id="reterence1name" name="reterence1name" value="${mortgagorContact.reterence1name}"
								  class="form-text" maxlength="80" onblur="checkNum('3')" type="text">
							</dd>
							<dd class="tips">
								<span id="reterence1nameError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">工作证明人1部门：</dt>
							<dd class="val">
								<input id="reterence1depart" name="reterence1depart" value="${mortgagorContact.reterence1depart}"
								 class="form-text" maxlength="40" onblur="checkFamilyEmail()" type="text">
							</dd>
							<dd class="tips">
								<span id="reterence1departError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">工作证明人1职位：</dt>
							<dd class="val">
								<input id="reterence1position" name="reterence1position" value="${mortgagorContact.reterence1position}"
								 class="form-text" maxlength="40" onblur="checkFamilyEmail()" type="text">
							</dd>
							<dd class="tips">
								<span id="reterence1positionError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">工作证明人1手机号：</dt>
							<dd class="val">
								<input id="reterence1cellphone" name="reterence1cellphone" value="${mortgagorContact.reterence1cellphone}"
								 class="form-text" maxlength="40" onblur="checkFamilyEmail()" type="text">
							</dd>
							<dd class="tips">
								<span id="reterence1cellphoneError"></span>
							</dd>
						</dl>
						
						<dl class="info-item">
							<dt class="key">工作证明人2姓名：</dt>
							<dd class="val">
								<input id="reterence2name" name="reterence2name" value="${mortgagorContact.reterence2name}"
								 class="form-text" maxlength="80" onblur="checkNum('3')" type="text">
							</dd>
							<dd class="tips">
								<span id="reterence2nameError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">工作证明人2部门：</dt>
							<dd class="val">
								<input id="reterence2depart" name="reterence2depart" value="${mortgagorContact.reterence2depart}" 
								class="form-text" maxlength="40" onblur="checkFamilyEmail()" type="text">
							</dd>
							<dd class="tips">
								<span id="reterence2departError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">工作证明人2职位：</dt>
							<dd class="val">
								<input id="reterence2position" name="reterence2position" value="${mortgagorContact.reterence2position}"
								 class="form-text" maxlength="40" onblur="checkFamilyEmail()" type="text">
							</dd>
							<dd class="tips">
								<span id="reterence2positionError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">工作证明人2手机号：</dt>
							<dd class="val">
								<input id="reterence2cellphone" name="reterence2cellphone" value="${mortgagorContact.reterence2cellphone}"
								  class="form-text" maxlength="40" onblur="checkFamilyEmail()" type="text">
							</dd>
							<dd class="tips">
								<span id="reterence2cellphoneError"></span>
							</dd>
						</dl>
					</div>
				</div>
			</div>	
			<!-- 第二页 -->
			<div class="two">
				<div class="apply-form-item">
					<h2 class="form-tit">企业基本信息</h2>
					<div class="form-box">
						<!-- 当前去掉体系外提单，默认都为体系内提单-->
						<dl class="info-item">
							<dt class="key">
								<span class="must">*</span>&nbsp;企业名称：
							</dt>
							<dd class="val">
								<input id="companyname" name="companyname" value="${companyInfo.companyname}" class="form-text" type="text">
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips">
								<span id="corpNameError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">
								<span class="must">*</span>&nbsp;部门：
							</dt>
							<dd class="val">
								<input id="department" name="department" value="${companyInfo.department}" 
									class="form-text" maxlength="6"
									 type="text">&nbsp;
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
								<select id="position" name="position" value="${companyInfo.position}"  class="inputW130" onchange="javascript:changeposition();">
									<option value="">--请选择--</option>
									<option value="0" <c:if test="${companyInfo.position==0}">selected= "selected"</c:if>>负责人</option>
									<option value="1" <c:if test="${companyInfo.position==1}">selected= "selected"</c:if>>高级管理人员</option>
									<option value="2" <c:if test="${companyInfo.position==2}">selected= "selected"</c:if>>中级管理人员</option>
									<option value="3" <c:if test="${companyInfo.position==3}">selected= "selected"</c:if>>一般管理人员</option>
									<option value="4" <c:if test="${companyInfo.position==4}">selected= "selected"</c:if>>一般正式员工</option>
									<option value="5" <c:if test="${companyInfo.position==5}">selected= "selected"</c:if>>派遣员工</option>
									<option value="6" <c:if test="${companyInfo.position==6}">selected= "selected"</c:if>>退休人员</option>
									<option value="7" <c:if test="${companyInfo.position==7}">selected= "selected"</c:if>>其他</option>
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
						<dl class="info-item">
							<dt class="key">
								<span class="must">*</span>&nbsp;营业执照号：
							</dt>
							<dd class="val">
								<input id="licenceno" name="licenceno" class="form-text" value="${companyInfo.licenceno}"
									maxlength="30" onblur="javascript:checkRegiCode();"
									type="text">
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips">
								<span id="licencenoError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">
								<span class="must">*</span>&nbsp;营业执照注册日期：
							</dt>
							<dd class="val">
								<input id="registerdates" name="registerdates" class="Wdate Wdate2 form-text" value="<fmt:formatDate value="${companyInfo.registerdate}" type="both" pattern="yyyy-MM-dd"/>"
									onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',vel:'registDateEx'})"
									type="text">
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips">
								<span id="registerdateError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">
								<span class="must">*</span>&nbsp;营业执照期限类型：
							</dt>
							<dd class="val">
								<select id="limittype" name="limittype" value="${companyInfo.limittype}" class="inputW130" onchange="javascript:changeTermSign();">
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
						<dl class="info-item">
							<dt class="key">
								<span class="must">*</span>&nbsp;营业执照注册日期到期日：
							</dt>
							<dd class="val">
								<input id="limitdates" name="limitdates" class="Wdate Wdate2 form-text" value="<fmt:formatDate value="${companyInfo.limitdate}" type="both" pattern="yyyy-MM-dd"/>" 
									onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',vel:'regiEndDateEx'})"
									type="text">
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips">
								<span id="limitdateError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">
								<span class="must">*</span>&nbsp;注册资本：
							</dt>
							<dd class="val">
								<input id="registeredcapital" name="registeredcapital" class="form-text" value="${companyInfo.registeredcapital}" 
									maxlength="16" onblur="javascript:checkRegiFund();"
									type="text">&nbsp;元
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips">
								<span id="registeredcapitalError"></span>
							</dd>
						</dl>
						<dl class="info-item">
							<dt class="key">
								<span class="must">*</span>&nbsp;企业所在城市：
							</dt>
							<dd class="val">
								<select id="areaid" name="areaid" value="${companyInfo.areaid}"  class="inputW130">
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
								<span class="must">*</span>&nbsp;实际经营详细地址：
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
						<input id="refIdContentsSize" name="refIdContentsSize" value="1" type="hidden">
						<dl class="info-item">
							<dt class="key">
								<span class="must">*</span>&nbsp;个人年总收入：
							</dt>
							<dd class="val">
								<input id="incomeperyear" name="incomeperyear" class="form-text" value="${companyInfo.incomeperyear}"
									maxlength="16" onblur="javascript:checkRegiFund();"
									type="text">&nbsp;万元
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips">
								<span id="incomeperyearError"></span>
							</dd>
						</dl>
						
						<dl class="info-item">
							<dt class="key">
								<span class="must">*</span>&nbsp;每月收入：
							</dt>
							<dd class="val">
								<input id="incomepermonth" name="incomepermonth" class="form-text" value="${companyInfo.incomepermonth}"
									maxlength="16" onblur="javascript:checkRegiFund();"
									type="text">&nbsp;元
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips">
								<span id="incomepermonthError"></span>
							</dd>
						</dl>
						
						<dl class="info-item">
							<dt class="key">
								<span class="must">*</span>&nbsp;每月其他收入：
							</dt>
							<dd class="val">
								<input id="otherincomepermonth" name="otherincomepermonth" class="form-text" value="${companyInfo.otherincomepermonth}"
									maxlength="16" onblur="javascript:checkRegiFund();"
									type="text">&nbsp;元
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips">
								<span id="otherincomepermonthError"></span>
							</dd>
						</dl>
						
						<dl class="info-item">
							<dt class="key">
								<span class="must">*</span>&nbsp;收入来源：
							</dt>
							<dd class="val">
								<input id="otherincomeresourse" name="otherincomeresourse" class="form-text" value="${companyInfo.otherincomeresourse}"
									maxlength="16" onblur="javascript:checkRegiFund();"
									type="text">&nbsp;
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips">
								<span id="otherincomeresourseError"></span>
							</dd>
						</dl>
						
						<dl class="info-item">
							<dt class="key">
								<span class="must">*</span>&nbsp;目前需供养人数：
							</dt>
							<dd class="val">
								<input id="supportnum" name="supportnum" class="form-text" value="${companyInfo.supportnum}"
									maxlength="16" onblur="javascript:checkRegiFund();"
									type="text">&nbsp;人
							</dd>
							<span class="mustbe">[必填]</span>
							<dd class="tips">
								<span id="supportnumError"></span>
							</dd>
						</dl>
					</div>
				</div>
			</div>
			 
			<!-- 第三页 -->
			
			<div class="apply-form-item three">
				<h2 class="form-tit">基本信息</h2>
				<div class="form-box">
					<dl class="info-item">
						<dt class="key">产品名称：</dt>
						<dd class="val">${productName}</dd>
						
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
								class="form-text" onblur="checkLoanAmount()" type="text">&nbsp;个月
						</dd>
						<span class="mustbe">[必填]</span>
						<dd class="tips">
							<span id="loanAmountError"></span>
						</dd>
					</dl>
					
					<dl class="info-item">
						<dt class="key">
							<span class="must">*</span>&nbsp;每月可接受还款金额：
						</dt>
						<dd class="val">
							<input id="avilblemonthlyrepayment" name="avilblemonthlyrepayment" maxlength="10" value="${orderInfoList.avilblemonthlyrepayment}"
								class="form-text" onblur="checkLoanAmount()" type="text">&nbsp;元
						</dd>
						<span class="mustbe">[必填]</span>
						<dd class="tips">
							<span id="loanAmountError"></span>
						</dd>
					</dl>
					
					
					<dl class="info-item">
						<dt class="key">
							<span class="must">*</span>&nbsp;行业投向代码：
						</dt>
						<dd class="val">
							<input id="tradecode" name="tradecode" maxlength="10" value="${orderInfoList.tradecode}"
								class="form-text" onblur="checkLoanAmount()" type="text">&nbsp;
						</dd>
						<span class="mustbe">[必填]</span>
						<dd class="tips">
							<span id="loanAmountError"></span>
						</dd>
					</dl>
					
					
					<dl class="info-item">
						<dt class="key">
							<span class="must">*</span>&nbsp;行业投向名称：
						</dt>
						<dd class="val">
							
							<input id="tradename" value="${orderInfoList.tradename}"
								name="tradename"  class="form-text"
								type="text">
						</dd>
						<span class="mustbe">[必填]</span>
						<dd class="tips"></dd>
					</dl>
					<dl class="info-item">
						<dt class="key">
							<span class="must">*</span>&nbsp;借款用途说明：
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
							<span class="must">*</span>&nbsp;还款来源说明：
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
			</div>
			 
			<!-- 第四步 -->
				<div class="four">
					<div class="apply-form-item apply-form-item-upload">
						<input id="archName1" name="archName1" value="借款人身份证" type="hidden">
						<h2 class="form-tit">借款人身份证
							<span style="color: red;">&nbsp;*</span>
							<input id="isrequflag1" name="isrequflag1" value="1" type="hidden">
						</h2>
						<div class="form-box" id="displayAttch1">
							<input id="existsImgsSize1" name="existsImgsSize1" value="0" type="hidden">
							<c:forEach items="${s1}" var="obj" varStatus="status">
								<dl id="imagedl_${obj.id}" class="file-item">
									<c:set var="imageurls" value="${fn:replace(obj.imageurl, '\', '/')}"/>
									<c:set var="simageurl" value="${fn:split(imageurls, '.')[0]}" />
									<dt style="cursor: pointer; background-image:url(/${fn:split(fn:replace(obj.imageurl, '\\', '/'), '.')[0]}_210_100.jpg);" class="file-back">
										 <span class="spanImg" onclick="javascript:viewAttchImage('${fn:replace(obj.imageurl, '\\', '/')}');"></span>
									</dt>
								</dl>
							</c:forEach>
						</div>
					</div>
					<div class="apply-form-item apply-form-item-upload">
						<input id="archName3" name="archName3" value="申请表" type="hidden">
						<h2 class="form-tit">申请表
							<span style="color: red;">&nbsp;*</span>
							<input id="isrequflag3" name="isrequflag3" value="1" type="hidden">
						</h2>
						<div class="form-box" id="displayAttch3">
							<input id="existsImgsSize3" name="existsImgsSize3" value="0" type="hidden">
							<c:forEach items="${s3}" var="obj" varStatus="status">
								<dl id="imagedl_${obj.id}" class="file-item">
									<c:set var="imageurls" value="${fn:replace(obj.imageurl, '\', '/')}"/>
									<c:set var="simageurl" value="${fn:split(imageurls, '.')[0]}" />
									<dt style="cursor: pointer; background-image:url(/${fn:split(fn:replace(obj.imageurl, '\\', '/'), '.')[0]}_210_100.jpg);" class="file-back">
										 <span class="spanImg" onclick="javascript:viewAttchImage('${fn:replace(obj.imageurl, '\\', '/')}');"></span>
									</dt>
								</dl>
							</c:forEach>
						</div>
					</div>
					<div class="apply-form-item apply-form-item-upload">
						<input id="archName0" name="archName0" value="营业执照（副本）" type="hidden">
						<h2 class="form-tit"> 营业执照（副本）
							<span style="color: red;">&nbsp;*</span>
							<input id="isrequflag0" name="isrequflag0" value="1" type="hidden">
						</h2>
						<div class="form-box" id="displayAttch0">
							<input id="existsImgsSize0" name="existsImgsSize0" value="0" type="hidden">
							<c:forEach items="${s0}" var="obj" varStatus="status">
								<dl id="imagedl_${obj.id}" class="file-item">
									<c:set var="imageurls" value="${fn:replace(obj.imageurl, '\', '/')}"/>
									<c:set var="simageurl" value="${fn:split(imageurls, '.')[0]}" />
									<dt style="cursor: pointer; background-image:url(/${fn:split(fn:replace(obj.imageurl, '\\', '/'), '.')[0]}_210_100.jpg);" class="file-back">
										 <span class="spanImg" onclick="javascript:viewAttchImage('${fn:replace(obj.imageurl, '\\', '/')}');"></span>
									</dt>
								</dl>
							</c:forEach>
						</div>
					</div>
					
					<div class="apply-form-item apply-form-item-upload">
						<input id="archName2" name="archName2" value="经营场所照片 " type="hidden">
						<h2 class="form-tit">经营场所照片 
							<span style="color: red;">&nbsp;*</span>
							<input id="isrequflag2" name="isrequflag2" value="1" type="hidden">
						</h2>
						<div class="form-box" id="displayAttch2">
							<input id="existsImgsSize2" name="existsImgsSize2" value="0" type="hidden">
							<c:forEach items="${s2}" var="obj" varStatus="status">
								<dl id="imagedl_${obj.id}" class="file-item">
									<c:set var="imageurls" value="${fn:replace(obj.imageurl, '\', '/')}"/>
									<c:set var="simageurl" value="${fn:split(imageurls, '.')[0]}" />
									<dt style="cursor: pointer; background-image:url(/${fn:split(fn:replace(obj.imageurl, '\\', '/'), '.')[0]}_210_100.jpg);" class="file-back">
										 <span class="spanImg" onclick="javascript:viewAttchImage('${fn:replace(obj.imageurl, '\\', '/')}');"></span>
									</dt>
								</dl>
							</c:forEach>
						</div>
					</div>
					
					<div class="apply-form-item apply-form-item-upload">
						<input id="archName4" name="archName4" value="税务登记证（副本）" type="hidden">
						<h2 class="form-tit">
							税务登记证（副本）
							<input id="isrequflag4" name="isrequflag4" value="0" type="hidden">
						</h2>
						<div class="form-box" id="displayAttch4">
							<input id="existsImgsSize4" name="existsImgsSize4" value="0" type="hidden">
							<c:forEach items="${s4}" var="obj" varStatus="status">
								<dl id="imagedl_${obj.id}" class="file-item">
									<c:set var="imageurls" value="${fn:replace(obj.imageurl, '\', '/')}"/>
									<c:set var="simageurl" value="${fn:split(imageurls, '.')[0]}" />
									<dt style="cursor: pointer; background-image:url(/${fn:split(fn:replace(obj.imageurl, '\\', '/'), '.')[0]}_210_100.jpg);" class="file-back">
										 <span class="spanImg" onclick="javascript:viewAttchImage('${fn:replace(obj.imageurl, '\\', '/')}');"></span>
									</dt>
								</dl>
							</c:forEach>
						</div>
					</div>
					<div class="apply-form-item apply-form-item-upload">
						<input id="archName5" name="archName5" value="配偶身份证（已婚必选）" type="hidden">
						<h2 class="form-tit">配偶身份证（已婚必选）
							<input id="isrequflag5" name="isrequflag5" value="0" type="hidden">
						</h2>
						<div class="form-box" id="displayAttch5">
							<input id="existsImgsSize5" name="existsImgsSize5" value="0" type="hidden">
							<c:forEach items="${s5}" var="obj" varStatus="status">
								<dl id="imagedl_${obj.id}" class="file-item">
									<c:set var="imageurls" value="${fn:replace(obj.imageurl, '\', '/')}"/>
									<c:set var="simageurl" value="${fn:split(imageurls, '.')[0]}" />
									<dt style="cursor: pointer; background-image:url(/${fn:split(fn:replace(obj.imageurl, '\\', '/'), '.')[0]}_210_100.jpg);" class="file-back">
										 <span class="spanImg" onclick="javascript:viewAttchImage('${fn:replace(obj.imageurl, '\\', '/')}');"></span>
									</dt>
								</dl>
							</c:forEach>
						</div>
					</div>
					<div class="apply-form-item apply-form-item-upload">
						<input id="archName6" name="archName6" value="借款人户口本" type="hidden">
						<h2 class="form-tit">借款人户口本
							<input id="isrequflag6" name="isrequflag6" value="0" type="hidden">
						</h2>
						<div class="form-box" id="displayAttch6">
							<input id="existsImgsSize6" name="existsImgsSize6" value="0" type="hidden">
							<c:forEach items="${s6}" var="obj" varStatus="status">
								<dl id="imagedl_${obj.id}" class="file-item">
									<c:set var="imageurls" value="${fn:replace(obj.imageurl, '\', '/')}"/>
									<c:set var="simageurl" value="${fn:split(imageurls, '.')[0]}" />
									<dt style="cursor: pointer; background-image:url(/${fn:split(fn:replace(obj.imageurl, '\\', '/'), '.')[0]}_210_100.jpg);" class="file-back">
										 <span class="spanImg" onclick="javascript:viewAttchImage('${fn:replace(obj.imageurl, '\\', '/')}');"></span>
									</dt>
								</dl>
							</c:forEach>
						</div>
					</div>
					<div class="apply-form-item apply-form-item-upload">
						<input id="archName7" name="archName7" value="配偶户口本" type="hidden">
						<h2 class="form-tit">配偶户口本
							<input id="isrequflag7" name="isrequflag7" value="0" type="hidden">
						</h2>
						<div class="form-box" id="displayAttch7">
							<input id="existsImgsSize7" name="existsImgsSize7" value="0" type="hidden">
							<c:forEach items="${s7}" var="obj" varStatus="status">
								<dl id="imagedl_${obj.id}" class="file-item">
									<c:set var="imageurls" value="${fn:replace(obj.imageurl, '\', '/')}"/>
									<c:set var="simageurl" value="${fn:split(imageurls, '.')[0]}" />
									<dt style="cursor: pointer; background-image:url(/${fn:split(fn:replace(obj.imageurl, '\\', '/'), '.')[0]}_210_100.jpg);" class="file-back">
										 <span class="spanImg" onclick="javascript:viewAttchImage('${fn:replace(obj.imageurl, '\\', '/')}');"></span>
									</dt>
								</dl>
							</c:forEach>
						</div>
					</div>
					<div class="apply-form-item apply-form-item-upload">
						<input id="archName8" name="archName8" value="借款人结婚证（已婚必选）" type="hidden">
						<h2 class="form-tit">借款人结婚证（已婚必选）
							<input id="isrequflag8" name="isrequflag8" value="0" type="hidden">
						</h2>
						<div class="form-box" id="displayAttch8">
							<input id="existsImgsSize8" name="existsImgsSize8" value="0" type="hidden">
							<c:forEach items="${s8}" var="obj" varStatus="status">
								<dl id="imagedl_${obj.id}" class="file-item">
									<c:set var="imageurls" value="${fn:replace(obj.imageurl, '\', '/')}"/>
									<c:set var="simageurl" value="${fn:split(imageurls, '.')[0]}" />
									<dt style="cursor: pointer; background-image:url(/${fn:split(fn:replace(obj.imageurl, '\\', '/'), '.')[0]}_210_100.jpg);" class="file-back">
										 <span class="spanImg" onclick="javascript:viewAttchImage('${fn:replace(obj.imageurl, '\\', '/')}');"></span>
									</dt>
								</dl>
							</c:forEach>
						</div>
					</div>
					<div class="apply-form-item apply-form-item-upload">
						<input id="archName11" name="archName11" value="银行流水（银行开具并盖章）扫描件或照片" type="hidden">
						<h2 class="form-tit">银行流水（银行开具并盖章）扫描件或照片
							<input id="isrequflag9" name="isrequflag9" value="0" type="hidden">
						</h2>
						<div class="form-box" id="displayAttch9">
							<input id="existsImgsSize9" name="existsImgsSize9" value="0" type="hidden">
							<c:forEach items="${s9}" var="obj" varStatus="status">
								<dl id="imagedl_${obj.id}" class="file-item">
									<c:set var="imageurls" value="${fn:replace(obj.imageurl, '\', '/')}"/>
									<c:set var="simageurl" value="${fn:split(imageurls, '.')[0]}" />
									<dt style="cursor: pointer; background-image:url(/${fn:split(fn:replace(obj.imageurl, '\\', '/'), '.')[0]}_210_100.jpg);" class="file-back">
										 <span class="spanImg" onclick="javascript:viewAttchImage('${fn:replace(obj.imageurl, '\\', '/')}');"></span>
									</dt>
								</dl>
							</c:forEach>
						</div>
					</div>
					<div class="apply-form-item apply-form-item-upload">
						<input id="archName12" name="archName10" value="经营场所使用权证明材料" type="hidden">
						<h2 class="form-tit">经营场地证明 
							<input id="isrequflag10" name="isrequflag10" value="0" type="hidden">
						</h2>
						<div class="form-box" id="displayAttch10">
							<input id="existsImgsSize10" name="existsImgsSize10" value="0" type="hidden">
							<c:forEach items="${s10}" var="obj" varStatus="status">
								<dl id="imagedl_${obj.id}" class="file-item">
									<c:set var="imageurls" value="${fn:replace(obj.imageurl, '\', '/')}"/>
									<c:set var="simageurl" value="${fn:split(imageurls, '.')[0]}" />
									<dt style="cursor: pointer; background-image:url(/${fn:split(fn:replace(obj.imageurl, '\\', '/'), '.')[0]}_210_100.jpg);" class="file-back">
										 <span class="spanImg" onclick="javascript:viewAttchImage('${fn:replace(obj.imageurl, '\\', '/')}');"></span>
									</dt>
								</dl>
							</c:forEach>
						</div>
					</div>
					<div class="apply-form-item apply-form-item-upload">
						<input id="archName11" name="archName11" value="其他" type="hidden">
						<h2 class="form-tit">其他
							<input id="isrequflag11" name="isrequflag11" value="0" type="hidden">
						</h2>
						<div class="form-box" id="displayAttch11">
							<input id="existsImgsSize11" name="existsImgsSize11" value="0" type="hidden">
							<c:forEach items="${s11}" var="obj" varStatus="status">
								<dl id="imagedl_${obj.id}" class="file-item">
									<c:set var="imageurls" value="${fn:replace(obj.imageurl, '\', '/')}"/>
									<c:set var="simageurl" value="${fn:split(imageurls, '.')[0]}" />
									<dt style="cursor: pointer; background-image:url(/${fn:split(fn:replace(obj.imageurl, '\\', '/'), '.')[0]}_210_100.jpg);" class="file-back">
										 <span class="spanImg" onclick="javascript:viewAttchImage('${fn:replace(obj.imageurl, '\\', '/')}');"></span>
									</dt>
								</dl>
							</c:forEach>
						</div>
					</div>
				</div>
		</div>
	</div>
</div>

<!--页尾导航-->
<jsp:include page="/common/front/jquerylibs.jsp" />

<script type="text/javascript">
$(document).ready(function() {
	$(".two").hide();
	$(".three").hide();
	$(".four").hide();
	
	$(".apply-step-item").live("click", function() {
		$(this).addClass('apply-step-item-current');
		$(this).siblings().removeClass('apply-step-item-current');
		
		var id=$(this).attr("id");
		$("."+id).show();
		$("."+id).siblings().hide();
		
		$(".form-action").show();
	}); 
});

function viewAttchImage(path) {
	window.open("/"+path);
}

</script>

</body>
</html>