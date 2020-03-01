<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<script src="${ctx}/js/jquery.js"></script> 
<div class="container">
  <nav class="navbar navbar-default navbar-static-top row" role="navigation"> 
    <!-- 小屏幕菜单开始 -->
    <div class="navbar-header">
      <button type="button" class="btn-default navbar-toggle " data-toggle="collapse" data-target=".navbar-ex1-collapse"> <span class="sr-only">主菜单</span> <i class=" icon-th-large "></i> 菜单 </button>
      <a class="navbar-brand top_nav_logo" href="${ctx}/index.html">网贷平台管理后台</a> </div>
    <!-- 小屏幕菜单开结束 --> 
    
    <!-- 大屏幕时显示菜单内容，小屏时自动折叠显示。 -->
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav  navbar-right">
        <li class="text-center">
          <div class="btn-group navbar-btn tooltip-show"> 
            <div class="btn-group " >
              <button type="button" class="btn btn-default  dropdown-toggle" data-toggle="dropdown" >
              <i class="icon-cog"></i> <span class="badge badge-nobg">系统管理</span> <b class="caret"></b> </button>
              <ul  class="dropdown-menu text-left">
              	<shiro:hasPermission name="0">
                 	<li><a href="${ctx}/manage/security/user/query.html">用户管理</a></li>
                </shiro:hasPermission>
                <shiro:hasPermission name="0">
                 	<li><a href="${ctx}/manage/security/organization/query.html">用户组管理</a></li>
                </shiro:hasPermission>
               </ul>
            </div>
            <div class="btn-group " >
              <button type="button" class="btn btn-default  dropdown-toggle" data-toggle="dropdown" ><i class="icon-user "></i><span class="badge badge-nobg">
              	<shiro:user>欢迎[<shiro:principal/>]登录 </shiro:user></span><b class="caret"></b> 
			  </button>
              <ul  class="dropdown-menu text-left">
                <li><a href="${ctx}/manage/security/user/view.html"><i class="icon-user"></i> 个人资料</a></li>
                <li><a href="${ctx}/manage/security/user/updatePasswordSave.html"><i class="icon-key"></i> 修改密码</a></li>
              </ul>
            </div>
            <a href="${ctx}/manage/loginout.html" class="btn btn-danger" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="退出登录"><i class="icon-off"></i><span class="badge badge-nobg">退出</span> </a> </div>
        </li>
      </ul>
    </div>
    <!-- 大屏幕显示菜单内容结束 --> 
  </nav>
</div>


 
