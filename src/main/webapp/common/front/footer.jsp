<%@ page language="java" pageEncoding="UTF-8"%>
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
<%-- <script src="${ctx}/js/front/handlebars.js"></script> --%>
<%-- <script src="${ctx}/js/front/jquery.js"></script> --%>
<%-- <script src="${ctx}/js/front/bootstrap.js"></script> --%>
<%-- <script src="${ctx}/js/front/common.js"></script> --%>
<%-- <script src="${ctx}/js/front/regExp.js"></script> --%>
<%-- <script src="${ctx}/js/front/artDialog.js"></script> --%>
<%-- <script src="${ctx}/js/front/app.js"></script> --%>

 <!-- 全局脚本 --> 
<script src="${ctx}/js/jquery.js"></script> 
<script src="${ctx}/js/jquery-migrate-1.2.1.min.js"></script> 
<script src="${ctx}/js/bootstrap/js/bootstrap.js"></script> 
<script src="${ctx}/js/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- end 全局脚本 --> 

<!-- jquery 表单验证 -->
<script type="text/javascript" src="${ctx}/js/validate/jquery.validate.min.js"></script>
<script type="text/javascript" src="${ctx}/js/validate/jquery.metadata.js"></script>
<script type="text/javascript" src="${ctx}/js/validate/messages_cn.js"></script>
 
<!-- 页面脚本 --> 
<script type="text/javascript" src="${ctx}/js/plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script> <!-- bootstrap-switch切换开关 --> 
<!-- 日期选择插件 --> 
<script type="text/javascript" src="${ctx}/js/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js" charset="UTF-8"></script> 
<script type="text/javascript" src="${ctx}/js/plugins/bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script> 
<!-- 日期范围选择插件 --> 
<script type="text/javascript" src="${ctx}/js/plugins/bootstrap-daterangepicker/moment.js" charset="UTF-8"></script> 
<script type="text/javascript" src="${ctx}/js/plugins/bootstrap-daterangepicker/daterangepicker.js" charset="UTF-8"></script> 
<!-- messenger-master弹出提示信息插件 -->
<script type="text/javascript" src="${ctx}/js/plugins/messenger-master/js/messenger.min.js" charset="UTF-8"></script> 
<script type="text/javascript" src="${ctx}/js/plugins/messenger-master/js/messenger-theme-flat.js" charset="UTF-8"></script> 
<!-- select2下拉表单插件 -->
<script type="text/javascript" src="${ctx}/js/plugins/select2/select2.min.js" ></script>
<script type="text/javascript" src="${ctx}/js/plugins/select2/select2_locale_zh-CN.js"  charset="UTF-8"></script>
<!--jquery UI插件 -->
<script type="text/javascript" src="${ctx}/js/plugins/jquery-ui/jquery-ui.min.js" ></script>

<!-- 自定义脚本 --> 
<script src="${ctx}/js/main.js"  charset="UTF-8"></script> 
<!-- Validate验证 -->
<%-- <script src="${ctx}/js/jqueryValidate.js"  charset="UTF-8"></script>  --%>
<!-- 分页脚本 -->
<script src="${ctx}/js/table.js"></script>