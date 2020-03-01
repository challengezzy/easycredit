<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<style type="text/css">
    .active2  {
   	 	background-repeat: repeat-x;
    	background-color: #428bca;
    	border-color: #3278b3;
    	outline: 0 none;
    	text-decoration: none;
    	text-shadow: 0 -1px 0 #3071a9;
    	color: #ffffff;
    	text-color:#ffffff;
    }
    .list-group-item.active2, .list-group-item.active2:hover, .list-group-item.active2:focus {
	    background-color: #428bca;
	    border-color: #428bca;
	    color: #ffffff;
	    z-index: 2;
	}
    a.list-group-item:hover, a.list-group-item:focus {
    	background-color: #428bca;
    	text-decoration: none;
    	color: #ffffff;
    	border-color: #3278b3;
	}
</style>
<div class="list-group" style="overflow:hidden;height:625px; background-color: #ffffff;" >
   <div style="min-height:256px;max-height:625px; height:auto;" >
	   <a href="${ctx}/manage/index.html" id="indexA" class="list-group-item active"><i class="icon-home"></i> 系统首页</a>
	   <shiro:hasPermission name="1"> 
	  		<a href="${ctx}/manage/product/getproductlist.html" id="getproductlist" class="list-group-item">产品管理 </a>
	   </shiro:hasPermission>  
	   <shiro:hasPermission name="2">
	  		<a href="${ctx}/manage/mortgagor/getMortgagorInfoList.html" id="getMortgagorInfoList" class="list-group-item">借款人管理 </a>
	   </shiro:hasPermission> 
	   <shiro:hasPermission name="3"> 
	   		<a href="${ctx}/manage/applyApproval/getApplyApprovalList.html" id="getApplyApprovalList" class="list-group-item">申请单审批</a>
	   </shiro:hasPermission>
	   <shiro:hasPermission name="4"> 
			<a href="${ctx}/manage/orderretrunlist/getOrderReturnList.html" id="getOrderReturnList" class="list-group-item">借据管理</a>
	   </shiro:hasPermission>
	   <shiro:hasPermission name="5"> 
	        <a href="${ctx}/manage/comprehensive/getComprehensiveList.html" id="getComprehensiveList" class="list-group-item">综合查询统计</a>
	   </shiro:hasPermission>
	   <shiro:hasPermission name="6"> 
	    	<a href="${ctx}/manage/security/organizationauthority/getOrganizationauthoritys.html" id="getOrganizationauthoritys" class="list-group-item">权限配置</a>
	   </shiro:hasPermission>
	   <br style="clear:both;" /> 
	</div> 
</div>
</body>
</html>

<script type="text/javascript">
$(document).ready(function(){
	$("#indexA").addClass("active");
	var href=window.location.href;	
	var list=["getproductlist","getMortgagorInfoList","getApplyApprovalList","getOrderReturnList","getComprehensiveList","getOrganizationauthoritys"];
	for(var i=0;i<list.length;i++){
		if(href.indexOf(list[i])>0){
			$("#"+list[i]).addClass("active2");
		    $("#"+list[i]).siblings().removeClass("active2");		
		}
	}
});
</script>
         
        
        