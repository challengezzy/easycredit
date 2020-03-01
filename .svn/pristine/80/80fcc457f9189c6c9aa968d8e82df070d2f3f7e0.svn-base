 
	//判断是否是
	var readonlyflag = "03";
	//展开隐藏
	var marrsign = "";
	if (marrsign == '29' || marrsign == '28') {
		$("#spouse-tr").show();//展开配偶信息
	} else {
		$("#spouse-tr").hide();//展开配偶信息
	}
	//如果是小贷客户，则不允许修改
	if (readonlyflag == "01") {
		$("#gender").val("");
		$("#marrsign").val("");
		$("#educsign").val("");
		$("#contactAddrFlag").val("");
		$("#isSameAddr").val("");
		$("#familyAddrFlag").val("");

		$("#gender").attr("disabled", true);
		$("#marrsign").attr("disabled", true);
		$("#educsign").attr("disabled", true);
		$("#contactAddrFlag").attr("disabled", true);
		$("#isSameAddr").attr("disabled", true);
		$("#familyAddrFlag").attr("disabled", true);

		$("#gender1").val("");
		$("#marrsign1").val("");
		$("#educsign1").val("");
		$("#contactAddrFlag1").val("");
		$("#isSameAddr1").val("");
		$("#familyAddrFlag1").val("");

		$("#custName").attr("readonly", true);
		$("#paperId").attr("readonly", true);
		$("#busiYears").attr("readonly", true);
		$("#childNum").attr("readonly", true);
		$("#qqNo").attr("readonly", true);
		$("#weixinNo").attr("readonly", true);
		$("#email").attr("readonly", true);
		$("#mobilePhone").attr("readonly", true);
		$("#telephone").attr("readonly", true);
		$("#localHouseNum").attr("readonly", true);
		$("#otherHouseNum").attr("readonly", true);
		$("#inhabaddr").attr("readonly", true);
		$("#regiSeat").attr("readonly", true);
		$("#familyName").attr("readonly", true);
		$("#familyPaperId").attr("readonly", true);
		$("#familyMobilePhone").attr("readonly", true);
		$("#familyQqNo").attr("readonly", true);
		$("#familyWeixinno").attr("readonly", true);
		$("#familyEmail").attr("readonly", true);
		$("#familyRegiSeat").attr("readonly", true);
	} else if (readonlyflag == "03") {
		$("#custName").val("");
		$("#paperId").val("");
		$("#busiYears").val("");
		$("#childNum").val("");
		$("#qqNo").val("");
		$("#weixinNo").val("");
		$("#email").val("");
		$("#mobilePhone").val("");
		$("#telephone").val("");
		$("#localHouseNum").val("");
		$("#otherHouseNum").val("");
		$("#inhabaddr").val("");
		$("#regiSeat").val("");
		$("#familyName").val("");
		$("#familyPaperId").val("");
		$("#familyMobilePhone").val("");
		$("#familyQqNo").val("");
		$("#familyWeixinno").val("");
		$("#familyEmail").val("");
		$("#familyRegiSeat").val("");
		$("#gender").val("1");
		$("#marrsign").val("");
		$("#educsign").val("");
		$("#contactAddrFlag").val("");
		$("#isSameAddr").val("1");
		$("#familyAddrFlag").val("");
	} else {
		var genderstr = "";
		if (genderstr == "") {
			$("#gender").val("1");
		} else {
			$("#gender").val(genderstr);
		}
		$("#marrsign").val("");
		$("#educsign").val("");
		$("#contactAddrFlag").val("");
		var isSameAddr = "";
		if (isSameAddr == "") {
			$("#isSameAddr").val("1");
		} else {
			$("#isSameAddr").val(isSameAddr);
		}
		$("#familyAddrFlag").val("");
	}
	//订单表该项不为null 设置不能修改
	if ("" != '') {
		$("#custName").attr("readonly", true);
		$("#paperId").attr("readonly", true);
	}
 
