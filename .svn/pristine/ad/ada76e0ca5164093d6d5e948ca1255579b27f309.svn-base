<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/top.jsp" %>
<body class="fix_top_nav_padding">
<div id="wrap" > 
   <%@ include file="/common/header.jsp" %> 
  <div class="container">
    <div class="row">
      <div class="col-md-2 ">
         <%@ include file="/common/left.jsp" %> 
      </div>
      <div class="col-md-10 ">
       <form role="form" action="${ctx}/manage/security/organization/query.html" method="post" id="mainForm">
	    <div class="panel panel-default">
	      <div class="panel-heading ">用户组管理 </div>
	      <div class="form-inline popover-show panel-body list_toolbar">
	        <div class="form-group width_input"  data-toggle="popover"  data-placement="top" data-content="请输入用户组名称">
	          <input  class="form-control" type="text"  placeholder="用户组名称" name="username" value="${param.username}"/>
	        </div>
	        <div class="form-group width_input"  data-toggle="popover"  data-placement="top" data-content="请输入用户组角色">
	          	 <mt:selectState name="organizationtype" showType="select" stateType="organizationtype" value="${param.organizationtype}" clazz="form-control" emptyString="请选择用户组角色"/>
	        </div>
	        <div class="form-group width_btn">
	          <button  type="button" class="btn  btn-primary " onclick="search();"><i class="icon-search"></i> 搜索</button>
	        </div>
	        <div class="form-group width_btn pull-right">
	            <button type="button" class="btn btn-success" id="newitem" data-toggle="modal" data-target="#modal_alert" data-backdrop="static"><i class="icon-plus"></i> 添加</button>
	        </div>
	    </div>
	    <div class="panel-body ">
	      <div class="table-responsive">
	        <table class="table table-hover table-striped table-bordered table-condensed table-big">
	          <thead>
	            <tr>
	              <th>选择</th>
	              <th>序号</th>
	              <th>用户组名称</th>
	              <th>用户组角色</th>
	              <th>创建人</th>
	              <th>创建时间</th>
	              <th>操作</th>
	            </tr>
	          </thead>
	          <tbody>
				<c:forEach items="${page.result}" var="obj" varStatus="status">
		            <tr class="text-center">
		              <td><label><input type="checkbox" name="checkedIds" class="checkedIds" value="${obj.id}"></label></td>
		              <td>${status.count}</td>
		              <td>${obj.organizationname}</td>
		              <td><mt:selectState stateType="organizationtype" showType="label" value="${obj.organizationtype}"/></td>
		              <td>${obj.username}</td>
		              <td><fmt:formatDate value="${obj.createtime}" type="both" pattern="yyyy-MM-dd hh:mm:ss"/></td>
		              <td>
		             	<div class="btn-group btn-group-sm pull-center btn-edit-list">
		             		<a href="#" data-id="${obj.id}" data-name="${obj.organizationname}" data-type="${obj.organizationtype}" data-toggle="modal" data-target="#modal_alert" data-backdrop="static" >编辑</a> 
		                    <a href="javascript:delFun(${obj.id});">删除</a> 
						</div>
		              </td>
		            </tr>
	           	</c:forEach>
	            <c:if test="${empty page.result}">
	                <tr><td colspan="7" style="text-align: center;">当前列表没有数据！</td></tr>
			   	</c:if>
	          </tbody>
	        </table>
	      </div>
	      <c:if test="${not empty page.result}">
		      <div class="table_page dropup">
		        <div class="btn-group btn-group-sm pull-left">
		          <label  class="btn btn-default  table_select_all">&nbsp;
		            <input type="checkbox" id="checkedAll">
		          </label>
		          <button type="button" class="btn btn-default  dropdown-toggle" data-toggle="dropdown"><span class="caret"></span> </button>
		          <ul class="dropdown-menu text-left" role="menu">
		            <li><a id="remove" href="#">批量删除</a></li>
		          </ul>
		        </div>
		        <%@ include file="/common/pagination.jsp" %>
		      </div>
	      </c:if>
	   </div>
	  </div>
	  </form>
      </div>
    </div>
  </div>
</div>

<!-- Modal -->
<div class="modal fade modal_alert" id="modal_alert" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
 	 <%@ include file="organization_update.jsp" %> 
</div>
<!-- modal -->

<%@ include file="/common/footer.jsp" %> 
 
<script type="text/javascript">
	$(document).ready(function() {
		$("#checkedAll").click(function(){
			$(".checkedIds").each(function() {
				if($("#checkedAll").prop("checked")==true){
					this.checked = true;
				}else{
					this.checked = false;
				}
			});
		});
		
		$("#remove").click(function() {
			var checkedIds = new Array();
			var i = 0;
			$(".checkedIds").each(function() {
				if(this.checked == true) {
					checkedIds[i] = this.value;
					i++;
				}
			});
			if(i==0){
				alert("请选择要删除的数据！！");
			}else{
				if(confirm("您确认删除？")){
					 
				}
			}
		});
		
		$("#across").click(function(){
			var checkedIds = new Array();
			var i = 0;
			$(".checkedIds").each(function() {
				if(this.checked == true) {
					checkedIds[i] = this.value;
					i++;
				}
			});
			if(i==0){
				alert("请选择要启用的数据！！");
			}else{
				if(confirm("您确认启用该用户吗？")){
					 
				}
			}
		});
		
		$(".btn-edit-list a").bind("click",function(){
			var id =$(this).attr("data-id");
			var name =$(this).attr("data-name");
			var type =$(this).attr("data-type");
			if(id!=null && id!=""){
				$("#organizationId").val(id);
				$("#organizationname").val(name);
				$("#organizationtype").val(type);
			} 
		});
		
		$("#newitem").click(function() {
			$("#organizationId").val("");
			$("#organizationname").val("");
			$("#organizationtype").val("");
		});
		
	});
	
	function delFun(id){
		if(confirm("您确认删除？")){
			location.assign("/manage/security/organization/del.html?id="+id); 
		}
	}
</script>  