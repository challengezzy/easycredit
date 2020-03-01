/**
 * Array.remove(dx) 			删除数组元素
 * trim						trim
 * replaceAll				replaceAll
- str2Date 					字符串到日期格式转换
- fillJsonToPageValue		用JSON对象填充指定form或div或li包含的对象值
- copyJsonLProperties 		将orig对象的值拷贝到desc对象中
- getTargetObject			返回指定一个DIV或FORM范围内的对象
- getCurrentDatetime		返回日期+时间
- getCurrentDate			返回当前日期
- getCurrentTime			返回当前时间
- checkValueIsNull			判断一个值否是为null或""
- parseNullStr2Null			将一个""或null值，转换为null，如果有值，那么返回它自己
- parseNullObject2Null		判断一个对象的值是""或null，转换为null，如果有值
- checkNumberText			只让输入数字的输入框
- checkCharText             只让输入字符的输入框
- checkNumCharText			限制文本框里输入的必须是数字和字符的组合
- fucCheckNUM				检查是否为数字
- isMoney					判断是否是money
- isMobile					是否是手机
- isEmail                   判断是否是EMAIL
- isDate					日期验证
- formatCurrency			将数值四舍五入(保留2位小数)后格式化成金额形式
- formatCurrencyTenThou		将数值四舍五入(保留1位小数)后格式化成金额形式
- checkAuthCardExpiredDate 	信用卡MMYY验证
- getWindowScroll	
- getWindowSize				Returns array with page width, height and window width, height
- getParameterMap			将指定form中的全部数据通过组装为Map
- setFormAction				
- resetPageAllInputMsg		重置页面的输入框信息
- showMessage2Status		在Window的status栏显示信息
- _s						在Window的status栏显示信息 简化版
- _a						alert简化版
- registerInputComponent	注册页面中的控件，指定限制输入的字符串
- getLoadPageUrlSuffix		返回加载后URL的添加字符串：防止页面加载时调用缓存
- parsePAN					解析机器读取的PAN号
- checkSFZH					检验身份证号码(对18位身份证进行合法性验证)
- printJsonObject			将JSON对象用alert打印出来
- _pj                        printJsonObject简化版
- passwordStrong			密码强度检查
- isRepetitive				判断是否是重复字符
- isOrder					判断是否是顺序序列
- parseDate					将String类型解析为Date类型
- formatDate				将Date/String类型,解析为String类型
- WaitTime					休眠
- checkFunErrIsExclude		检查DWR回调的错误函数方法中，是否排除了当前FUNCTION
- openAjaxDialog			读取服务端页面，并且开启一个DIV窗口
- closeDialog				关闭DIV窗口
- openDialog				读取本地的DIV层，并且开启一个DIV窗口
- queryResult2FlexgridJson	转换Json对象到flexgird数据对象
- submitForm				提交表单
- genFormData				获取表单下所有的值，组成JSON
- addSelectItem			添加Select框的值
- removeSelectItem		删除Select框的值
- birthDayCtrl				年月日控件
- birthDayInitCtrl			年月日初始化控件
- birthDayValueCtrl		获取年月日控件值
- importJS					在JS中import其他JS
*/

/*
*  方法:Array.remove(dx)
*  功能:删除数组元素.
*  参数:dx删除元素的下标.
*  返回:在原数组上修改数组

Array.prototype.remove=function(dx){
  if(isNaN(dx)||dx>this.length){return false;}
  for(var i=0,n=0;i<this.length;i++)
  {
      if(this[i]!=this[dx])
      {
          this[n++]=this[i];
      }
  }
  this.length-=1;
}*/

//trim
/*
sample:var textStr = "   hello workd   ";
alert("(" + textStr.trim() + ")");	
*/
String.prototype.trim = function()
{
	var reExtraSpace = /^\s*(.*?)\s+$/;
	return this.replace(reExtraSpace,"$1");
}

//replaceAll
String.prototype.replaceAll = function(s1,s2){   
	return this.replace(new RegExp(s1,"gm"),s2);    
} 

//字符串到日期格式转换
//注：比如传入的日期为2007-12-03,那么会将其转换为
// 2007、11、03，因为JS中，月份的起至为0~11
function str2Date(str) {
	if(checkValueIsNull(str)){
		return;
	}
	var arys = new Array();
	arys = str.split("-");
	var newDate = new Date(arys[0], arys[1] - 1, arys[2]);
	return newDate;
}

//用JSON对象填充指定form或div或li包含的对象值
//该对象如：input/li的id必须与JSON的属性名字相同
//sample:
//fillJsonToPageValue(m_txnResponse,applyEndDiv,'li');
//   将m_txnResponse这个对象的值，填充到applyEndDiv包含的li的具有同属姓名的值中
function fillJsonToPageValue(jsonObject, targetSpace, targetType) {
	if (jsonObject === null) {
		return;
	}
	try {
		$("#" + targetSpace).find(targetType).each(function () {
			var targetId = $(this).attr("id");
			for (var jsonPropertyName in jsonObject) {
				if (targetId == jsonPropertyName) {
					if (jsonObject[jsonPropertyName] === "null" || jsonObject[jsonPropertyName] === null) {
						break;
					}
					if (targetType == "li") {
						$(this).html("" + jsonObject[jsonPropertyName] + "");
					} else {
						if (targetType == "input") {
							$(this).attr("value", jsonObject[jsonPropertyName]);
						} else {
							_a("[fillJsonToPageValue]this targetType:" + targetType + " no support");
							return;
						}
					}
				}
			}
		});
	}
	catch (e) {
		showMessage2Status("Exception: " + e);
	}
}

