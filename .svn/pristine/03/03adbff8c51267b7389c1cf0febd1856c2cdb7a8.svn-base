<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>365融资网</title>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width,user-scalable=no"> 
	<meta name="keywords" content="信贷，个人贷款,融资">
	<meta name="description" content="365融资互联网金融服务平台。">
	<link rel="shortcut icon" href="${ctx}/favicon.ico" type="image/x-icon" />
	<link rel="stylesheet" href="${ctx}/css/page.css" type="text/css">
	<link rel="stylesheet" href="${ctx}/css/pageNew.css" type="text/css">
	<script src="${ctx}/js/front/yrycodeapi.js" type="text/javascript"></script>
	<!--–[if lte IE]-->
	<script src="${ctx}/js/front/html5.js" type="text/javascript"></script>
	<!--[endif]–-->
	<script src="${ctx}/js/front/jquery-1.js" type="text/javascript"></script>
</head>

<body>
<div class="container">
  <!-- 页首导航 -->
  <div id="fsp-model-div"></div>
</div>
<div class="fsp_header_frame">
	 <div class="fsp_top_bar"></div>
      <div class="header_bar">
          <div class="cf header">
              <div class="logo">
                  <a href="/index.jsp"><img src="${ctx}images/logo.png" alt="网贷平台"></a>
              </div>
              <div class="nav">
              	<ul class="nav-list"></ul>
              </div>
          </div>
      </div>
      
</div>	
 
<!-- 页面内容 -->
<div class="main_frame">
  <div class="pub_c">
    <div class="m_banner">
      <div class="banner b1" style=" background-image:url(images/banner1.jpg);" id="banner1"></div>
      <div class="banner b2" style=" background-image:url(images/banner3.jpg);display:none;" id="banner2"></div>
    </div>
    <div class="banner_ctrl"> <a href="#" class="prev" title=""></a> <a href="javascript:;" class="next" title=""></a> </div>
    <div class="banner_img">
    	<ul>
    		<li class="imgon" id="indexRadio0" onclick="javascript:changeImage('0');"></li>
    	    <li class="imginit" id="indexRadio1" onclick="javascript:changeImage('1');"></li>
    	</ul>
    </div>
  </div>
  <div class="main_login">
  	<div class="login_title">
		<ul><li class="login_on"><a>会员登录</a></li><li style="display:none;"><a>商户登录</a></li></ul>
	</div>
    <div class="login" >
      <div class="login_box">
        <p>
          <label class="lable">用户名</label>
          <input class="login_user" id="userName" name="userName" placeholder="请输入用户名/手机号" type="text">
        </p>
        <p>
          <label class="lable">密&nbsp;&nbsp;&nbsp;码</label>
          <input class="login_user" id="password" name="password" placeholder="请输入密码" type="password">
        </p>
        <p class="last">
          <label class="lable">验证码</label>
          <input id="captcha" name="captcha" class="login_code" placeholder="验证码" type="text">
          <a href="javascript:onChangeCaptchaCode();" class="login_codeimg" title="更换验证码"> <!-- /images/CaptchaCode.jpg -->
          <img style="margin: 1px auto; padding: 0;" id="imgValidateCode" src="${ctx}/canpanta.png" align="middle" height="35" width="80"></a></p>
      </div>
      <div class="login_pro">
      	<p class="login-error-tips"><span id="loginErrorDiv" class="error-des"></span></p>
      </div>
      <input id="loginSubmit" name="loginSubmit" class="login_btn" value="登录" type="button" style="cursor:pointer;">
      <label style="color: #ffffff;float: left;width: 225px;padding-top:5px; line-height:20px;">
	  <a href="javascript:void(0);" style="margin-left:10px; color:#c3c3c3;display:none;">注册账号</a>
      <a href="javascript:void(0);" style="float:right; margin-right:10px;  color:#c3c3c3;display:none;">忘记密码？</a>
      </label>
    </div>
    <div class="count">
		      <p>网站已申请客户数：</p>
		      <div class="count_img" style="width:285px;">
		      	<input id="countTotalNum" name="countTotalNum" value="68558" type="hidden">
		        <ul>
		          <li><img src="${ctx}/images/num-00.png" id="countNum1"></li>
		          <li><img src="${ctx}/images/num-00.png" id="countNum2"></li>
		          <li><img src="${ctx}/images/num-00.png" id="countNum3"></li>
		          <li><img src="${ctx}/images/num-00.png" id="countNum4"></li>
		          <li><img src="${ctx}/images/num-05.png" id="countNum5"></li>
		          <li><img src="${ctx}/images/num-03.png" id="countNum6"></li>
		          <li><img src="${ctx}/images/num-06.png" id="countNum7"></li>
		          <li class="lastone"><img src="${ctx}/images/num-04.png" id="countNum8"></li>
		        </ul>
		      </div>
		    </div>
  </div>
  
