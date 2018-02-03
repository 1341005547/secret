<%@page import="org.springframework.ui.Model"%>
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

    <%-- <link href="<%=path %>/static/bower_components/fonts/css/font-awesome.min.css" rel="stylesheet"> --%>
    <link href="<%=path %>/static/bower_components/css/animate.min.css" rel="stylesheet">

    


<script type="text/javascript">
	function Check(name) {

		//点击我要提交跳转的路径
		if (name == 'submit') {
			document.contact.action = "submitOrSava";
			alert("提交成功！");
		}

		//点击我要保存跳转的路径
		if (name == 'stype') {
			document.contact.action = "savaOrsubmit";
			alert("保存成功！");
		}

		//点击调度，并进行提交跳转的路径
		if (name == 'submits') {
			document.contact.action = "dispatchToSubmit";
			alert("提交成功！");
		}
	}
</script>
</head>

<body class="hold-transition skin-blue sidebar-mini">

	
 
 <c:if test="${!empty message }">
 	<script type="text/javascript">  
           alert("${message}");
           
    </script>
    <c:remove var="message"/>
 </c:if>
 

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper"
		style='margin-top: 0px; margin-left: -2px'>
		<!-- Content Header (Page header) -->

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<span>${error}</span>
			<section class="content-header">
				<div class="panel panel-default">
					<h1 style="color: red">
						我的申请 <small>My application</small>
					</h1>

					<ol class="breadcrumb">
						<li><a href="#"><i class="fa fa-dashboard"></i>申报管理模块</a></li>
						<li><a href="#">我的申请</a></li>
						<li class="active">该页面信息</li>
					</ol>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<a class="panel-title collapsed" data-toggle="collapse"
							data-parent="#panel-614238" href="#panel-element-862650"
							style="color: blue">操作介绍</a>
					</div>
					<div id="panel-element-862650" class="panel-collapse collapse">
						<div class="panel-body">
							<p>[草稿箱] -该方案能进行提交，编辑，删除</p>
							<p>[申请列表] -该方案进行查看已提交申报表</p>
							<p>[我要提交] -该方案用来提交用户的表单信息</p>
							<p>[我要保存] -该方案用来保存用户的表单信息</p>
							<p>[重置] -该方案用来重置用户的表单信息</p>
							<p>[提交] -该方案用来提交申请信息</p>
							<p>[查看] -该方案用来查看申请信息</p>
							<p>[编辑] -该方案用来修改申请信息</p>
							<p>[删除] -该方案用来删除申请信息</p>
						</div>
					</div>
			</section>

			<section class="content">
				<div class="row">
					<div class="col-md-6">
						<h1 class="box-title">调任申请</h1>

						<form action="" id="contact" method="post" name="contact">
							

								
	
								<tr>

									<td><label for="type"><h3>点击申请：</h3></label></td>

									 <a class="btn btn-default btn-flat" data-toggle="modal"
										data-target="#myapply_dispatch">调度</a>


										<div class="modal fade" id="myapply_dispatch" tabindex="-1"
											role="dialog" aria-labelledby="myModalLabel">
											<div class="modal-dialog role="
												document" style="width: 450px">
												<div class="modal-content">
													<!-- 内容-->
													<div class="row">
														<div class="col-md-4" style="margin: 13px; width: 450px">

															<div class="box box-widget widget-user-2">

																<form action="" method="post">
																	<input type="hidden" name="uId" value="${user.uId }" />
																	<input type="hidden" name="dept" value="${dept.dId }" />
																	<input type="hidden" name="pro"
																		value="${professional.professionalId }" />
																	<div class="form-group has-feedback">
																		<h3 style="color: red">调度申请人</h3>
																		<input type="text" class="form-control"
																			placeholder="调度申请人" readonly="readonly"
																			value="${user.uName }">
																	</div>
																	<div class="form-group has-feedback">
																		<h3 style="color: red">当前部门</h3>
																		<input type="text" class="form-control"
																			placeholder="当前部门" readonly="readonly"
																			value="${dept.dName }">
																	</div>

																	<div class="form-group has-feedback">
																		<h3 style="color: red">当前职位</h3>
																		<input type="text" class="form-control"
																			placeholder="当前职位" readonly="readonly"
																			value="${professional.professionalName }">

																	</div>

																	<div class="form-group has-feedback">
																		<h3 style="color: red">要调动到的部门</h3>
																		<!-- <input type="text"  class="form-control" placeholder="要调动的部门" > -->
																		<select name="deptid" class="required input_field"
																			id="deptid">
																			<option selected="selected">-这还是默认的(请选择)</option>
																			<c:forEach items="${list3 }" var="list3">
																				<option value="${list3.dId }">${list3.dName }</option>
																			</c:forEach>

																		</select>
																	</div>
																	<div class="form-group has-feedback">
																		<h3 style="color: red">要调动到的职位</h3>
																		<!-- <input type="text"  class="form-control" placeholder="要调动的职位"> -->
																		<select name="profess" class="required input_field"
																			id="professid">
																			<option selected="selected">-这还是默认的(请选择)</option>
																			<c:forEach items="${list4 }" var="list4">
																				<option value="${list4.professionalId }">${list4.professionalName }</option>
																			</c:forEach>

																		</select>
																	</div>


																	<div class="row">

																		<input type="submit"
																			class="btn btn-block btn-facebook btn-flat"
																			onclick="Check('submits')" value="提交" id="submits"
																			name="submits"> <input type="reset"
																			class="btn btn-block btn-google btn-flat">

																	</div>
																</form>

															</div>
														</div>
													</div>
													<!-- 内容-->
													<div class="modal-footer">
														<button type="button" class="btn btn-default"
															data-dismiss="modal">关闭</button>
													</div>
												</div>
											</div>
											
										</div>
										</tr>
										
										</form>
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-md-6">
						<h1 class="box-title">其余申请</h1>

						<form action="" id="contact" method="post" name="contact">
							<input type="hidden" name="id" value="${user.uId }" />
							<table border="0">

								<tr>
									<td><label for="name"><h3>申请人姓名：</h3></label></td>


									<td><input type="text" name="name" readonly="only"
										width="209px" height="26" value="${user.uName }"/></td>
								</tr>
	
								<tr>

									<td><label for="type"><h3>申请类型：</h3></label></td>

									<td><select name="select" class="required input_field"
										id="type">
											<option selected="selected">-这还是默认的(请选择)</option>
											<c:forEach items="${list2 }" var="list2">

												<option value="${list2.tId }">${list2.tName }</option>
											</c:forEach>
									</select><em style="color: #F00">&nbsp;</em> </td>
								</tr>
								<tr>
									<td><label><h3>申请事件</h3></label></td>
								</tr>
								<tr>
									<td><textarea name="apply" style="width: 200px;height: 60px;max-width: 200px;max-height: 60px;min-width: 200px;min-height: 60px;"></textarea><em
										style="color: #F00">&nbsp;</em></td>
								</tr>
								<tr>
									<td><h3>
											<input type="submit" onclick="Check('submit')" value="我要提交"
												id="submit" name="submit" class="submit_btn float_l" />&nbsp;&nbsp;
											<input type="submit" value="我要保存" id="submit2"
												onclick="Check('stype')" name="stype"
												class="submit_btn float_l" /> <input type="reset"
												value="重置" id="reset" name="reset"
												class="submit_btn float_r" /></td>
									</h3>
								</tr>

							</table>
						</form>


					</div>
				</div>
			</section>
			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-xs-12">
						<div class="box">
							<div class="box-header">
								<h3 class="box-title">申请草稿箱 or 申请列表</h3>
							</div>


							<!-- /.box-header -->
							<div class="box-body">
								<table id="example1" class="table table-bordered table-striped"
									cellpadding="0" cellspacing="0" border="1px">
									<!-- 遍历循环传递数据 -->
									<!-- ============表头============= -->


									<thead>
										<tr>
											<!-- <th width="80" align="left"><input id="chk_SelectALL"
											 type="checkbox" name="controlAll"
											 />全选</th> -->
											<th>申请编号</th>
											<th>申请人</th>
											<th>申请时间</th>
											<th>类型</th>
											<th>状态</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${list }" var="list">
											<%-- <c:if test="${list.aSubmit==0}"> --%>
											<tr>

												<!-- <td><input type="checkbox" name="selectSub" /></td> -->
												<td>${list.aId }</td>
												<td>${list.uName }</td>
												<td><fmt:formatDate value="${list.aCreateTime}"
														pattern="yyyy-MM-dd hh:mm:ss" /></td>
												<td>${list.tName }</td>
												<td>${list.aState }</td>


												<td><c:if test="${list.aSubmit==0}">
														<a href="toSubmit?aId=${list.aId }" class="more"
															onclick="if(confirm('确定提交吗?')==false)return false;">提交</a>&nbsp;
													
													<a href="toSave?aId=${list.aId }" class="more"
															onclick="if(confirm('确定编辑吗?')==false)return false;">编辑</a>&nbsp;<a
															href="toDelete?aId=${list.aId }" class="more"
															onclick="if(confirm('确定删除吗?')==false)return false;">删除</a></td>
											</tr>
											</c:if>
											<c:if test="${list.aSubmit==1}">


												<a href="toLook?aId=${list.aId }" class="more"
													onclick="if(confirm('确定查看吗?')==false)return false;">查看</a>
												</td>
												</tr>
											</c:if>
										</c:forEach>
									</tbody>

								</table>



							</div>
							<!-- /.box -->
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
			</section>

			<!-- /.content -->
		</div>

		<div class="control-sidebar-bg"></div>





		<jsp:include page="../foot.jsp"></jsp:include>
		<!-- 分页 -->

		<script>
			$(function() {

				$('#example1').DataTable({

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
		</script>
</body>
</html>

