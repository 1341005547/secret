<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%String path=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="<%=path %>/static/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<%=path %>/static/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="<%=path %>/static/bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<%=path %>/static/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="<%=path %>/static/dist/css/skins/_all-skins.min.css">
  <!-- Morris chart -->
  <link rel="stylesheet" href="<%=path %>/static/bower_components/morris.js/morris.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="<%=path %>/static/bower_components/jvectormap/jquery-jvectormap.css">
  <!-- Date Picker -->
  <link rel="stylesheet" href="<%=path %>/static/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="<%=path %>/static/bower_components/bootstrap-daterangepicker/daterangepicker.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="<%=path %>/static/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
  <!-- 管理模块样式 -->
   <link rel="stylesheet" href="<%=path %>/static/bower_components/manage/css/manage.css">
  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
  <link rel="stylesheet" href="<%=path %>/static/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">

<script type="text/javascript">

	function inreg() {
		$.ajax({
			type : "post",
			url : "statisticsinreg", //向springboot请求数据的url
			data : {},
			dataType : "json",
			success : function(data) {
				if($("#spanqq").text().trim()=="[未签到] [未签退]"){
					$("#spanqq").text("[已签到] [未签退]");
					return false;
					}
				if (data.msg == "已签到") {
					alert("您今天已经签过到了");
					
					
					return false;
				}
				return true;
			}
		})

	};
	function outreg() {
		$.ajax({
			type : "post",
			url : "statisticsoutreg", //向springboot请求数据的url
			data : {},
			dataType : "json",
			success : function(data) {
				if($("#spanqq").text().trim()=="[已签到] [未签退]"){
					$("#spanqq").text("[已签到] [已签退]");	
					return false;
					}
				if (data.msg =="未签到") {
					alert('您还没签到，请先签到');
					return false;
				} else if (data.msg =="已签退") {
					
					
					alert('您已经签过退了！');
									
					return false;
				}
				return true;
			}
		});
	};
</script>


