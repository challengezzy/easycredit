<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/top.jsp" %>
<body class="fix_top_nav_padding">
	<div id="wrap">
	<%@ include file="/common/header.jsp" %>
	<div class="container">
	    <div class="row">
	    <div class="col-md-2 ">
	         <%@ include file="/common/left.jsp" %> 
	    </div>
	    <div class="col-md-10 ">
	    <div class="panel panel-default">
	      <div class="panel-heading ">
	        <h3 class="panel-title">新增/编辑用户</h3>
	      </div>
	      <form role="form" id="inputForm" action="${ctx}/manage/security/user/save.html" method="post">
	        <input type="hidden" name="id" value="${user.id }" />
	        <div class="panel-body ">
	          <div class=" tooltip-show form-horizontal">
	            <h4>请填写用户参数<small>（带<b class="color_red">*</b>为必填）</small><hr></h4>
	          	<div class="form-group clearfix col-lg-6" >
	              <label  class="control-label col-sm-4 text-right"><b class="color_red">*</b>用户名：</label>
	              <div class=" col-sm-8">
	                <input  class="form-control" type="text" id="username" name="username" value="${user.username}"  placeholder="请输入用户名,如：zhangsan"/>
	              </div>
              	</div>
              	<div class="form-group clearfix col-lg-6" >
	              <label  class="control-label col-sm-4 text-right"><b class="color_red">*</b>昵称：</label>
	              <div class=" col-sm-8">
	                <input  class="form-control" type="text" id="nickname" name="nickname" value="${user.nickname}" placeholder="请输入昵称,如：张三" />
	              </div>
              	</div>
              	<div class="form-group clearfix col-lg-6" >
	              <label  class="control-label col-sm-4 text-right"><b class="color_red">*</b>密码：</label>
	              <div class=" col-sm-8 ">
	                <input  class="form-control" type="password" id="password" name="password" maxlength="20"  placeholder="请输入密码"/>
	              </div>
              	</div>
              	<div class="form-group clearfix col-lg-6" >
	              <label  class="control-label col-sm-4 text-right">确认密码：</label>
	              <div class=" col-sm-8 ">
	                <input  class="form-control" type="password" id="password2" name="password2" maxlength="20" value=""  placeholder="输入跟密码一致"/>
	              </div>
              	</div>
              	<div class="form-group clearfix col-lg-6" >
	              <label  class="control-label col-sm-4 text-right"><b class="color_red">*</b>手机号码：</label>
	              <div class=" col-sm-8">
	                <input  class="form-control" type="text" id="cellphone" name="cellphone" value="${user.cellphone}" placeholder="请输入手机号码"/>
	              </div>
              	</div>
              	<div class="form-group clearfix col-lg-6" >
	              <label  class="control-label col-sm-4 text-right"><b class="color_red">*</b>邮箱：</label>
	              <div class=" col-sm-8">
	                <input  class="form-control" type="text" id="mail" name="mail" value="${user.mail}" placeholder="请输入邮箱"/>
	              </div>
              	</div>
              	<div class="form-group clearfix col-lg-6" >
	              <label  class="control-label col-sm-4 text-right">公司名称：</label>
	              <div class=" col-sm-8">
	                <input  class="form-control" type="text" id="companyname" name="companyname" value="${user.companyname}" placeholder="请输入公司名称"/>
	              </div>
              	</div>
              	
              	<div class="form-group clearfix col-lg-6" >
	              <label  class="control-label col-sm-4 text-right"><b class="color_red">*</b>组织机构：</label>
	              <div class=" col-sm-8">
	              	<select name="organizationid"  class="form-control" size="1">
						<option value="">--请选择组织机构--</option>
						<c:forEach items="${organizations}" var="obj">
							<option value="${obj.id}" <c:if test="${obj.id==user.organizationid}">selected</c:if>>${obj.organizationname}</option>
						</c:forEach>
					</select>
	              </div>
              	</div>
              	<div class="form-group clearfix col-lg-6" >
	              <label  class="control-label col-sm-4 text-right"><b class="color_red">*</b>用户类型：</label>
	              <div class=" col-sm-8">
	              	  <mt:selectState name="usertype" showType="select" stateType="usertype" value="${user.usertype}" clazz="form-control" emptyString="请选择用户类型"/>
	              </div>
              	</div>
              	<div class="form-group clearfix col-lg-6" >
	              <label class="control-label col-sm-4 text-right">备注：</label>
	              <div class="col-sm-8">
	              	 <textarea name="comments"  class="form-control" placeholder="请输入备注"  rows="3">${user.comments}</textarea>
	              </div>
                </div>
              </div>
      	    </div>
            <div class="panel-footer">
	          <div class=" text-center">
	          	  <a class="btn btn-default" href="${ctx}/manage/security/user/query.html"><i class="icon-remove"></i> 取消</a>
				 <button type="submit" class="btn btn-primary"><i class="icon-ok"></i> 提交</button>
	          </div>
            </div>
          </form>
      	</div>
      </div>
    </div>
    </div>
    </div>
    <%@ include file="/common/footer.jsp" %>
    <script type="text/javascript">
		$(document).ready(function() {
			$("#inputForm").validate({
				rules: {
					"username":{required:true,minlength:1,maxlength:20},
					"password": {required:true,minlength: 1,maxlength:32},
					"password2": {equalTo: "#password"},
					"cellphone": {required: true,mobile:true},
					"mail": {required: true,email:true},
					"usertype":{required: true},
					"nickname":{required: true},
					"organizationid": {required: true}
				},
				messages: {
					"password2": {equalTo: "两次输入的密码不一致"},
					"organizationid":"请选择组织机构",
				}
			});
		});
	</script>
</body>
</html>          