//将orig对象的值拷贝到desc对象中
function copyJsonLProperties(desc, orig) {
	for (var descPropertyName in desc) {
		for (var origPropertyName in orig) {
			if (descPropertyName == origPropertyName) {
				desc[descPropertyName] = orig[origPropertyName];
				break;
			}
		}
	}
	return desc;
}

//返回指定一个DIV或FORM范围内的对象
//Sample:
//getTargetObject('m_authRepeal_targetForm','input','PAN');
function getTargetObject(targetSpace, targetType, targetId) {
	var targetIdTmp;
	var m_getTargetObject = null;
	$("#" + targetSpace).find(targetType).each(function () {
		targetIdTmp = $(this).attr("id");
		if (targetIdTmp == targetId) {
			m_getTargetObject = $(this);
			return;
		}
	});
	return m_getTargetObject;
}

//返回日期+时间
function getCurrentDatetime() {
	return getCurrentDate() + " " + getCurrentTime();
}

//返回当前日期
function getCurrentDate() {
	var d, s = "";           // 声明变量。
	d = new Date();                           // 创建 Date 对象。
	s += d.getYear() + "-";                         // 获取年份。
	s += (d.getMonth() + 1);            // 获取月份。
	s += d.getDate();                   // 获取日。	
	return (s);                                // 返回日期。
}

//返回当前时间
function getCurrentTime() {
	var d, s = "";           // 声明变量。
	d = new Date();                           	 // 创建 Date 对象。
	s += d.getHours() + ":";                   	 // 获取小时。	
	s += d.getMinutes() + ":";                   // 获取分钟。	
	s += d.getSeconds();                   		 // 获取秒。	
	return (s);                               	 // 返回日期。
}

//返回当前时间
function getCurrentTime2() {
	var d, s = "";           // 声明变量。
	d = new Date();                           	 // 创建 Date 对象。
	s += d.getHours() + "";                   	 // 获取小时。	
	s += d.getMinutes() + "";                   // 获取分钟。	
	s += d.getSeconds();                   		 // 获取秒。	
	return (s);                               	 // 返回日期。
}

//判断一个值否是为null或""
function checkValueIsNull(value) {
	return ((value==undefined)||(value === null) || (value === "") || (value === "undefined"));
}

//将一个""或null值，转换为null，如果有值，那么返回它自己
function parseNullStr2Null(targetValue) {
	if (checkValueIsNull(targetValue)) {
		return null;
	} else {
		return targetValue;
	}
}

//判断一个对象的值是""或null，转换为null，如果有值
function parseNullObject2Null(targetObject) {
	for (var jsonPropertyName in targetObject) {
		targetObject[jsonPropertyName] = parseNullStr2Null(targetObject[jsonPropertyName]);
	}
}

//只让输入数字的输入框
//onKeypress="checkNumberText()"
function checkNumberText() {
	if (!(((window.event.keyCode >= 48) && (window.event.keyCode <= 57)) || (window.event.keyCode == 13) || (window.event.keyCode == 46) || (window.event.keyCode == 45))) {
		window.event.keyCode = 0;
	}
	document.onpaste=function(){return   false;}
}

//只让输入字符的输入框
function checkCharText(){
	if(window.event.keyCode>=96 && window.event.keyCode<=105){
		return true;
	}else{
		window.event.keyCode = 0;
		return false;
	}
}

//限制文本框里输入的必须是数字和字符的组合
function checkNumCharText() {
	if (((window.event.keyCode >= 48) && (window.event.keyCode <= 57))
		|| ((window.event.keyCode >= 97) && (window.event.keyCode <= 122))
		|| ((window.event.keyCode >= 65) && (window.event.keyCode <= 90))) {
		return true;
	}else{
		window.event.keyCode = 0;
		return false;
	}
}

//函数名：fucCheckNUM
//功能介绍：检查是否为数字
//参数说明：要检查的数字
//返回值：true为是数字，false为不是数字
function fucCheckNUM(NUM) {
	var i, j, strTemp;
	strTemp = "0123456789";
	if (NUM.length === 0) {
		return 0;
	}
	for (i = 0; i < NUM.length; i++) {
		j = strTemp.indexOf(NUM.charAt(i));
		if (j == -1) {
  //说明有字符不是数字
			return false;
		}
	}
 //说明是数字
	return true;
}

