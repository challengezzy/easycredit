<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<div id="footer"class="footer_bar">
  <div class="con">    </div>
</div>
<!-- 页面代码结束 -->
 
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
<script src="${ctx}/js/jqueryValidate.js"  charset="UTF-8"></script> 
<!-- 分页脚本 -->
<script src="${ctx}/js/table.js"></script> 

<!-- /页面脚本 -->
 
<c:if test="${not empty message}">
	<script type="text/javascript">
		Messenger.options = {
		    extraClasses: 'messenger-fixed messenger-on-top',
		    theme: 'flat'
		}
		Messenger().post({
		  message: '${message}',
		  type: 'success',
		  hideAfter: 5,
		  showCloseButton: true
		});
	</script>
</c:if>

</body>
</html>