</div>
<div class="fsp_product_frame">
  <div class="fsp_product">
    <ul>
      <li class="first_li">
        <a href="javascript:void(0);"><span class="position1"></span><p>平台化方便操作</p></a>
       </li>
      <li class="second_li">
      	<a href="javascript:void(0);"><span class="position2"></span><p>多产品供您选择</p></a>
      </li>
      <li class="last_li">
      	<a href="javascript:void(0);"> <span class="position3"></span><p>融资难题一站式解决</p></a></li>
    </ul>
  </div>
</div>

<!--页尾导航-->
<div class="fsp_footer_frame">
	<div class="fsp_footer">
		<ul>
			<li class="aboutus"><a href="/common/front/aboutus.jsp">关于365融资</a></li>
			<li class="contactus"><a href="/common/front/contactus.jsp" target="_blank">联系我们</a></li>
			<li class="jionus" style="display:none;"><a href="javascript:void(0);" target="_blank">招贤纳士</a></li>
		</ul>
		<div class="fsp_wechat" style="display:none;">
			<img src="${ctx}/images/merchant03.png" height="115px" width="115px">
			<p>商户APP</p>
		</div>
		<div class="fsp_wechat" style="display:none;">
			<img src="${ctx}/images/agent03.png" height="115px" width="115px">
			<p>服务商APP</p>
		</div>
		<div class="fsp_blogroll" style="display:none;">
			<h2>友情链接</h2>
			<a href="javascript:void(0);" target="_blank"><img src="${ctx}/images/linklogo1.png"></a> 
			<a href="javascript:void(0);" target="_blank"><img src="${ctx}/images/linklogo2.png"></a>
			<p>
				Copyright©2015 <br>网贷平台 &nbsp;All Rights
				Reserved&nbsp;沪ICP备15009228号
			</p>
		</div>
	</div>
</div>

<!-- 基础js -->
<script src="${ctx}/js/front/jquery.js"></script>
<script src="${ctx}/js/front/bootstrap.js"></script>
<script src="${ctx}/js/front/common.js"></script>
 

