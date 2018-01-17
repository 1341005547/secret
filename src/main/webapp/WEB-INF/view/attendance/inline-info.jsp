<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String path=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>考勤记录具体信息</title>
<jsp:include page="../head.jsp"></jsp:include>
</head>
<body class="hold-transition skin-blue sidebar-mini">
  <!-- 主体内容 -->
  <div class="content-wrapper">
	<!-- 导航标题-->
   <section class="content-header">
    <h1>
      出勤统计
      <small>Version 2.0</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active">Dashboard</li>
    </ol>
  </section>
  <!-- 主体开始 -->
  <section class="content">
	<div class="callout callout-info">
      <h4>Reminder!</h4>
      Instructions for how to use modals are available on the
      <a href="http://getbootstrap.com/javascript/#modals">Bootstrap documentation</a>
    </div>



           <br />
           	<h5><strong>出勤详情</strong></h5>
               
    <table id="example2" class="table table-bordered table-striped">
                   	  
			<tr>
                <td width="152" height="40" align="center">姓名：</td>
                <td width="234">小一</td>
              </tr>
				<tr>
                <td height="40" align="center">部门：</td>
                <td>人事部</td>
              </tr>
              <tr>
                <td height="40" align="center">职位：</td>
                <td>人事部助理</td>
              </tr>
              <tr>
                <td height="40" align="center">时间：</td>
                <td>2013-09</td>
              </tr>
              <tr>
                <td height="40" align="center">应签：</td>
                <td>30</td>
              </tr> 
<tr>
                <td height="40" align="center">实签：</td>
                <td>25</td>
              </tr> 
<tr>
                <td height="40" align="center">迟到：</td>
                <td>2</td>
              </tr> 
<tr>
                <td height="40" align="center">请假：</td>
                <td>3</td>
              </tr> 
<tr>
                <td height="40" align="center">加班：</td>
                <td>4</td>
              </tr>  
			
			</table>
			
			<a href="#" class="more float_l">返回列表</a>
<!-- 主体结束-->
			</section>
  </div>
<jsp:include page="../foot.jsp"></jsp:include>
</body>
</html>