</head>
  <body class="hold-transition skin-blue sidebar-mini">
  <div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="index2.html" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>A</b>LT</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>第二组</b>OA</span>
    </a>
    <!-- Header Navbar: style can be found in header.less  判断邮件提醒-->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
         <c:if test="${!empty usercode}">
           <li class="dropdown messages-menu">
             <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-envelope-o"></i>
              <span class="label label-success">4</span>
            </a> 
            <ul class="dropdown-menu">
              <li class="header">You have 4 messages</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li><!-- start message -->
                    <a href="#">
                      <div class="pull-left">
                        <img src="<%=path %>static/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                      </div>
                    </a>
                  </li>
                  <!-- end message -->
                </ul>
              </li>            
              </ul>
          </li>
         </c:if>
         <!-- 签到图标和跳转 -->
       <c:if test="${!empty usercode}">
       				<li class="dropdown notifications-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <i
						class="fa fa-bell-o"></i> <span class="label label-warning">签到</span>
				</a>
					<ul class="dropdown-menu">

						<li>
							<!-- inner menu: contains the actual data -->
							<ul class="menu">
								<li><p align="center"></p></li>
								<li><p align="center">签到信息</p></li>
								<li>
									<p align="center">
										<strong>状态</strong>：
										<span id="spanqq">
										<c:if test="${outmasi==null}">[未签到] [未签退]</c:if>
										<c:if test="${outmasi.omsState==1}">[已签到] [未签退]</c:if>
										<c:if
											test="${outmasi.omsState==0 || outmasi.omsState==2 || outmasi.omsState==3 || outmasi.omsState==4}">[已签到] [已签退]</c:if>
										</span>	  
									</p>
								</li>
								<li>
									<div id="newsletter" align="center">
										<input type="submit" value="签到" title="我要签到"
											class="subscribebtn more"
											style="border-right: #FFF solid 2px" onclick="return inreg()" />
										<input type="submit" value="签退" title="我要签退"
											class="subscribebtn" style="border-right: #FFF solid 2px;"
											onclick="return outreg();" />

									</div>
								</li>

							</ul>
						</li>
						<li class="footer"><a href="#">View all</a></li>
					</ul></li>
       </c:if>
   <!-- _____________________________________________________________________ -->
          <!-- User Account: style can be found in dropdown.less -->
          <!--  -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="<%=path %>static/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
              <span class="hidden-xs">Alexander Pierce</span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="<%=path %>static/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                <p>
                <c:if test="${empty usercode }">
                <a data-toggle="modal" data-target="#myModal_Delete">请先登陆</a>  
               </c:if> 
                <c:if test="${!empty usercode }">
                  <a  data-toggle="modal" data-target="#myModal_user"> ${usercode }</a>
               </c:if> 

              <!-- Menu Footer-->
              <li class="user-footer">
               <!--  <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat">配置文件</a>
                </div> -->
                <div class="pull-right">
                 <c:if test="${!empty usercode}">
                 <a  class="btn btn-default btn-flat" data-toggle="modal" data-target="#myModal_password">修改密码</a>
                 <a href="logout" class="btn btn-default btn-flat">退出</a>
                 </c:if>
                  
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
          <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <!-- ===========================================================侧栏=========================================================== -->
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">首页</li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-laptop"></i> <span>人事管理</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>         
          <ul class="treeview-menu">
            <li><a href="department.html"><i class="fa fa-circle-o"></i> 部门管理</a></li>            
            <li><a href="index2.html"><i class="fa fa-circle-o"></i> 员工管理</a></li>
            <li><a href="index3.html"><i class="fa fa-circle-o"></i> 调动管理</a></li>
            <li><a href="index2.html"><i class="fa fa-circle-o"></i> 通讯录管理</a></li>
          </ul>
        </li>
     <li class="treeview">
          <a href="#">
            <i class="fa fa-files-o"></i> <span>日程管理</span>
            <span class="pull-right-container">
              <span class="fa fa-angle-left pull-right"></span>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="/scheduleempl"><i class="fa fa-circle-o"></i>我的日程</a></li>
            <li><a href="/scheduledept"><i class="fa fa-circle-o"></i>部门日程</a></li>
          </ul>
        </li>
      <!-- 申报管理 -->
             <li class="treeview">
          <a href="#">
            <i class="fa fa-pie-chart"></i>
            <span>申请管理</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li ><a href="myapply"><i class="fa fa-circle-o"></i> 我的申请</a></li>
            <li><a href="applymanage"><i class="fa fa-circle-o"></i>申请管理</a></li>
            <li><a href="reimburseapplymanage"><i class="fa fa-circle-o"></i>报销管理</a></li>
          
          </ul>
        </li>
      <!--  -->
        <!-- 考勤管理 -->
			<li class="treeview"><a href="#"> <i class="fa fa-pie-chart"></i>
					<span>考勤管理</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li ><a href="toinline.html"><i class="fa fa-circle-o"></i>考勤记录</a></li>
					<li><a href="statistics_main"><i class="fa fa-circle-o"></i>部门统计情况</a></li>
					<li><a href="excel_print"><i class="fa fa-circle-o"></i>统计结果导出</a></li>
				</ul></li>
				<!-- 考勤管理 -->
        <li class="treeview">
          <a href="#">
            <i class="fa fa-laptop"></i>
            <span>邮件传递</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">           
            <li><a href="toemail.html"><i class="fa fa-circle-o"></i> 邮箱</a></li>
          </ul>
        </li>
       <li class="treeview">
          <a href="#">
            <i class="fa fa-edit"></i> <span>授权管理</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="power_look.html"><i class="fa fa-circle-o"></i> 我的权限</a></li>
            <li><a href="power_set.html"><i class="fa fa-circle-o"></i> 角色设定</a></li>
            <li><a href="power_give.html"><i class="fa fa-circle-o"></i> 权限分配</a></li>
          </ul>
        </li>
    <!-- 系统管理 -->
      <li class="treeview">
          <a href="#">
            <i class="fa fa-table"></i> <span>系统管理</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
             <li><a href="adver.html">公告管理</a></li>
             <li><a href="loglogin.html">登录日志</a></li>
             <li><a href="operate.html">操作日志</a></li>
             <li><a href="rules.html">守则管理</a></li>
          </ul>
          </ul>
         </li>
        <li>
    <!-- 系统管理 -->