//判断是否是money
function isMoney(str) {
	if(checkValueIsNull(str)){
		return true;
	}

	if(str.split('.').length -1 > 1){
		return false;
	}
	if(str == '.'){
		return false;
	}
	if(str.indexOf('.') == 0 || str.indexOf('.') == str.length-1){
		return false;
	}
	
	var strRef = "1234567890.";
	for (var i = 0; i < str.length; i++) {
		tempChar = str.substring(i, i + 1);
		if (strRef.indexOf(tempChar, 0) == -1) {	
			return false;
		} else {
			tempLen = str.indexOf(".");
			if (tempLen != -1) {
				strLen = str.substring(tempLen + 1, str.length);
				if (strLen.length > 2) {
					return false;
				}
			}
		}
	}
	return true;
}

//日期验证
//验证"YYYY-MM-DD"格式的日期输入.包括日期实际性验证
function isDate(theDate){
  var reg = /^\d{4}-((0{0,1}[1-9]{1})|(1[0-2]{1}))-((0{0,1}[1-9]{1})|([1-2]{1}[0-9]{1})|(3[0-1]{1}))$/;  
  var result=true;
  if(!reg.test(theDate))
    result = false;
  else{
    var arr_hd=theDate.split("-");
    var dateTmp;
    dateTmp= new Date(arr_hd[0],parseFloat(arr_hd[1])-1,parseFloat(arr_hd[2]));
    if(dateTmp.getFullYear()!=parseFloat(arr_hd[0])
       || dateTmp.getMonth()!=parseFloat(arr_hd[1]) -1 
        || dateTmp.getDate()!=parseFloat(arr_hd[2])){
        result = false
    }
  }
  return result;
}

function isMobile(mobile){
	
//    var reg0=/^13\d{5,9}$/;   //130--139。至少7位
//    var reg1=/^153\d{4,8}$/;  //联通153。至少7位
//    var reg2=/^159\d{4,8}$/;  //移动159。至少7位
    var regex = /^0?(13[0-9]|15[012356789]|18[0236789]|14[57])[0-9]{8}$/;
    var flag=false;
    if (regex.test(mobile))flag=true;
//    if (reg1.test(mobile))flag=true;
//    if (reg2.test(mobile))flag=true;
    return flag;
}

function isEmail(mailValue){
//    var pattern = /^([a-zA-Z0-9._-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/;
	var pattern = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
    var flag = pattern.test(mailValue);
    return flag;
}


/**
 * 将数值四舍五入(保留2位小数)后格式化成金额形式
 *
 * @param num 数值(Number或者String)
 * @return 金额格式的字符串,如'1,234,567.45'
 * @type String
 */
function formatCurrency(num) {
    num = num.toString().replace(/\$|\,/g,'');
    if(isNaN(num))
    num = "0";
    sign = (num == (num = Math.abs(num)));
    num = Math.floor(num*100+0.50000000001);
    cents = num%100;
    num = Math.floor(num/100).toString();
    if(cents<10)
    cents = "0" + cents;
    for (var i = 0; i < Math.floor((num.length-(1+i))/3); i++)
    num = num.substring(0,num.length-(4*i+3))+','+
    num.substring(num.length-(4*i+3));
    return (((sign)?'':'-') + num + '.' + cents);
}

/**
 * 将数值四舍五入(保留1位小数)后格式化成金额形式
 *
 * @param num 数值(Number或者String)
 * @return 金额格式的字符串,如'1,234,567.4'
 * @type String
 */
function formatCurrencyTenThou(num) {
    num = num.toString().replace(/\$|\,/g,'');
    if(isNaN(num))
    num = "0";
    sign = (num == (num = Math.abs(num)));
    num = Math.floor(num*10+0.50000000001);
    cents = num%10;
    num = Math.floor(num/10).toString();
    for (var i = 0; i < Math.floor((num.length-(1+i))/3); i++)
    num = num.substring(0,num.length-(4*i+3))+','+
    num.substring(num.length-(4*i+3));
    return (((sign)?'':'-') + num + '.' + cents);
}

//信用卡MMYY验证
function checkAuthCardExpiredDate(mmyy){
	return '';
//	if(checkValueIsNull(mmyy) === null){
//		return '有效期不能为空(格式：MMYY)';
//	}
//	if(mmyy.length < 4){
//		return '有效期长度为4位(格式：MMYY)';
//	}
//	
//	var mm = mmyy.substr(0,2);
//	var yy = '20' + mmyy.substr(2,4);	
//	
//	var d = new Date();
//	var s = "";
//
//	if(mm < 0 || mm > 12){
//		//_a((mm < 0) + '|' + (mm > 12) || (yy < d.getYear()) || (yy > 2099));
//		return '月份填写错误(格式：MMYY)';
//	}
//	if(yy < d.getYear() || yy > 2099){
//		return '年份填写错误(格式：MMYY)';
//	}
//	
//	
//	var year = d.getYear();
//	year = (year<1900?(1900+year):year)
//	s = '' + year;
//	if((d.getMonth() + 1) < 10){
//		s = s + '0'+(d.getMonth() + 1);
//	}else{
//		s = s + '' + d.getMonth() + 1;
//	}
//	
//	if(s.length == 5)
//		s = '0' + s;
//	
//	mmyy = '' + yy + mm;
//	
//	_s('mmyy:' + mmyy + ' > s:' + s);
//	
//	if(mmyy < s){
//		return '有效期填写错误，请检查卡片是否过期';
//	}
//
//	return '';
}

