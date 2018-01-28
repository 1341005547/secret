<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	



           <br />
           	<h5><strong>出勤详情</strong></h5>
               
    <table id="example2" class="table table-bordered table-striped">
                   	  
			<tr>
                <td width="152" height="40" align="center">姓名：</td>
                <td width="234">${manualData.user.uName}</td>
              </tr>
				<tr>
                <td height="40" align="center">部门：</td>
                <td>${manualData.deptName}</td>
              </tr>
              <tr>
                <td height="40" align="center">职位：</td>
                <td>${manualData.professional.professionalName }</td>
              </tr>
              <tr>
                <td height="40" align="center">时间：</td>
                <td>${manualData.month}</td>
              </tr>
              <tr>
                <td height="40" align="center">应签：</td>
                <td>${manualData.per}</td>
              </tr> 
<tr>
                <td height="40" align="center">实签：</td>
                <td>${manualData.quantity}</td>
              </tr> 

              <c:forEach items="${monthSum}" var="ms">
             
              <tr>
                <td height="40" align="center">${ms.manualResult}：</td>
                <td>${ms.monthQuality}</td>
              </tr> 
              
              </c:forEach>
				
			
			</table>
			
			<a href="toinline.html" class="more float_l">返回列表</a>
<!-- 主体结束-->
			</section>
  </div>
<jsp:include page="../foot.jsp"></jsp:include>
</body>
</html>