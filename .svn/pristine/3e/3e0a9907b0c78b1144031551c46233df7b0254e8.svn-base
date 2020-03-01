<%@ page contentType="application/msexcel" pageEncoding="utf-8" %>
<%@ include file="/common/taglibs.jsp" %>
<%
	String fileName = "借款人数据导出.xls";
	fileName = new String(fileName.getBytes("gb2312"),"iso8859-1");
	response.setHeader("Content-disposition","inline; filename=" + fileName );
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<title>借款人数据导出</title>
	<%@ include file="/common/meta.jsp" %>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
</head>
<body>
       <table width="100%" border="1" cellspacing="1" cellpadding="1" class="table1">
      		<thead>
	        	<tr>
	              	<th>序号</th>
					<th>借款人姓名</th>
					<th>借款人身份证号</th>
					<th>手机号</th>
					<th>邮箱</th>
					<th>所属公司</th>
					<th>配偶姓名</th>
					<th>配偶身份证号</th>
					<th>配偶联系电话</th>
					<th>创建人</th>
					<th>创建时间</th>
					
	            </tr>
      		</thead>
         	<tbody>
	          	<c:forEach items="${page.result}" var="obj" varStatus="status">
			         <tr class="text-center">
		              	<td>${ status.index + 1}</td>
						<td>${obj.mortgagorname}</td>
						<td>${obj.idnumber}</td>
						<td>${obj.cellphone}</td>
						<td>${obj.email}</td>
						<td>${obj.companyname}</td>
						<td>${obj.spousename}</td>
						<td>${obj.spouseidnumber}</td>
						<td>${obj.spousecellphone}</td>
						<td>${obj.nickname}</td>
						<td><fmt:formatDate value="${obj.createtime}" type="both" pattern="yyyy-MM-dd hh:mm:ss"/></td>
			         </tr>
				</c:forEach>
	            <c:if test="${empty page.result}">
	                <tr><td colspan="9" style="text-align: center;">当前列表没有数据！</td></tr>
			   	</c:if>
           </tbody>
       </table>
</body>
</html>