function getWindowScroll(){
	var yScroll;

	if (self.pageYOffset) {
		yScroll = self.pageYOffset;
	} else if (document.documentElement && document.documentElement.scrollTop){	 // Explorer 6 Strict
		yScroll = document.documentElement.scrollTop;
	} else if (document.body) {// all other Explorers
		yScroll = document.body.scrollTop;
	}

	arrayPageScroll = new Array('',yScroll) 
	return arrayPageScroll;
}

//
// getPageSize()
// Returns array with page width, height and window width, height
// Core code from - quirksmode.org
// Edit for Firefox by pHaez
//
function getWindowSize(){	
	var xScroll, yScroll;
	
	if (window.innerHeight && window.scrollMaxY) {
		xScroll = document.body.scrollWidth;
		yScroll = window.innerHeight + window.scrollMaxY;
	} else if (document.body.scrollHeight > document.body.offsetHeight){ // all but Explorer Mac
		xScroll = document.body.scrollWidth;
		yScroll = document.body.scrollHeight;
	} else { // Explorer Mac...would also work in Explorer 6 Strict, Mozilla and Safari
		xScroll = document.body.offsetWidth;
		yScroll = document.body.offsetHeight;
	}
	
	var windowWidth, windowHeight;
	if (self.innerHeight) {	// all except Explorer
		windowWidth = self.innerWidth;
		windowHeight = self.innerHeight;
	} else if (document.documentElement && document.documentElement.clientHeight) { // Explorer 6 Strict Mode
		windowWidth = document.documentElement.clientWidth;
		windowHeight = document.documentElement.clientHeight;
	} else if (document.body) { // other Explorers
		windowWidth = document.body.clientWidth;
		windowHeight = document.body.clientHeight;
	}	
	
	// for small pages with total height less then height of the viewport
	if(yScroll < windowHeight){
		pageHeight = windowHeight;
	} else { 
		pageHeight = yScroll;
	}

	// for small pages with total width less then width of the viewport
	if(xScroll < windowWidth){	
		pageWidth = windowWidth;
	} else {
		pageWidth = xScroll;
	}


	arrayPageSize = new Array(pageWidth,pageHeight,windowWidth,windowHeight) 
	return arrayPageSize;
}

//将指定form中的全部数据通过组装为Map
function getParameterMap(form) {
	var p = document.forms[form].elements;
	var map = new Object();
	for (var x = 0; x < p.length; x++) {
		var key = p[x].name;
		var val = p[x].value;

        //Check if this field name is unique.
        //If the field name is repeated more than once
        //add it to the current array.
		var curVal = map[key];
		if (curVal) { // more than one field so append value to array
			curVal[curVal.length] = val;
		} else { // add field and value
			map[key] = [val];
		}
	}
	return map;
}

function setFormAction(form, action, method) {
	if (action) {
		document.forms[form].setAttribute("action", action);
	}
	if (method) {
		document.forms[form].setAttribute("method", method);
	}
	document.forms[form].ec_eti.value = "";
}

//重置页面的输入框信息
//target:包含重置对象的form或div或li的名字
//重置的类型（如：input/li）
//例：resetPageAllInputMsg('applyDiv','input',null);
function resetPageAllInputMsg(targetFrom,targetType , filterList) {
	var isRest = true;

	if(filterList != null){
		filterList=filterList.split(',');
	}
	
	$('#'+targetFrom).find(targetType).each(function () {
		var inputComId = $(this).attr("id");
		isRest = true;
		if (filterList != null) {
			for (var i = 0; i < filterList.length; i++) {
				if (inputComId == filterList[i]) {
					isRest = false;
					break; 
				}
			}
		}
		if (isRest == true) {
			if(targetType == 'input'){
				$(this).attr('value','');
			}else if(targetType == 'li'){
				$(this).html('');
			}
		}
	});
}

//在Window的status栏显示信息
function showMessage2Status(msg){
	if(m_debug == true)
		window.status = '[' + getCurrentTime()+ "] " + msg;
}

//在Window的status栏显示信息 简化版
function _s(msg){
	showMessage2Status(msg);
}

//alert简化版
function _a(msg){
	alert(msg);
}

//注册页面中的控件，指定限制输入的字符串
function registerInputComponent(targetSpace,targetID,checkFunNo){
	var funName = null;
	switch(checkFunNo){
		case 'NUMBER':funName = 'checkNumberText()';break;			//只让输入数字
		case 'NUM_CHAR':funName = 'checkNumCharText()';break;	//只能输入数字和字符
	}
	if(funName == null)
		return;
		
	var targetObject = getTargetObject(targetSpace,'input',targetID);
	
	if(targetObject == null){
		return;
	}
	
	targetObject.keypress(function(){
		_s('Check input type: ' + funName);
		eval(funName);
	});
}