<!--         <li>
          <a href="pages/calendar.html">
            <i class="fa fa-calendar"></i> <span>关于</span>
            <span class="pull-right-container">
              <small class="label pull-right bg-red">3</small>
              <small class="label pull-right bg-blue">17</small>
            </span>
          </a>
        </li> -->

      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>
  
   <!-- 弹出框 -->
   
	<div class="modal fade" id="myModal_Delete" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog modal-sm" role="document">
			<div class="modal-content">
				    <div class="widget-user-header bg-blue">
<%-- 					<div class="widget-user-image">
						<img class="img-circle" src="<%=path %>/static/dist/img/user2-160x160.jpg"
							alt="User Avatar">
					</div> --%>
					<h3 class="widget-user-username">请登录</h3>
				</div>
				<div class="modal-body">
            <form class="form-login" action="tologin" method="post">
		        <div class="login-wrap">
		            <input type="text" class="form-control" placeholder="工号" name="loginUsercode">
		            <br>
		            <input type="password" class="form-control" placeholder="密码" name="loginPassword">
		            <button class="btn btn-theme btn-block" href="index.html" type="submit"><i class="fa fa-lock"></i> 登录</button>		
		        </div>
		      </form>	  			     
				    
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<!-- <button type="button" class="btn btn-primary">Save</button> -->
				</div>
			</div>
		</div>
	</div> 
	
	<!-- 修改密码 ；弹出框-->
  	<div class="modal fade" id="myModal_password" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog modal-sm" role="document">
			<div class="modal-content">
	<!-- 修改密码内容 -->
			<div class="register-logo">
				<a href="staff.html"><b>修改密码</b>ADMIN</a>
			</div>

			<div class="register-box-body" >
				<form
					action=""
					method="post">
					<div class="form-group has-feedback">
						<input type="text" class="form-control" placeholder="Full name">
						<span class="glyphicon glyphicon-user form-control-feedback"></span>
					</div>

					<div class="form-group has-feedback">
						<input type="password" class="form-control" placeholder="Password">
						<span class="glyphicon glyphicon-lock form-control-feedback"></span>
					</div>
					<div class="form-group has-feedback">
						<input type="password" class="form-control"
							placeholder="Retype password"> <span
							class="glyphicon glyphicon-log-in form-control-feedback"></span>
					</div>

					<div class="row">
						<!-- /.col -->
						<input type="submit" href="#"
							class="btn btn-block btn-facebook btn-flat"> <input
							type="reset" href="#" class="btn btn-block btn-google btn-flat">
						<!-- /.col -->
					</div>
				</form>
			</div>
			<!-- /.form-box -->
	<!-- 结束-->
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div> 

<!-- 个人详情 -->
  	<div class="modal fade" id="myModal_user" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog modal-sm" role="document">
			<div class="modal-content">
	<!-- 内容-->
				<div class="widget-user-header bg-yellow">
					<div class="widget-user-image">
						<img class="img-circle" src="<%=path %>/static/dist/img/user7-128x128.jpg"
							alt="User Avatar">
					</div>
				</div>
				<div class="box-footer">
					 <ul class="nav nav-stacked">
						<li><a href="#">员工：${usercode}</a></li>
						<li><a href="#">姓名：${user.uName }</a></li>
						<li><a href="#">性别：${user.uSex }</a></li>
						<li><a href="#">部门：${dept.dName }</a></li>
						<li><a href="#">职位：${professional.professionalName }</a></li>
						<%-- <li><a href="#">角色：
						<c:forEach items="${roles}" var="r">${r.rName },</c:forEach>
						</a></li> --%>
						<li><a href="#">状态：${user.uState }</a></li>
						<li><a href="#">入职时间：<fmt:formatDate value="${user.uStartTime}"/></a></li>
<!-- 						<a href="staff.html"><button type="button"
								class="btn btn-default btn-block"
								style="background: #FF7F50; color: #FFFFFF">返回列表</button></a> -->
					</ul>
				 	
				</div>
			<!-- 内容-->
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div> 
  </body>
</html>