<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="/common/taglibs.jsp" %>
<div class="modal-header">
   <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icon-remove"></i></button>
   <h4 class="modal-title" id="myModalLabel">审批流程明细</h4>
</div>
<div class="panel-body ">
    <div class="table-responsive">
      <table class="table table-hover table-striped table-bordered table-condensed table-big">
        <thead>
          <tr>
          <th>序号</th>
			<th>审批阶段</th>
			<th>到达时间</th>
			<th>审批时间</th>
			<th>审批组</th>
			<th>审批人</th>
			<th>审批结果</th>
			<th>审批意见</th>
          </tr>
        </thead>
        <tbody>
        	<c:forEach items="${page.result}" var="obj" varStatus="status">
         		<tr class="text-center">
         		    <td>${ status.index + 1}</td>
	             	<td style="display: none;">${obj.orderid}</td>
					<td><mt:selectState stateType="organizationtype" showType="label" value="${obj.organizationtype}"/></td>
					<td><fmt:formatDate value="${obj.assigntime}" type="both" pattern="yyyy-MM-dd hh:mm:ss"/></td>
					<td><fmt:formatDate value="${obj.submittime}" type="both" pattern="yyyy-MM-dd hh:mm:ss"/></td>
					<td>${obj.organizationname}</td>
					<td>${obj.username}</td>
					<td><mt:selectState stateType="resultflag" showType="label" value="${obj.resultflag}"/></td>
					<td>${obj.comments}</td>
	            </tr>
			</c:forEach>
		    <c:if test="${empty page.result}">
		         <tr><td colspan="7" style="text-align: center;">当前列表没有数据！</td></tr>
		   	</c:if>
        </tbody>
      </table>
    </div>
</div>
 

 