//返回加载后URL的添加字符串：防止页面加载时调用缓存
function getLoadPageUrlSuffix(isMain){
	var urlSuffix = '';
	if(m_pageLoadWhenever == false){
		return urlSuffix;
	}
	
	if(isMain == null){
		isMain = true;
	}
	
	if(isMain == true){
		urlSuffix = '?pageurlsuffixparm=' + getCurrentTime2();
	}else{
		urlSuffix = '&pageurlsuffixparm=' + getCurrentTime2();
	}
	
	return urlSuffix;
}

//检验身份证号码(对18位身份证进行合法性验证)
function checkSFZH(sfzh) {
    var OldID;
    if (sfzh.length == 15) {
       return /^\d{15}$/.test(sfzh);
    } else {
       if (sfzh.length == 18) {
           OldID = sfzh.substring(0, 6) + sfzh.substring(8, sfzh.length - 1);
       } else {
           return false;
       }
    }
    
    sfzh = sfzh.toLowerCase();

    var W = new Array(7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2, 1);
    var A = new Array("1", "0", "x", "9", "8", "7", "6", "5", "4", "3", "2");
    var i, j, S;
    var NewID, ID, strNF;
    NewID = OldID.substring(0, 6) + "19" + OldID.substring(6, OldID.length);
    S = 0;

    for (i = 0; i <= 16; i++) {
       j = NewID.substring(i, i + 1) * W[i];
       S = S + j;
    }

    S = S % 11;
    if (sfzh != NewID + A[S]) {
       return false;
    }

    return true;
}

//将JSON对象用alert打印出来
function printJsonObject(jsonObject,mode){
	var printBuffer = '';
	if(mode == null || mode == 'undefined'){
		mode = 1;
	}
	
	var index = 1;
	var strTmp = null;
	var strLength = 30;
	for (var jsonPropertyName in jsonObject) {
		if(jsonPropertyName != 'toJSONString'){
			if(mode == index){
				strTmp = jsonPropertyName + '='+ jsonObject[jsonPropertyName];
				
				if(strTmp.length < strLength){
					var len = strTmp.length;
					for(var l = 0; l < strLength - len; l++){
						strTmp += ' ';
					}
				}
				
				printBuffer = printBuffer + strTmp +  '\n';
				index = 0;
			}else{
				strTmp = jsonPropertyName + '='+ jsonObject[jsonPropertyName];
				
				if(strTmp.length < strLength){
					var len = strTmp.length;
					for(var l = 0; l < strLength - len; l++){
						strTmp += ' ';
					}
				}
				
				printBuffer = printBuffer + strTmp;
				index++;
			}			
		}
	}
	_a(printBuffer);
}
function _pj(jsonObject,mode){
	if(m_debug == undefined || m_debug == false){
		return;
	}
	printJsonObject(jsonObject,mode);
}

//密码强度检查
function passwordStrongCheck(pwd){
	if(checkValueIsNull(pwd)){
		return -1;
	}
	
	pwd = pwd.trim();
	
	if(pwd.length < 6 || pwd.length > 32){
		return -1;
	}
	
	if(isRepetitive(value)||isOrder(value)||isReverseOrder(value)){			
		return false;		
	}
	
	
}

//判断是否是重复字符
function isRepetitive(value){
	var temp = value.substr(0,1);
	for(var i = 1; i < value.length();i++){
		if(temp != value.substr(i,1)){
			return false;
		} 
	} 
	return true;
}

//判断是否是顺序序列
function isOrder(value){ 				
	for(var i = 1; i < value.length();i++){
		if((parseInt(value.substr(i-1)) + 1) != parseInt(value.substr(i,1))){
			return false;
		} 
	} 
	return true;
}

//判断是否倒序序列
function isReverseOrder(value){
	for(var i = 1; i < value.length();i++){
		if((parseInt(value.substr(i-1)) - 1) != parseInt(value.substr(i,1))){
			return false;
		} 
	} 
	return true;
}

/**//*  
  将String类型解析为Date类型.  
  parseDate('2006-1-1') return new Date(2006,0,1)  
  parseDate(' 2006-1-1 ') return new Date(2006,0,1)  
  parseDate('2006-1-1 15:14:16') return new Date(2006,0,1,15,14,16)  
  parseDate(' 2006-1-1 15:14:16 ') return new Date(2006,0,1,15,14,16);  
  parseDate('2006-1-1 15:14:16.254') return new Date(2006,0,1,15,14,16,254)  
  parseDate(' 2006-1-1 15:14:16.254 ') return new Date(2006,0,1,15,14,16,254)  
  parseDate('不正确的格式') retrun null  
*/  
function parseDate(str){   
  if(typeof str == 'string'){   
    var results = str.match(/^ *(\d{4})-(\d{1,2})-(\d{1,2}) *$/);   
    if(results && results.length>3)   
      return new Date(parseInt(results[1]),parseInt(results[2]) -1,parseInt(results[3]));    
    results = str.match(/^ *(\d{4})-(\d{1,2})-(\d{1,2}) +(\d{1,2}):(\d{1,2}):(\d{1,2}) *$/);   
    if(results && results.length>6)   
      return new Date(parseInt(results[1]),parseInt(results[2]) -1,parseInt(results[3]),parseInt(results[4]),parseInt(results[5]),parseInt(results[6]));    
    results = str.match(/^ *(\d{4})-(\d{1,2})-(\d{1,2}) +(\d{1,2}):(\d{1,2}):(\d{1,2})\.(\d{1,9}) *$/);   
    if(results && results.length>7)   
      return new Date(parseInt(results[1]),parseInt(results[2]) -1,parseInt(results[3]),parseInt(results[4]),parseInt(results[5]),parseInt(results[6]),parseInt(results[7]));    
  }   
  return null;   
}   
  
