<%@ page contentType="application/msexcel" pageEncoding="utf-8" %>
<%@ include file="/common/taglibs.jsp" %>
<%
	String fileName = "综合查询统计数据导出.xls";
	fileName = new String(fileName.getBytes("gb2312"),"iso8859-1");
	response.setHeader("Content-disposition","inline; filename=" + fileName );
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<title>综合查询统计数据导出</title>
	<%@ include file="/common/meta.jsp" %>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
</head>
<body>
       <table width="100%" border="1" cellspacing="1" cellpadding="1" class="table1">
      		<thead>
	        	<tr>
	            	<th>选择</th>
	              	<th>序号</th>
					<th>业务申请单编号</th>
					<th>产品名称</th>
					<th>借款人姓名</th>
					<th>企业名称</th>
					<th>审批状态</th>
					<th>借据ID</th>
					<th>放款金额</th>
					<th>放款时间</th>
					<th>到期时间</th>
					<th>未还款金额</th>
					<th>还款状态</th>
					<th>归属客户经理</th>
					<th>归属公司</th>
	            </tr>
      		</thead>
         	<tbody>
	          	<c:forEach items="${page.result}" var="obj" varStatus="status">
			         <tr class="text-center">
		              	<td><label><input type="checkbox" name="checkedIds" class="checkedIds" value="${obj.id}"></label></td>
		              	<td>${ status.index + 1}</td>
						<td>${obj.orderno}</td>
						<td>${obj.productname}</td>
						<td>${obj.mortgagorname}</td>
						<td>${obj.companyname}</td>
						<td data-toggle="modal" data-target="#modal_alert" data-backdrop="static" data-load-remote="/manage/orderassign/getOrderAssignByOrderId.html?orderid=${obj.id}"><mt:selectState stateType="orderInfoStatus" showType="label" value="${obj.status}"/></td>
						<td>${obj.loanno}</td>
						<td>${obj.loanamount}</td>
						<td><fmt:formatDate value="${obj.loantime}" type="both" pattern="yyyy-MM-dd hh:mm:ss"/></td>
								<td><fmt:formatDate value="${obj.loanlimittime}" type="both" pattern="yyyy-MM-dd hh:mm:ss"/></td>
						<td>${obj.norepaymentamount}</td>
						<td><mt:selectState stateType="loanstatus" showType="label" value="${obj.loanstatus}"/></td>
						<td>${obj.operatorname}</td>
						<td>${obj.operatorcompanyname}</td>
			         </tr>
				</c:forEach>
	            <c:if test="${empty page.result}">
	                <tr><td colspan="15" style="text-align: center;">当前列表没有数据！</td></tr>
			   	</c:if>
           </tbody>
       </table>
</body>
</html>