<!-- 页面js -->
<script type="text/javascript">
   var nNum=0;
   $(function(){
	   //定时器
	   $("input").placeholder();
	   changeCountNumImg("5364");
	   setInterval(randomCountNum,30000);
	   $(".banner_ctrl a").hover(function(){
			$(this).fadeTo(100,.5);
			},function(){
			$(this).fadeTo(100,.1);
		});				
		var tNum=$(".m_banner .banner").length-1;
		$(".banner_ctrl .prev").click(function(){
			(nNum-1)<0?n2=tNum:n2=nNum-1;
			nNum = bSwitch(nNum,n2);
			nNum=n2;
		});	
		$(".banner_ctrl .next").click(function(){
			(nNum+1)>tNum?n2=0:n2=nNum+1;
			bSwitch(nNum,n2);
			nNum=n2;
		});				
		$(function(){
			var switchTime;
		 	$(".m_banner").hover(function(){
				clearInterval(switchTime);
			},function(){
			switchTime = setInterval(function(){
				(nNum+1)>tNum?n2=0:n2=nNum+1;
				bSwitch(nNum,n2);
				nNum=n2;
			},8000);
			}).trigger("mouseleave");
		});
		
	   $("input").focus(function(){
		   $('#loginErrorDiv').text("");
		});
	   
		$('#loginSubmit').click(formSubmit);
		
		if (document.addEventListener) { // 如果是Firefox
			document.addEventListener("keypress", fireFoxHandler, true);
		} else {
			document.attachEvent("onkeypress", ieHandler);
		}
		function fireFoxHandler(evt) { // 如果是Firefox
			if (evt.keyCode == 13) {
				var id=$("input:focus").attr("id");
				if(id=='userName'){
					$('#password').focus();
				}else if(id=='password'){
					formSubmit();
				}
			}
		}
		function ieHandler(evt) {
			if (evt.keyCode == 13) {
				var id=$("input:focus").attr("id");
				if(id=='userName'){
					$('#password').focus();
				}else if(id=='password'){
					formSubmit();
				}
			}
		}
	});
   
    function bSwitch(nNum,n2){
        //先判断当前节点否为选中，如果为选中则返回当前选中的节点
        var currentClass = $("#indexRadio"+nNum).attr("class");
        if(currentClass=="imgon"){
        	$("#indexRadio"+nNum).removeClass("imgon");
            $("#indexRadio"+n2).removeClass("imginit");
            $("#indexRadio"+nNum).addClass("imginit");
            $("#indexRadio"+n2).addClass("imgon");
    		$(".m_banner .banner:eq("+nNum+")").fadeOut();
    		$(".m_banner .banner:eq("+n2+")").fadeIn();
    		nNum = n2;
		}else{
			var initNum=$(".m_banner .banner").length;
			for(var i=0;i<parseInt(initNum);i++){
				var selClass = $("#indexRadio"+i).attr("class");
				if(selClass=="imgon"){
					nNum = i+1;
				}
			}
		}
	};

	//placeholder
	$.fn.placeholder = function(options){
		var defaults = {
			initValue      : ""
		};
		var options = $.extend(defaults,options); 
		var input = $("<input/>").get(0);
		this.each(function(){
			var t = $(this),
				initValue = t.attr("placeholder");
			if(!("placeholder" in input)){
				if(initValue){
					t.css("color","#aaa");
					t.attr("value",initValue);
					t.bind("focus" , function(){
						(t.val() == initValue) && t.val("").css("color","");	
					})
					t.bind("blur" , function(){
						!t.val() && t.val(initValue).css("color","#aaa");
					})
				}
			}	
		})
	};
	function changeImage(nNum){
		var currentClass = $("#indexRadio"+nNum).attr("class");
		var initNum=$(".m_banner .banner").length;
		for(var i=0;i<parseInt(initNum);i++){
			var selClass = $("#indexRadio"+i).attr("class");
			if(i==parseInt(nNum)){
				if(currentClass!="imgon"){
					$("#indexRadio"+i).removeClass("imginit");
					$("#indexRadio"+i).addClass("imgon");
					$(".m_banner .banner:eq("+i+")").fadeIn();
				}
			}else{
				if(selClass=="imgon"){
					$(".m_banner .banner:eq("+i+")").fadeOut();
					$("#indexRadio"+i).removeClass("imgon");
					$("#indexRadio"+i).addClass("imginit");
				}
			}		
		}
	};
	
	function formSubmit(){
		var userName=$('#userName').val();
		var password=$('#password').val();
		var captcha=$('#captcha').val();
		var loginType="0";
		if(validation(userName,'用户名')&&validation(password,'密码')&&validation(captcha,'验证码')){
			$.ajax({
				type:"POST",
				url:"/member/login.html",
				data:"userName="+userName+"&password="+password+"&loginType="+loginType+"&captcha="+captcha,
				dataType:"text",
				success: function(data) {
					var res = data.split("#");
					switch(res[0]){
					    case  "0" : 
					    	$('#loginErrorDiv').text("");
							window.location.href="/member/productList.html";
							break;
						case  "-1" : $('#loginErrorDiv').html('用户名或者密码错误,请重新输入！').show();$('#password').val('');onChangeCaptchaCode(); break;
						case  "-2" : $('#loginErrorDiv').html('验证码输入错误，请重新输入！').show();onChangeCaptchaCode(); break;
						case  "-99" : $('#loginErrorDiv').html('账号已被锁定请稍后再试！').show(); onChangeCaptchaCode();break;
						default: break;
					}
				}
			});
		}
	};
	function validation(str,msg){
		if($.trim(str).length==0){
			$('#loginErrorDiv').text("请输入"+msg);
			return false;
		}
		return true;
	};
	
	function onChangeCaptchaCode(){
       $("#imgValidateCode").attr("src","/canpanta.png?" + (new Date().getTime()));
    };
    
    function randomCountNum(){
		$.ajax({
			type:"POST",
			url:"/member/getVistorSum.html",
			dataType:"text",
			success: function(data) {
				changeCountNumImg(data);
			}
		});
    }
    
    function changeCountNumImg(countTotalStr){
        var totalNumLength = 8;
		var numLength = countTotalStr.length;
		for(var i=(totalNumLength-numLength);i<(totalNumLength+1);i++){
			if(countTotalStr!=""){
				$("#countNum"+(i+1)).attr("src","images/num-0"+countTotalStr.substr(0,1)+".png");		
				countTotalStr = countTotalStr.substr(1);
			}
		}		
    };
</script>
</body>
</html>