/**//*  
  将Date/String类型,解析为String类型.  
  传入String类型,则先解析为Date类型  
  不正确的Date,返回 ''  
  如果时间部分为0,则忽略,只返回日期部分.  
*/  
function formatDate(v){   
  if(typeof v == 'string') v = parseDate(v);   
  if(v instanceof Date){   
    var y = v.getFullYear();   
    var m = v.getMonth() + 1;   
    var d = v.getDate();   
    var h = v.getHours();   
    var i = v.getMinutes();   
    var s = v.getSeconds();   
    var ms = v.getMilliseconds();      
    //if(ms>0) return y + '-' + m + '-' + d + ' ' + h + ':' + i + ':' + s + '.' + ms;   
    if(h>0 || i>0 || s>0) return y + '-' + m + '-' + d + ' ' + h + ':' + i + ':' + s;   
    return y + '-' + m + '-' + d;   
  }   
  return '';   
}

function GetCurrentTimeSeconds()
{
    // 获取当前时间表示的秒数
    var d=new Date();

    var hour=d.getHours();

    var minute=d.getMinutes();

    var second=d.getSeconds();

    return hour * 60 * 60 + minute * 60 + second;
}

//WaitTime(5, 10);//等待5秒，超时为10秒
function WaitTime(sec, timeout)
{
    // 让程序等待指定的秒数
    // sec:等待秒数
    // timeout:超时秒数
    
    var startPos = GetCurrentTimeSeconds();
    
    var pass;
    while(true)
    {
        pass = GetCurrentTimeSeconds() - startPos;
        
        if (pass >= sec)
        {
            break;
        }
        
        if ( pass >= timeout)
        {
            break;
        }
    }    
}

function checkFunErrIsExclude(batchMap,postHookExcludeFunNameList){
	try{
		if(!checkValueIsNull(batchMap)){
			if(!checkValueIsNull(batchMap["c0-methodName"])){
				var postHookExcludeFunName = postHookExcludeFunNameList.split(',');
				for(var i = 0; i < postHookExcludeFunName.length; i++){
					if(batchMap["c0-methodName"]==postHookExcludeFunName[i]){
						return true;
					}
				}
			}
		}
	}catch(exception){return false}
	
	return false;
}

//全角=>半角     
function changeCode(obj){     
	var   i;     
	var   result='';     
	var   str = obj;   
	if   (str !=   null   &&   str.length>0)     
	{     
		for(i=0;i<str.length;i++){ 
			str1=str.charCodeAt(i);       
			if((str1>=125   &&   str1<=   19968)   ||   str1>40959)   
			result+=   String.fromCharCode(str.charCodeAt(i)-65248);   
			else   
			result+= str.substring(i,i+1);   
		}     
	}
	
	return result;
}

//获取Radio/Check选中的值
function getCheckedValue(radioObj) {
	if(!radioObj)
		return "";
	var radioLength = radioObj.length;
	if(radioLength == undefined)
		if(radioObj.checked)
			return radioObj.value;
		else
			return "";
	for(var i = 0; i < radioLength; i++) {
		if(radioObj[i].checked) {
			return radioObj[i].value;
		}
	}
	return "";
}

//将DIALOG参数对象转换为字符串
function options4Dialog2Str(options){
	if(options == null){
		_a('open ajax dialog options is null');
		return '';
	}
	
	var optionsStr = '{';
	
	for (var jsonPropertyName in options) {
		if(jsonPropertyName != 'toJSONString')
			optionsStr = optionsStr + jsonPropertyName + ':'+ options[jsonPropertyName] + ',';
	}
	
	optionsStr += 'modal:false}';
	return optionsStr;
}

//读取服务端页面，并且开启一个DIV窗口
function openAjaxDialog(divObj,linkAddr, options, ajaxParams, ajaxCallback) {
	var optionsString = options4Dialog2Str(options);
	var t = "jQuery(divObj).dialog('open', options);";
	eval(t);
	jQuery(divObj).html("<img src='../images/loading.gif' alt='请稍等...'/>");
	jQuery(divObj).attr('style', 'display:visible');
	jQuery(divObj).load(linkAddr,ajaxParams,ajaxCallback);
	return jQuery(divObj);
}

