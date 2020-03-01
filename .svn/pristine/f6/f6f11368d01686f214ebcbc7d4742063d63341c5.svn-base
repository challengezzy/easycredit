<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<form role="form" action="${ctx}/manage/orderretrunlist/updateRebank.html" method="post" id="inputForm" >
	<input id="organizationid" name="organizationid" type="hidden" value="${organizationid}"/>
	<div class="modal-header">
       <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icon-remove"></i></button>
       <h4 class="modal-title" id="myModalLabel">权限列表</h4>
    </div>
	 <div class="modal-body">
 		<div class="form-group clearfix">
             <div class=" col-sm-9  col-lg-5 ">
               <div class="checkbox">
                 <label><input class="checkedIds" type="checkbox" name="0" value="0" <c:if test="${fn:contains(authoritytypeflag,'0')}">checked</c:if> id="user">用户及组管理</label>
               </div>
               <div class="checkbox">
                 <label><input class="checkedIds" type="checkbox" name="1" value="1" <c:if test="${fn:contains(authoritytypeflag,'1')}">checked</c:if> id="product">产品管理</label>
               </div>
               <div class="checkbox">
                 <label><input class="checkedIds" type="checkbox" name="2" value="2" <c:if test="${fn:contains(authoritytypeflag,'2')}">checked</c:if> id="account">借款人管理</label>
               </div>
               <div class="checkbox">
                 <label><input class="checkedIds" type="checkbox" name="3" value="3" <c:if test="${fn:contains(authoritytypeflag,'3')}">checked</c:if> id="apply">申请单审批</label>
               </div>
               <div class="checkbox">
                 <label><input class="checkedIds" type="checkbox" name="4" value="4" <c:if test="${fn:contains(authoritytypeflag,'4')}">checked</c:if> id="weihu">借据维护</label>
               </div>
               <div class="checkbox">
                 <label><input class="checkedIds" type="checkbox" name="5" value="5" <c:if test="${fn:contains(authoritytypeflag,'5')}">checked</c:if> id="total">综合查询统计</label>
               </div>
               <div class="checkbox">
                 <label><input class="checkedIds" type="checkbox" name="6" value="6" <c:if test="${fn:contains(authoritytypeflag,'6')}">checked</c:if> id="auth">权限配置</label>
               </div>
               <div class="checkbox">
                 <label><input class="checkedIds" type="checkbox" name="7" value="7" <c:if test="${fn:contains(authoritytypeflag,'7')}">checked</c:if> id="export">客户信息导出</label>
               </div>
             </div>
        </div>
	    <div class="modal-footer">
		   	<button type="button" class="btn btn-default" data-dismiss="modal"><i class="icon-remove"></i> 取消</button>
		   	<button type="button" class="btn btn-primary" id="submitBut"><i class="icon-ok"></i> 确定</button>
	   </div>
	 </div>
</form>

<script type="text/javascript">
var organizationid='${organizationid}';
 
$(document).ready(function() {
	$("#submitBut").click(function() {
		var checkedIds = new Array();
		var i = 0;
		$(".checkedIds").each(function() {
			if(this.checked == true) {
				checkedIds[i] = this.value;
				i++;
			}
		});
		location.assign("update.html?checkedIds=" + checkedIds+"&organizationid="+organizationid);
	});
});
</script>  
