<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<!--   <meta http-equiv="X-UA-Compatible" content="IE=edge" > -->
<!-- ===============更改标题=============== -->
<title>第二组OA 2 | Dashboard</title>
<jsp:include page="head.jsp"></jsp:include>
</head>

<body class="hold-transition skin-blue sidebar-mini">
	<div class="content-wrapper">
		<iframe allowtransparency="true" frameborder="0" width="385"
			height="96" scrolling="no"
			src="https://tianqi.2345.com/plugin/widget/index.htm?s=1&z=1&t=0&v=0&d=3&bd=0&k=&f=&ltf=009944&htf=cc0000&q=1&e=1&a=1&c=54511&w=385&h=96&align=right"></iframe>
		<img alt="崩坏3图片" src="<%=path%>/static/dist/img/credit/benghua3.jpg">
		<!-- /.col -->
		<!-- 功能显示开始 -->

		<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>