function checkCustName(dataStr) {//custInfo.custName
	var custName = $("input[name='custName']").val();
	custName = $.trim(custName);
	if (!custName) {
		$("#custNameError").addClass("err");
		$("#custNameError").html("申请姓名不能为空");
		$("#paperIdError").html("");
		$("#paperIdError").removeClass("err");
		return false;
	}
	if (custName.length > 10) {
		$("#custNameError").html("申请人姓名长度不大于10位");
		$("#custNameError").addClass("err");
		$("#paperIdError").removeClass("err");
		$("#paperIdError").html("");
		return false;
	}
	$("#custNameError").html("");
	$("#custNameError").removeClass("err");
	var idCardNo = $("input[name='paperId']").val();
	idCardNo = $.trim(idCardNo);
	if (idCardNo.length != 0) {
		checkIdCardNo(dataStr);
	}
	return true;
}

function checkIdCardNo(dataStr) {//身份证号
	var idCardNo = $("input[name='paperId']").val();
	var paperKind = $("input[name='paperKind']").val();
	var custName = $("input[name='custName']").val();
	//先校验用户名是否填写，如果没填，提示先填写客户名称
	custName = $.trim(custName);
	if (custName.length == 0) {
		$("#paperIdError").html("请先填写申请人姓名");
		$("#paperIdError").addClass("err");
		return false;
	}
	if (!idCardNo) {
		$("#paperIdError").html("身份证号不能为空");
		$("#paperIdError").addClass("err");
		return false;
	}
	var cardNoInfo = getIdCardInfo(idCardNo);
	if (!cardNoInfo.isTrue) {
		$("#paperIdError").html("请填写正确的身份证号");
		$("#paperIdError").addClass("err");
		return cardNoInfo.isTrue;
	}
	//性别为必填写项，根据身份证号自动带出，且不可编辑
	if (cardNoInfo.isMale) {
		$("select[name='gender']").val(1);
		$("#gender1").val("1");
	} else {
		$("select[name='gender']").val(2);
		$("#gender1").val("2");
	}
	$("#paperIdError").html("");
	$("#paperIdError").removeClass("err");
	//生日
	var birtdate = cardNoInfo.year + "-" + cardNoInfo.month + "-"
			+ cardNoInfo.day;
	$("input[name='birtdateEx']").val(birtdate);
	//调用后台服务接口查询客户信息
	var msgCode = "00";
	if (cardNoInfo.isTrue && dataStr == "0") {
	    var url = '/ifs-fsp-fe/getLoanCustData?paperId=' + idCardNo + '&paperKind=' + paperKind + '&custName=' + custName + '&now_timestamp=' + new Date();
	    url = encodeURI(url);
	    $.ajax({
	        type: "get",
	        url: url,
	        dataType: "json",
	        success: function(data) {
	            $.each(data,
	            function(idx, item) {
	                if (idx == "msgCode") {
	                    msgCode = item;
	                }
	            });
	            $.each(data,
	            function(idx, item) {
	                if (msgCode == "02") {
	                    $("#paperIdError").html("身份证号同申请人姓名不匹配,请重新填写");
	                    $("#paperIdError").addClass("err");
	                    return false;
	                } else if (msgCode == "05") {
	                    $("#paperIdError").html("该申请人属于其他代理商，不能为其申请！");
	                    $("#paperIdError").addClass("err");
	                    $("#custName").val("");
	                    $("#paperId").val("");
	                    return false;
	                } else if (msgCode == "04") {
	                    $("#paperIdError").html("系统校验异常");
	                    $("#paperIdError").addClass("err");
	                    $("#custName").val("");
	                    $("#paperId").val("");
	                    return false;
	                } else if (msgCode == "01") {
	                    $("#paperIdError").html("");
	                    $("#paperIdError").removeClass("err");
	                    if (idx == "custInfo") {
	                        $.each(item,
	                        function(idx1, item1) {
	                            //下拉框disabled
	                            if (idx1 == "gender" || idx1 == "marrsign" || idx1 == "isSameAddr" || idx1 == "contactAddrFlag" || idx1 == "educsign") {
	                                $("#" + idx1).val(item1);
	                                $("#" + idx1 + "1").val(item1);
	                                $("#" + idx1).attr("disabled", true);
	                                if (idx1 == "marrsign") {
	                                    if (item1 == '29' || item1 == '28') {
	                                        $("#spouse-tr").show(); //展开配偶信息
	                                    } else {
	                                        $("#spouse-tr").hide(); //展开配偶信息
	                                    }
	                                }
	                            } else {
	                                $("#" + idx1).val(item1);
	                                $("#" + idx1).attr("readonly", true);
	                            }
	                        });
	                    }

	                    if (idx == "custFamily") {
	                        $.each(item,
	                        function(idx1, item1) {
	                            if (idx1 == "familyAddrFlag") {
	                                $("#" + idx1).val(item1);
	                                $("#" + idx1).attr("disabled", true);
	                            } else {
	                                $("#" + idx1).val(item1);
	                                $("#" + idx1).attr("readonly", true);
	                            }
	                        });
	                    }
	                } else if (msgCode == "00") {
	                    $("#paperIdError").html("");
	                    $("#paperIdError").removeClass("err");
	                    if (idx == "custInfo") {
	                        $.each(item,
	                        function(idx1, item1) {
	                            if (item1 != "") {
	                                if (idx1 == "gender" && idx1 == "marrsign" && idx1 == "isSameAddr" && idx1 == "contactAddrFlag" && idx1 == "educsign") {
	                                    $("#" + idx1).val(item1);
	                                    $("#" + idx1 + "1").val(item1);
	                                    if (idx1 == "marrsign") {
	                                        if (item1 == '29' || item1 == '28') {
	                                            $("#spouse-tr").show(); //展开配偶信息
	                                        } else {
	                                            $("#spouse-tr").hide(); //展开配偶信息
	                                        }
	                                    }
	                                } else {
	                                    $("#" + idx1).val(item1);
	                                }
	                            }
	                        });
	                    }
	                    if (idx == "custFamily") {
	                        $.each(item,
	                        function(idx1, item1) {
	                            if (item1 != "") {
	                                $("#" + idx1).val(item1);
	                            }
	                        });
	                    }
	                } else {
	                    $("#paperIdError").html("");
	                    $("#paperIdError").removeClass("err");
	                    return;
	                }
	            });
	            $("#paperId").focus(false);
	            $("#custName").focus(false);
	        }
	    });
	}
	return cardNoInfo.isTrue;
}
/*http://leeyee.github.io/blog/2013/07/31/javascript-idcard-validate/*/
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
		var birthday = new Date(year, parseFloat(month) - 1,
				parseFloat(day));
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
function checkMarrsign() {//婚姻状况
	var marrsign = $("select[name='marrsign']").val();
	if (marrsign == '29' || marrsign == '28') {
		$("#spouse-tr").show();//展开配偶信息
	} else {
		$("#familyEmail").val("");//
		$("#familyWeixinno").val("");//
		$("#familyQqNo").val("");//
		$("#familyAddrFlag").val("");//
		$("#familyRegiSeat").val("");//
		$("#familyMobilePhone").val("");//
		$("#familyPaperId").val("");//
		$("#familyName").val("");//
		$("#familybirtdateEx").val("");
		$("#spouse-tr").hide();//展开配偶信息
	}
	return true;
}
function checkEmpYears() {//从业年限
	var empYears = $("input[name='busiYears']").val();
	empYears = $.trim(empYears);
	if (empYears.length == 0) {
		$("#busiYearsError").html("从业年限不能为空");
		$("#busiYearsError").addClass("err");
		return false;
	}
	var regex = /^[0-9]*$/;
	if (!regex.test(empYears)) {
		$("#busiYearsError").html("从业年限必须为数值");
		$("#busiYearsError").addClass("err");
		return false;
	}
	$("#busiYearsError").html("");
	$("#busiYearsError").removeClass("err");
	return true;
}
function checkChildNum() {//子女人数
	var childNum = $("input[name='childNum']").val();
	childNum = $.trim(childNum);
	if (!childNum) {
		$("#childNumError").html("子女人数不能为空");
		$("#childNumError").addClass("err");
		return false;
	}
	var regex = /^[0-9]*$/;
	if (!regex.test(childNum)) {
		$("#childNumError").html("子女人数为数值");
		$("#childNumError").addClass("err");
		return false;
	}
	$("#childNumError").html("");
	$("#childNumError").removeClass("err");
	return true;
}

