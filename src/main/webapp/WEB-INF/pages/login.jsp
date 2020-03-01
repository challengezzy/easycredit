<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/top.jsp" %>
<body class="login_page">
<!-- 页面代码开始 -->
<div id="wrap">
	<div class="container">
		<div class="login_logo"><h1>管理后台</h1></div>
		<div class="login_content  tooltip-show popover-show">
			<!-- 登录框开始 -->
			<form class="login-form" action="${ctx}/manage/loginin.html" method="post" id="inputForm">
				<h2 class="form-title">用户登录</h2>
				<div class="form-group ">
					<div class="input-group" data-toggle="popover" data-placement="top" data-content="请输入帐号，数字和字母组成，长度6~15个字符。">
						<label class="input-group-addon"><span class="glyphicon glyphicon-user"></span> 帐号：</label> 
						<input name="userName" class="form-control" type="text"  placeholder="请输入帐号">
						<div class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-chevron-down"></span></button>
						</div>
					</div>
				</div>
				<div class="form-group ">
					<div class="input-group" data-toggle="popover" data-placement="top" data-content="请输入密码，密码区分大小写。">
						<label class="input-group-addon"><i class="icon-key "></i>密码：</label>
						<input name="passWord" class="form-control" type="password" placeholder="请输入密码" />
					</div>
				</div>
				<div class="form-group text-right">
					记住密码
					<div class="make-switch switch-small" data-on="success" data-off="primary" data-on-label="开" data-off-label="关" data-text-label="">
						<input type="checkbox" checked="CHECKED">
					</div>
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-primary btn-block"><span class="glyphicon glyphicon-ok"></span> 登 录</button>
				</div>
				<div class="forget-password">
					<p>忘记密码？请点击 
						<a href="javascript:;" data-toggle="modal" data-target="#login-findpasswd" data-backdrop="static">这里</a>找回。
					</p>
				</div>
				<div class="create-account">
					<p>还没有帐号？
						 <a href="javascript:;" data-toggle="modal" data-target="#login-reg" data-backdrop="static">马上注册</a>。
					</p>
				</div>
			</form>
			<!-- 登录框结束 -->

			<!-- Modal弹出框 -->
			<div class="modal fade" id="login-reg" tabindex="-1" role="dialog" aria-labelledby="login-reg-title" aria-hidden="true">
				<div class="modal-dialog">
					<form class="form-vertical register-form " action="login.jsp" method="post">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">
									<i class="icon-remove"></i>
								</button>
								<h3 class="modal-title" id="login-reg-title">用户注册</h3>
							</div>
							<div class="modal-body">
								<!-- 用户注册开始 -->
								<span class="help-block">注册新的帐号，请认真填写下列信息。</span>
								<div class="form-group ">
									<div class="input-group" data-toggle="popover"
										data-placement="top" data-content="请输入帐号，数字和字母组成，长度6~15个字符。">
										<label class="input-group-addon"><span
											class="glyphicon glyphicon-user"></span> 帐号：</label> <input
											type="text" class="form-control" name="username"
											placeholder="请输入帐号">
									</div>
								</div>
								<div class="form-group ">
									<div class="input-group" data-toggle="popover"
										data-placement="top" data-content="请输入密码，密码区分大小写。">
										<label class="input-group-addon"><i class="icon-key "></i>
											密码：</label> <input class="form-control" type="password"
											placeholder="请输入密码" name="password" />
									</div>
								</div>
								<div class="form-group ">
									<div class="input-group" data-toggle="popover"
										data-placement="top" data-content="请再次输入密码，密码区分大小写。">
										<label class="input-group-addon"><i class="icon-key "></i>
											密码：</label> <input class="form-control" type="password"
											placeholder="请再次输入密码" name="password" />
									</div>
								</div>
								<div class="form-group " data-toggle="popover"
									data-placement="top" data-content="请输常用邮箱，用于找回密码。">
									<div class="input-group">
										<label class="input-group-addon"><i
											class="icon-envelope"></i> 邮箱：</label> <input class="form-control"
											type="text" placeholder="请输入密保邮箱" name="password" />
									</div>
								</div>
								<div class="form-group " data-toggle="popover"
									data-placement="top" data-content="请选择正确的选项。">
									<div class="input-group">
										<label class="input-group-addon"><i
											class="icon- icon-align-justify"></i> 选项：</label> <select
											class="form-control">
											<option>选项一</option>
											<option>选项二</option>
											<option>选项三</option>

										</select>
									</div>
								</div>
								<div class="form-group ">


									<label class="checkbox-inline"> <input type="checkbox"
										id="inlineCheckbox1" value="option1"> 复选一
									</label> <label class="checkbox-inline"> <input
										type="checkbox" id="inlineCheckbox2" value="option2">
										复选二
									</label> <label class="checkbox-inline"> <input
										type="checkbox" id="inlineCheckbox3" value="option3">
										复选三
									</label>

								</div>
								<div class="form-group ">


									<label class="radio-inline"> <input type="radio"
										name="optionsRadios1" value="option1"> 单选一
									</label> <label class="radio-inline"> <input type="radio"
										name="optionsRadios1" value="option2"> 单选二
									</label> <label class="radio-inline"> <input type="radio"
										name="optionsRadios1" value="option3"> 单选三
									</label>


								</div>

								<div class="form-group ">

									<span class="help-block">多行输入框。</span>
									<textarea class="form-control" rows="3" placeholder="多行输入框"></textarea>

								</div>
								<!-- 用户注册结束 -->
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default pull-left">
									<i class="icon-arrow-left"></i> 上一步
								</button>
								<button type="button" class="btn btn-default"
									data-dismiss="modal">
									<i class="icon-remove"></i> 取消
								</button>
								<button type="button" class="btn btn-primary">
									<i class="icon-arrow-right"></i> 下一步
								</button>
								<button type="button" class="btn btn-primary">
									<i class="icon-ok"></i> 完成
								</button>
							</div>
						</div>
					</form>
				</div>
			</div>

			<!-- Modal弹出框 -->
			<div class="modal fade" id="login-findpasswd" tabindex="-1"
				role="dialog" aria-labelledby="login-findpasswd-title"
				aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<form class="form-vertical forget-form " action="#" method="post">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">
									<i class="icon-remove"></i>
								</button>
								<h3 class="modal-title" id="login-findpasswd-title">找回密码</h3>
							</div>
							<div class="modal-body">
								<!-- 找回密码开始 -->
								<span class="help-block">请输入你要找回密码的的帐号。</span>
								<div class="form-group ">
									<div class="input-group" data-toggle="popover"
										data-placement="top" data-content="请输入你要找回密码的的帐号">
										<label class="input-group-addon"><span
											class="glyphicon glyphicon-user"></span> 帐号：</label> <input
											type="text" class="form-control" name="username"
											placeholder="请输入帐号">
									</div>
								</div>

								<div class="form-group" data-toggle="popover"
									data-placement="top" data-content="请输入注册帐号绑定的邮箱。">
									<div class="input-group">
										<label class="input-group-addon"><i
											class="icon-envelope"></i> 邮箱：</label> <input class="form-control"
											type="text" placeholder="请输入密保邮箱" name="password" />
									</div>
								</div>

								<!-- 找回密码结束 -->
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default pull-left">
									<i class="icon-arrow-left"></i> 上一步
								</button>
								<button type="button" class="btn btn-default"
									data-dismiss="modal">
									<i class="icon-remove"></i> 取消
								</button>
								<button type="button" class="btn btn-primary">
									<i class="icon-arrow-right"></i> 下一步
								</button>
								<button type="button" class="btn btn-primary">
									<i class="icon-ok"></i> 完成
								</button>
							</div>
						</form>
					</div>
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
				"userName":{required:true},
				"passWord":{required:true}
			}
		});
	});
</script>  