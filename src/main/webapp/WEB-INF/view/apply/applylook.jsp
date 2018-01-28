<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="../head.jsp"></jsp:include>
<link href="<%=path %>/static/bower_components/css/templatemo_style.css" rel="stylesheet" type="text/css" />

    <link href="<%=path %>/static/bower_components/fonts/css/font-awesome.min.css" rel="stylesheet">
    <link href="<%=path %>/static/bower_components/css/animate.min.css" rel="stylesheet">

    <!-- Custom styling plus plugins -->
    <link href="<%=path %>/static/bower_components/css/custom.css" rel="stylesheet">
    <link rel="<%=path %>/static/bower_components/stylesheet" type="text/css" href="css/maps/jquery-jvectormap-2.0.1.css" />
    <link href="<%=path %>/static/bower_components/css/icheck/flat/green.css" rel="stylesheet">
    <link href="<%=path %>/static/bower_components/css/floatexamples.css" rel="stylesheet" />
<script type="text/javascript">
	function Check(name) {

	
		//点击返回跳转的路径
		if (name == 'logout') {
			document.contact.action = "myapply";
		}
	}
</script>
</head>

<body class="hold-transition skin-blue sidebar-mini">


	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper"
		style='margin-top: 55px; margin-left: -2px'>
		<!-- Content Header (Page header) -->

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<span>${error}</span>
			<section class="content-header">
				<div class="panel panel-default">
					<h1 style="color:red">
						查看申请 <small>Look application</small>
					</h1>
					<div id="panel-element-288445" class="panel-collapse in">
						<div class="panel-body">申报管理模块-查看申请-该页面信息</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<a class="panel-title collapsed" data-toggle="collapse"
							data-parent="#panel-614238" href="#panel-element-862650" style="color:blue">操作介绍</a>
					</div>
					<div id="panel-element-862650" class="panel-collapse collapse">
						<div class="panel-body">
							<p>[返回] -该方案用来返回我的申请页面</p>
							
							
						</div>
					</div>
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-md-6">
						<h1 class="box-title">查看详情</h1>

						<form action="" id="contact" method="post" name="contact">
						<input type="hidden" name="id" value="${user.uId }"/>
						<input type="hidden" name="aId" value="${apply.aId }"/>
							<table border="0">
							
								<tr>
									<td><label for="name"><h2>申请人姓名：</h2></label></td>

									
									<td><input type="text" name="name" readonly="only"
										width="209px" height="26" value="${apply.uName }" /></td>
									
								</tr>
			
								<tr>

									<td><label for="type"><h2>申请类型：</h2></label></td>




									<td><input type="text" readonly="only" value="${apply.tName }"/></td>
								</tr>
								<tr>
									<td><label><h2>申请事件</h2></label></td>
								</tr>
								<tr>
									<td><textarea name="apply" cols="" rows="" readonly="only" style="resize: none">${apply.aEven }</textarea><em
										style="color: #F00">&nbsp;</em></td>
								</tr>
								<tr>
									<td><h2>
											 &nbsp;&nbsp; <input
												type="submit" value="返回" id="logout"
												onclick="return Check('logout')" name="logout"
												class="submit_btn float_l" />
												</td>
									</h2>
								</tr>
	
							</table>
						</form>


					</div>
				</div>
			</section>



		</div>

		<div class="control-sidebar-bg"></div>





		<jsp:include page="../foot.jsp"></jsp:include>
</body>
</html>