function checkEmail() {//电子邮件
	var email = $("input[name='email']").val();
	email = $.trim(email);
	if (email.length == 0) {//可以为空
		$("#emailError").html("");
		return true;
	}
	var regex = /^([-_A-Za-z0-9\.]+)@([_A-Za-z0-9]+\.)+[A-Za-z0-9]{2,3}$/;
	if (!regex.test(email)) {
		$("#emailError").html("请输入正确的电子邮件");
		$("#emailError").addClass("err");
		return false;
	}
	$("#emailError").html("");
	$("#emailError").removeClass("err");
	return true;
}
function checkMobilePhone() {//手机号
	var mobilePhone = $("input[name='mobilePhone']").val();
	mobilePhone = $.trim(mobilePhone);
	if (mobilePhone.length == 0) {
		$("#mobilePhoneError").html("手机号不能为空");
		$("#mobilePhoneError").addClass("err");
		return false;
	}
	var regex = /^1[1|2|3|4|5|6|7|8|9][0-9]\d{8}$/;
	if (!regex.test(mobilePhone)) {
		$("#mobilePhoneError").html("请输入正确的手机号");
		$("#mobilePhoneError").addClass("err");
		return false;
	}
	$("#mobilePhoneError").html("");
	$("#mobilePhoneError").removeClass("err");
	return true;
}
function checkTelephone() {//办公电话
	var telephone = $("input[name='telephone']").val();
	telephone = $.trim(telephone);
	if (telephone.length == 0) {
		$("#telephoneError").html("办公电话不能为空");
		$("#telephoneError").addClass("err");
		return false;
	}
	var re = /[\u4E00-\u9FA5]/g;
	if (re.test(telephone)) {
		$("#telephoneError").html("办公电话不能为汉字");
		$("#telephoneError").addClass("err");
		return false;
	}
	$("#telephoneError").html("");
	$("#telephoneError").removeClass("err");
	return true;
}
function checkAddress() {//居住地址
	var address = $("input[name='inhabaddr']").val();
	address = $.trim(address);
	if (address.length == 0) {
		$("#inhabaddrError").html("居住地址不能为空");
		$("#inhabaddrError").addClass("err");
		return false;
	}
	$("#inhabaddrError").html("");
	$("#inhabaddrError").removeClass("err");
	return true;
}
function checkSegiSeat() {//户籍地址
	var regiSeat = $("input[name='regiSeat']").val();
	regiSeat = $.trim(regiSeat);
	if (regiSeat.length == 0) {
		$("#regiSeatError").html("户籍地址不能为空");
		$("#regiSeatError").addClass("err");
		return false;
	}
	$("#regiSeatError").html("");
	$("#regiSeatError").removeClass("err");
	return true;
}
function checkLocalHouseNum() {//拥有经营地的房产数量
	var localHouseNum = $("input[name='localHouseNum']").val();
	localHouseNum = $.trim(localHouseNum);
	if (localHouseNum.length == 0) {
		$("#localHouseNumError").html("拥有经营地的房产数量不能为空");
		$("#localHouseNumError").addClass("err");
		return false;
	}
	var regex = /^[0-9]*$/;
	if (!regex.test(localHouseNum)) {
		$("#localHouseNumError").html("请输入正确的经营地房产数量");
		$("#localHouseNumError").addClass("err");
		return false;
	}
	$("#localHouseNumError").html("");
	$("#localHouseNumError").removeClass("err");
	return true;
}
function checkOtherHouseNum() {//拥有非经营地的房产数量
	var otherHouseNum = $("input[name='otherHouseNum']").val();
	otherHouseNum = $.trim(otherHouseNum);
	if (otherHouseNum.length == 0) {
		$("#otherHouseNumError").html("拥有非经营地的房产数量不能为空");
		$("#otherHouseNumError").addClass("err");
		return false;
	}
	var regex = /^[0-9]*$/;
	if (!regex.test(otherHouseNum)) {
		$("#otherHouseNumError").html("请输入正确的拥有非经营地的房产数量");
		$("#otherHouseNumError").addClass("err");
		return false;
	}
	$("#otherHouseNumError").html("");
	$("#otherHouseNumError").removeClass("err");
	return true;
}
function checkContactAddress() {//联系地址
	var contactAddress = $("select[name='contactAddrFlag']").val();
	contactAddress = $.trim(contactAddress);
	if (contactAddress.length == 0) {
		$("#contactAddrFlagError").html("联系地址不能为空");
		$("#contactAddrFlagError").addClass("err");
		return false;
	}
	$("#contactAddrFlagError").html("");
	$("#contactAddrFlagError").removeClass("err");
	return true;
}
function checkSpouseInfo() {//检测配偶信息
	var marrsign = $("select[name='marrsign']").val();
	if (marrsign != '29' && marrsign != '28') {
		return true;
	}
	if (!checkFamilyName()) {
		return false;
	}
	if (!checkFamilyPaperId()) {
		return false;
	}
	if (!checkFamilyMobilePhone()) {
		return false;
	}
	var familyAddrFlag = $("select[name='familyAddrFlag']").val();
	if (familyAddrFlag == "") {
		$("#familyAddrFlagError").html("请选择配偶联系地址");
		$("#familyAddrFlagError").addClass("err");
		return false;
	}
	$("#familyAddrFlagError").html("");
	$("#familyAddrFlagError").removeClass("err");
	return true;
}
function checkFamilyName() {//配偶姓名
	var familyName = $("input[name='familyName']").val();
	familyName = $.trim(familyName);
	if (familyName.length == 0) {
		$("#familyNameError").html("配偶姓名不能为空");
		$("#familyNameError").addClass("err");
		return false;
	}
	if (familyName.length > 10) {
		$("#familyNameError").html("配偶姓名不能大于10个汉字");
		$("#familyNameError").addClass("err");
		return false;
	}
	$("#familyNameError").html("");
	$("#familyNameError").removeClass("err");
	return true;
}
function checkFamilyPaperId() {//配偶身份证号
	var familyPaperId = $("input[name='familyPaperId']").val();
	familyPaperId = $.trim(familyPaperId);
	if (familyPaperId.length == 0) {
		$("#familyPaperIdError").html("配偶身份证号不能为空");
		$("#familyPaperIdError").addClass("err");
		return false;
	}
	var familyPaperIdInfo = getIdCardInfo(familyPaperId);
	if (!familyPaperIdInfo.isTrue) {
		$("#familyPaperIdError").html("配偶身份证号填写错误");
		$("#familyPaperIdError").addClass("err");
		return false;
	}
	//生日
	var familybirtdate = familyPaperIdInfo.year + "-"
			+ familyPaperIdInfo.month + "-" + familyPaperIdInfo.day;
	$("input[name='familybirtdateEx']").val(familybirtdate);
	$("#familyPaperIdError").html("");
	$("#familyPaperIdError").removeClass("err");
	return true;
}
function checkFamilyMobilePhone() {//配偶手机号
	var familyMobilePhone = $("input[name='familyMobilePhone']").val();
	familyMobilePhone = $.trim(familyMobilePhone);
	if (familyMobilePhone.length == 0) {
		$("#familyMobilePhoneError").html("配偶手机号不能为空");
		$("#familyMobilePhoneError").addClass("err");
		return false;
	}
	var regex = /^1[1|2|3|4|5|6|7|8|9][0-9]\d{8}$/;
	if (!regex.test(familyMobilePhone)) {
		$("#familyMobilePhoneError").html("请输入正确的配偶手机号");
		$("#familyMobilePhoneError").addClass("err");
		return false;
	}
	$("#familyMobilePhoneError").html("");
	$("#familyMobilePhoneError").removeClass("err");
	return true;
}

