<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
<link rel="stylesheet" href="<%=path%>/static/dist/css/AdminLTE.min.css">
<!-- iCheck -->
<link rel="stylesheet"
	href="<%=path%>/static/plugins/iCheck/square/blue.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<!-- Google Font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition register-page">

	<div class="register-box">
		<div class="register-logo">
			<a href="staff.html"><b>Admin</b>LTE</a>
		</div>

		<div class="register-box-body">
			<p class="login-box-msg">创建一个新的员工</p>

			<form action="staff_doAdd.html" method="post">
				<!-- <div class="form-group has-feedback">
        <input type="text" class="form-control" placeholder="员工的照片">
        <span class="glyphicon glyphicon-picture form-control-feedback"></span>
        <img src="照片的路径" style="width:100px;height:100px;"/>
        <input type="submit" value="自定义头像" id="submit2" name="submit2" class="submit_btn float_r" />
      </div> -->
				<div class="form-group has-feedback">
					<input type="text" class="form-control" name="uName"
						placeholder="员工 姓名"> <span
						class="glyphicon glyphicon-user form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="text" class="form-control" name="loginUsercode"
						placeholder="员工编号"> <span
						class="glyphicon glyphicon-user form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<select class="form-control select2" name="uSex"
						style="width: 100%;">
						<option value='' disabled selected style='display: none;'>员工性别</option>
						<option>男</option>
						<option>女</option>
					</select>
				</div>

				<div class="form-group has-feedback">
					<input type="password" class="form-control" name="loginPassword"
						placeholder="密码"> <span
						class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">

					<input type="password" class="form-control" name="loginPassword1"
						placeholder="重复密码"> <span
						class="glyphicon glyphicon-log-in form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="password" class="form-control" name="uPhone"
						placeholder="电话"> <span
						class="glyphicon glyphicon-phone form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="password" class="form-control" name="uEmail"
						placeholder="邮箱"> <span
						class="glyphicon glyphicon-phone form-control-feedback"></span>
				</div>

				<!-- <div class="form-group has-feedback">
          单选的下拉框
          <select class="form-control select2" name="dId" style="width: 100%;">
                  <option value='' disabled selected style='display:none;'>所属机构</option>
                  <option>清华同方</option>
                  <option>北大青鸟</option>
                  <option>云和数据</option>
                  <option>达内</option>
                  <option>黑马</option>
                  <option>尚学堂</option>
          </select>
      </div> -->
				<div class="form-group has-feedback">
					<!-- 单选的下拉框 -->
					<select class="form-control select2" name="dId"
						style="width: 100%;" id="dept_select">
						<!-- 遍历 -->
						<option value='' disabled selected style='display: none;'>所属部门</option>
					

					</select>
				</div>

				<div class="form-group has-feedback">
					<!-- 单选的下拉框 -->
					<select class="form-control select2" name="professionalId"
						style="width: 100%;" id="pro_select">
						<option value='' disabled selected style='display: none;'>所属职位</option>
					</select>
				</div>

				<div class="form-group has-feedback">
					<!-- 单选的下拉框 -->
					<select class="form-control select2" name="uState"
						style="width: 100%;">
						<!-- <option selected="selected" ><span color=#7b7b7b7b>员工的状态(预览)</span></option> -->
						<option value='' disabled selected style='display: none;'>员工的状态(预览)</option>
						<!-- 遍历 -->
						<option>在职</option>
						<option>请假</option>
						<option>休假</option>
					</select>
				</div>
				<!-- =================提交按钮部分================ -->
				<div class="row">
					<!-- /.col -->
					<input type="submit" href="staff.html"
						class="btn btn-block btn-facebook btn-flat"> 
					<input type="reset" href="#" class="btn btn-block btn-google btn-flat">
					
					<!-- /.col -->
				</div>
			</form>
			<!-- 返回按钮 -->
			<div class="row" style="margin-top: 5px">
			<a href="back_staff.html">
			<input type="button"  value="返回" 
			class="btn btn-block btn-success btn-flat" >
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
		
		
		/*通过ajax给修改的下拉框赋值**/
		function option(){
			 $.ajax({
		         url:"option",
		         type:"post",
		         dataType:"json",
		         success:function(data){
		        	 
		        	 var prolist= data.prolist;
		        	 var deplist= data.deplist;
		        	 for(var i=0;i<prolist.length;i++){
		        		 $("#pro_select").append("<option value='"+prolist[i].professionalId+"'>"+prolist[i].professionalName+"</option>");        		 
		        	 }  
		       	 	 for(var j=0;j<deplist.length;j++){
		        		 $("#dept_select").append("<option value='"+deplist[j].dId+"'>"+deplist[j].dName+"</option>");
		        	 }  
		        	 
		         }
			  })	  
		}
		window.onload=option;
	</script>

</body>
</html>

