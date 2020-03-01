<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp" %>
<div class="fsp_top_bar">
	<div class="top">
		<p class="top_user">
			<span>你好，</span>
			<span class="user-name">${sessionScope.UserInfo.nickname}</span> 
			<a href="javascript:loginOut();">退出</a><span></span> 
		</p>
	</div>
</div>
<script type="text/javascript">
	function loginOut(){
		$.ajax({
			type:"POST",
			url:"/member/loginOut.html",
			data:"",
			dataType:"text",
			success: function(data) {
				 if(data=="1"){
					 window.location.href="/"; 
				 }
			}
		});
	}
</script>

 
	
	
 
 
