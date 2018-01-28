<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>考勤记录</title>
<jsp:include page="../head.jsp"></jsp:include>
<!--时间日期插件  -->
<script type="text/javascript"
	src="<%=path%>/static/plugins/laydate/laydate.js"></script>
<script>
	//执行一个laydate实例
	laydate.render({
		elem : '#title',
		type : 'year'
	});
</script>
</head>
<body class="hold-transition skin-blue sidebar-mini">





	<!-- 主体内容 -->
	<div class="content-wrapper">
		<!-- 导航标题-->
		<section class="content-header">

		<h1>
			出勤记录 <small>Version 2.0</small>
		</h1>

		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">Dashboard</li>
		</ol>
		</section>
		<!-- 主体开始 -->
		<section class="content">
		
  
	

		<div class="box-header with-border">
			<h3 class="box-title">搜索</h3>
		</div>
		<!-- /.box-header --> <!-- form start -->
		<form class="form-horizontal" id="sform" action="toinline.html">
			<div class="box-body">
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-2 control-label">输入年份</label>

					<div class="col-sm-10">
						<input class="form-control" id="title" type="text"
							placeholder="输入年份" onclick="doSearch()" name="search" value="${param.search}"/>
					</div>
				</div>

			</div>
			<div align="center">
				<input type="submit" value="提交" id="submit" name="submit"
					class="submit_btn float_l" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="reset" value="重置" id="reset" name="reset"
					class="submit_btn float_r" />
			</div>
		</form>
		<br />
		<h5>
			<strong>出勤详情</strong>
		</h5>

		<table id="example1" class="table table-bordered table-striped">

			<thead>
				<tr bgcolor="#CCCCCC">
					<th width="60" align="left"><input id="chk_SelectALL"
						type="checkbox" />全选</th>
					<th width="30" align="left">编号</th>
					<th width="120" align="left">月份</th>
					<th width="120" align="left">姓名</th>
					<th width="120" align="left">出勤率</th>
					<th width="150" align="left">操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${manualData}" var="manu">
					<tr>
						<td><input name="selectSub" type="checkbox" /></td>
						<td>${manu.uId}</td>
						<td>${manu.month}</td>
						<td>${manu.user.uName}</td>
						<td>${manu.per}%</td>

						<td><a
							href="toinline-info.html?u_id=${manu.uId}&month=${manu.month}"
							class="more">查看</a></td>
					</tr>
				</c:forEach>

			</tbody>


		</table>
		<!-- 主体结束--> </section>

	</div>

	<jsp:include page="../foot.jsp"></jsp:include>
	<script>
		$(function() {
			$('#example1').DataTable({
				"pagingType" : "simple_numbers",//设置分页控件的模式  
				searching : true,//屏蔽datatales的查询框  
				aLengthMenu : [ 5, 10 ],//设置一页展示10条记录  

				"oLanguage" : { //对表格国际化  
					"sLengthMenu" : "每页显示 _MENU_条",
					"sZeroRecords" : "没有找到符合条件的数据",
					//  "sProcessing": "&lt;img src=’./loading.gif’ /&gt;",    
					"sInfo" : "当前第 _START_ - _END_ 条　共计 _TOTAL_ 条",
					"sInfoEmpty" : "木有记录",
					"sInfoFiltered" : "(从 _MAX_ 条记录中过滤)",
					"sSearch" : "搜索：",
					"oPaginate" : {
						"sFirst" : "首页",
						"sPrevious" : "前一页",
						"sNext" : "后一页",
						"sLast" : "尾页"

					}
				},

			})
		})
		
		function doSearch(index){
	 	
		 document.getElementById("sform").submit();
 		}
	</script>

</body>
</html>