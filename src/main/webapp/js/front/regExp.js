

/* 固话校验*/
function isTel(obj){
	var tel =/^((\+86)?|\(\+86\)|\+86\s)0?([1-9]\d-?\d{6,8}|[3-9][13579]\d-?\d{6,7}|[3-9][24680]\d{2}-?\d{6})(-\d{3})?$/ ;
	if (tel.test(obj.value)){
		return true;
	}
	return false;
}

/*手机校验*/
function isCellPhone(obj){
	var cellPhone=/^((\+86)?|\(\+86\))0?1[358]\d{9}$/
	if (cellPhone.test(obj.value)){
		return true;
	}
	return false;
}	

/* 身份证校验 */
function identityCheck(obj){
	isIDCard2=/^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{4}$/; 
	if (!isIDCard2.test(obj)){
		alert('提示','身份证格式不正确！');
	}else{//数据库验证
		$.ajax({
			url:"verify.action",
			data:obj,
			dataType:'JSON',
			success:function(success){
					if (o.success) {
						alert('提示','该身份证号已存在!');
					} 
				}
			});
	}
}


/* 去空格 */
function trimme(obj) {
	return obj.value.replace(/(^\s*)|(\s*$)/g, '');
}

/* 非空校验 */
function isblank(obj) {
	if (trimme(obj) == "") {
		return true;
	}
	return false;
}

/* 非空判断    id="loanTitle" onblur='checkBlank("标题",$("#loanTitle"));' */
function  checkBlank(lable,obj){
	if(isblank(obj) ){
		alert(lable+"不能为空  ！ ");
		return false;
	}
	return true;
}
/* 固话判断   id="telCheck" onblur="checkTel($('#telCheck'))" */
function  checkTel(obj){
	if(!isTel(obj) ){
		alert("固话格式不正确 ！ ");
		return false;
	}
	return true;
}
/* 手机判断   id="cellPhone"  onblur="checkCellPhone($('#cellPhone'))"*/
function  checkCellPhone(obj){
	if(!isCellPhone(obj) ){
		alert("手机格式不正确 ！ ");
		return false;
	}
	return true;
}
/*  日期格式判断yyyy-MM-dd HH:ss */

function CheckDateTime(str){  
var reg = /^(\d+)-(\d{1,2})-(\d{1,2}) (\d{1,2}):(\d{1,2})$/;  
var r = str.match(reg);  
if(r==null)return false;  
r[2]=r[2]-1;  
var d= new Date(r[1], r[2],r[3], r[4],r[5]);  
if(d.getFullYear()!=r[1])return false;  
if(d.getMonth()!=r[2])return false;  
if(d.getDate()!=r[3])return false;  
if(d.getHours()!=r[4])return false;  
if(d.getMinutes()!=r[5])return false;  
return true;  
}  
function CheckINT(input)
{
	var reg1 =  /^[0-9]*[1-9][0-9]*$/;
return reg1.test(input);
}
function isNumberBy100(ssn) {
 var re = /^[0-9]*[0-9]$/i;       //校验是否为数字
 if(re.test(ssn) && ssn%100===0) {
  return true;
 }else {
  return false;
 }
}