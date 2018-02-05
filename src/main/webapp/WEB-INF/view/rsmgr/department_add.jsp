<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 2 | Registration Page</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet"
	href="<%=path%>/static/bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="<%=path%>/static/bower_components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="<%=path%>/static/bower_components/Ionicons/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="<%=path%>/static/dist/css/AdminLTE.min.css">
<!-- iCheck -->
<link rel="stylesheet"
	href="<%=path%>/static/plugins/iCheck/square/blue.css">



<!-- Google Font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition register-page">



	<div class="register-box">
		<div class="register-logo">
			<a href="department.html"><b>Admin</b>LTE</a>
		</div>

		<div class="register-box-body">
			<p class="login-box-msg">创建一个新的部门</p>

			<form action="department_add.html" method="post">
				<div class="form-group has-feedback">
					<input name="dId" type="text" class="form-control"
						placeholder="部门id"> <span
						class="glyphicon glyphicon-user form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="text" class="form-control" name="dName"
						placeholder="部门名称"> <span
						class="glyphicon glyphicon-user form-control-feedback"></span>
				</div>

				<!-- =================提交按钮部分================ -->
				<div class="row">
					<!-- /.col -->
					<input type="submit" href="department.html"
						class="btn btn-block btn-facebook btn-flat"> <input
						type="reset" href="#" class="btn btn-block btn-google btn-flat">
					<!-- /.col -->
				</div>
			</form>
			<div class="row" style="margin-top: 5px">
				<a href="back_department.html"> <input type="button" value="返回"
					class="btn btn-block btn-success btn-flat">
				</a>
			</div>
		</div>
		<!-- /.form-box -->
	</div>
	<!-- /.register-box -->
	<!-- ================动态按钮提示测试====================== -->




	<!-- =================foot部分 样式链接部分================== -->
	<!-- jQuery 3 -->
	<script
		src="<%=path%>/static/bower_components/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script
		src="<%=path%>/static/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- iCheck -->
	<script src="<%=path%>/static/plugins/iCheck/icheck.min.js"></script>
	<script>
		$(function() {
			$('input').iCheck({
				checkboxClass : 'icheckbox_square-blue',
				radioClass : 'iradio_square-blue',
				increaseArea : '20%' /* optional */
			});
		});
	</script>
</body>
</html>