function resizeAjaxDialog(divObj,width,height){
	var t = "jQuery(divObj).dialog('resetSize', width,height);";
	eval(t);
}

//只是用于显示该页面
function showDialog(divObj,options){
	var optionsString = options4Dialog2Str(options);
	var t = "jQuery(divObj).dialog('open', "+optionsString+");";
	eval(t);
	jQuery(divObj).html("<img src='../images/loading.gif' alt='请稍等...'/>");
	jQuery(divObj).attr('style', 'display:visible');
	return jQuery(divObj);
}

//加载页面
function loadDialog(divObj,linkAddr,options){
	var optionsString = options4Dialog2Str(options);
	var t = "jQuery(divObj).dialog('open', "+optionsString+");";
	eval(t);
	jQuery(divObj).html("<img src='../images/loading.gif' alt='请稍等...'/>");
	jQuery(divObj).attr('style', 'display:visible');
	jQuery(divObj).load(linkAddr);
}

//关闭DIV窗口
function closeDialog(divObj){
	var t = "jQuery(divObj).dialog('close');";
	eval(t);
}

//读取本地的DIV层，并且开启一个DIV窗口
function openDialog(divObj, width, height) {
	var t = "jQuery(divObj).dialog('open', "+optionsString+");";
	eval(t);
	jQuery(divObj).attr('style', 'display:visible');
}

/**
 * 改变DIV层大小
 * @param divObj
 * @param width
 * @param height
 * @return
 */
function changeDialogSize2(divObj,width,height){
	var t = "jQuery(divObj).dialog('changeSize2', "+width+","+height+");";
	eval(t);
}
function changeDialogSize(divObj,width,height){
	var t = "jQuery(divObj).dialog('changeSize', "+width+","+height+");";
	eval(t);
}

/*
转换Json对象到flexgird数据对象
@ dataList 	Json对象列表
@ names   	Json对象的proName，如：'startCardNo,endCardNo,startInvoiceNo,endInvoiceNo,count'
@ page 		当前第几页，从1开始
*/
function flexgridRow(){
	this.id=null;
	this.cell=new Array();
}
function queryResult2FlexgridJson(dataList,names,page){
	var flexGirdJon = { 'total':dataList.length,
								  'page':page,
								  'rows':[
								  		{
								  			id:0,
								  			cell:[
								  				'a1','a2','a3'
								  			]
								  		},{
								  			id:1,
								  			cell:[
								  				'b1','b2','b3'
								  			]
								  		}
								  ]
						      };
	flexGirdJon.rows = new Array();
	
	var nameList = names.split(',');
	
	for(var i = 0; i < dataList.length; i++){
		var row = new flexgridRow();
		row.id = i;
		for (var j = 0; j < nameList.length; j++) {
			row.cell[row.cell.length]=dataList[i][nameList[j]];
		}
		flexGirdJon.rows[i]=row;
	}
	
	return flexGirdJon;
}

function submitForm(form, gridObj) {
	var params = genFormData(form);
	gridObj.myQueryForm(params);
	//gridObj.g.load(params);
	//gridObj.g.p.setPage(1, totalRecords);
}
function genFormData(form){
	var params = {};
	//var chkboxmap = {};
	$.each(jQuery(form).find('input, select'),function(i){
		if(this.value!=''){		
			if (this.type == 'select-one') {
				params[this.name]=this.value;
			} else if (this.type == 'text') {
				params[this.name]=this.value;
			} else if (this.type == 'password') {
				params[this.name]=this.value;
			} else if (this.type == 'hidden') {
				params[this.name]=this.value;
			} else if (this.type == 'checkbox') {//遍历checkbox,获取map类型的值
				var gross = $(form).find('input[@name='+this.name+']').length;
				if (gross == 1) {
					params[this.name]=this.value;
				} else {
					if(!params[this.name]){
						params[this.name] = "";
					}
					if(this.checked){
						params[this.name] += "," + this.value;
					}
				}
				
				/**
				if(!chkboxmap[this.name]){
					chkboxmap[this.name] = "";
				}
				if(this.checked){
					chkboxmap[this.name] += ",," + this.value;
				}
				*/
			}
		}
	});
	
	//for(var key in chkboxmap){
	//	params[key]={eval(chkboxmap[key].split(",,"))};
	//}

	return params;
}

//添加Select框的值
function addSelectItem(targetObj, label, value){
	$("<option value='"+value+"'>"+label+"</option>").appendTo(targetObj);
}		

//删除Select框的值		
function removeSelectItem(targetObj){
	$("#"+targetObj+" option:selected").each(function(){ 
		$(this).remove();
   })
}

//年月日控件
function birthDayCtrl(yid,mid,did){
	//Day	
	for(var i = 1; i <= 31; i++){
		addSelectItem($('#' + did), i, i);
	}
	
	//Month
	for(var i = 1; i <= 12; i++){
		addSelectItem($('#' + mid) , i, i);
	}
}