function checkFamilyEmail() {//配偶电子邮件
	var familyEmail = $("input[name='familyEmail']").val();
	familyEmail = $.trim(familyEmail);
	var regex = /^([-_A-Za-z0-9\.]+)@([_A-Za-z0-9]+\.)+[A-Za-z0-9]{2,3}$/;
	if (!regex.test(familyEmail)) {
		$("#familyEmailError").html("请输入配偶正确的电子邮件");
		$("#familyEmailError").addClass("err");
		return false;
	}
	$("#familyEmailError").html("");
	$("#familyEmailError").removeClass("err");
	return true;
}

function checkFamilySegiSeat() {
	var familyRegiSeat = $("input[name='familyRegiSeat']").val();
	familyRegiSeat = $.trim(familyRegiSeat);
	if (familyRegiSeat.length == 0) {
		$("#familyRegiSeatError").html("配偶户籍地址不能为空");
		$("#familyRegiSeatError").addClass("err");
		return false;
	}
	$("#familyRegiSeatError").html("");
	$("#familyRegiSeatError").removeClass("err");
	return true;
}
function checkForm() {//检查表单
	if (!checkCustName("1")) {
		return false;
	}
	if (!checkIdCardNo("1")) {
		return false;
	}
	var marrsign = $("select[name='marrsign']").val();
	if (marrsign == "") {
		$("#marrsignError").html("请选择婚姻状况");
		$("#marrsignError").addClass("err");
		return false;
	}
	$("#marrsignError").html("");
	$("#marrsignError").removeClass("err");
	var educsign = $("select[name='educsign']").val();
	if (educsign == "") {
		$("#educsignError").html("请选择受教育程度");
		$("#educsignError").addClass("err");
		return false;
	}
	$("#educsignError").html("");
	$("#educsignError").removeClass("err");
	if (!checkSpouseInfo()) {
		return false;
	}
	if (!checkEmpYears()) {
		return false;
	}
	if (!checkChildNum()) {
		return false;
	}
	if (!checkEmail()) {
		return false;
	}
	if (!checkMobilePhone()) {
		return false;
	}
	if (!checkTelephone()) {
		return false;
	}
	if (!checkLocalHouseNum()) {
		return false;
	}
	if (!checkOtherHouseNum()) {
		return false;
	}
	if (!checkAddress()) {
		return false;
	}
	if (!checkSegiSeat()) {
		return false;
	}
	if (!checkContactAddress()) {
		return false;
	}
	for (i = 0; i < 4; i++) {
		if (!checkNum(i)) {
			return false;
		}
	}
	return true;
}
function submitNextStep() {
	$("#custInfoForm").attr("action",
			"/ifs-fsp-fe/saveCustInfo?nextStep=yes");
	$("#custInfoForm").submit();
}
//校验配偶
function checkNum(flag) {
	var regex = /[\u4E00-\u9FA5]/g;
	var num = '';
	if (flag == '0') {
		num = $.trim($("#qqNo").val());

		if (regex.test(num)) {
			$("#qqNoError").html("QQ号不能为汉字");
			$("#qqNoError").addClass("err");
			return false;
		}
		$("#qqNoError").html("");
		$("#qqNoError").removeClass("err");

	} else if (flag == '1') {
		num = $.trim($("#weixinNo").val());

		if (regex.test(num)) {
			$("#weixinNoError").html("微信号不能为汉字");
			$("#weixinNoError").addClass("err");
			return false;
		}
		$("#weixinNoError").html("");
		$("#weixinNoError").removeClass("err");

	} else if (flag == '2') {
		num = $.trim($("#familyQqNo").val());
		if (regex.test(num)) {
			$("#familyQqNoError").html("QQ号不能为汉字");
			$("#familyQqNoError").addClass("err");
			return false;
		}
		$("#familyQqNoError").html("");
		$("#familyQqNoError").removeClass("err");
	} else if (flag == '3') {
		num = $.trim($("#familyWeixinno").val());
		if (regex.test(num)) {
			$("#familyWeixinnoError").html("微信号不能为汉字");
			$("#familyWeixinnoError").addClass("err");
			return false;
		}
		$("#familyWeixinnoError").html("");
		$("#familyWeixinnoError").removeClass("err");
	}
	return true;
}
 