//年月日初始化控件
function birthDayInitCtrl(yid,mid,did, dateStr){
	var y = dateStr.split('-')[0];
	var m =dateStr.split('-')[1];
	var d = dateStr.split('-')[2];
	
	$('#' + yid).val(y);
	$('#' + mid).val(m);
	$('#' + did).val(d);
}

//获取年月日控件值
function birthDayValueCtrl(yid,mid,did){
	var y = $('#'+yid).val();
	var m = $('#'+mid).val();
	var d = $('#'+did).val();
	
	var dd = y + '-' + m + '-' + d;	
	return dd;
}

/**
 * 在JS中导入其他JS文件
 * @param {} filename
 */
function importJS(filename)
{
	var body = document.getElementsByTagName('body').item(0);
	script = document.createElement('script');
	script.src = filename;
	script.type = 'text/javascript';
	body.appendChild(script);
}

//卡号格式化
function splitCardNo(s) {
	var sb = [];
	s = trimAll(s);
	array = new Array(3, 7, 11, 15, 19);
	for (i = 0; i < s.length && i < 19; i++) {
		sb.push(s.charAt(i));
		for (j = 0; j < array.length; j++) {
			if (array[j] == i) {
				sb.push(" ");
			}
		}
	}
	return sb.join("");
}

//手机格式化
function splitPhoneNo(s) {
	var sb = [];
	s = trimAll(s);
	array = new Array(2, 6, 11);
	for (i = 0; i < s.length && i < 11; i++) {
		sb.push(s.charAt(i));
		for (j = 0; j < array.length; j++) {
			if (array[j] == i) {
				sb.push(" ");
			}
		}
	}
	return sb.join("");
}


function trimAll(s) {
	re = /\s+/gi;
	s = s.replace(re, "");
	return s
}
function decimalNum(defaultTxnAmt){
	var txnAmts = defaultTxnAmt.split(".");
	if(txnAmts.length==1){
		return false;
	}else{
		var newdecimalNum = txnAmts[1];
		if(newdecimalNum.length>2){
			return true;
		}else{
			return false;
		}
	}
}


/**
 * 获取选中的radioButton的value
 * @param nameAttr radio的name
 * @returns {String}
 */
function getRadioKey(nameAttr){
	 	var keyValue="";
	 	$("input[name="+nameAttr+"]").each(function(index,item){
	 		if($(item).attr("checked")){
	 			keyValue=$(item).val();
	 		}	 	
	 	});
		return keyValue;		
};

/**
 * 校验文本框是否超出指定长度，汉字占三个字节（标题 文本框 错误提示标签的html需要符合规范）
 * @param idAttr 元素id
 * @param total  文本框允许长度
 * @returns {Boolean}
 */
function checkTextLength(idAttr,total){
	var valueStr=$("#"+idAttr).val();
	valueStr=$.trim(valueStr);
	var title=getTextTitle(idAttr);
	var count=getCountCHCharater(valueStr);
	var length=valueStr.length;
	var totalLength=parseInt(count)*3+(parseInt(length)-parseInt(count));
	$("#"+idAttr+"Error").html("");
	$("#"+idAttr+"Error").removeClass("err");
	if(totalLength>total){
		$("#"+idAttr+"Error").html(title+"长度过长，请重新输入");;
		$("#"+idAttr+"Error").addClass("err");
		return false;
	}
	return true;
}
/**
 * 获取字符串中汉字个数
 * @param inputValue   字符串
 * @returns {Number}
 */
function getCountCHCharater(inputValue){
	var re=/[\u4E00-\u9FA5]/g; 
	var count=0;
	inputValue=$.trim(inputValue);
	if(re.test(inputValue)){
		count=inputValue.match(re).length;
	}
	return count;
}
/**
 * 校验文本框输入是否为空
 * @param idAttr  文本框元素id
 * @returns {Boolean}
 */
function checkEmpty(idAttr){
	var value=$("#"+idAttr).val();
	value=$.trim(value);
	var title=getTextTitle(idAttr);
	$("#"+idAttr+"Error").html("");
	$("#"+idAttr+"Error").removeClass("err");
	if(''==value||null==value){
		$("#"+idAttr+"Error").html(title+"不能为空");
		$("#"+idAttr+"Error").addClass("err");
		return false;
	}	
	return true;
}
/**
 * 获取文本框对应的标题名称 （标题 文本框 错误提示标签的html需要符合规范）
 * @param idAttr 文本框元素id
 * @returns
 */
function getTextTitle(idAttr){
	/*HTML
	<dl>
    <dt ><span class="textRed">*</span>&nbsp;股东个数：</dt>
    <dd><input type="text"  value="rzt" name="testid" id="testid"/></dd>
    <dd><span id="testidError"></span></dd>
    </dl> 
    */
	var names=$("#"+idAttr).parent().siblings("dt").text();//获取dt元素中文本内容
	var name=$("#"+idAttr).parent().siblings("dt").children().text();//获取dt元素下所有子元素的文本内容
	return names.replace(name,"").replace("：","");//获取dt下除去所有子元素的文本内容
}

