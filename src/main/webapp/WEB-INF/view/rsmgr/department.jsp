<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../head.jsp"></jsp:include>
<!-- ==========================================主显示区=========================================== -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- ========导航栏模块======= -->
	<section class="content-header">
		<h1>
			部门管理 <small>部门信息展示</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li><a href="#">人事管理</a></li>
			<li class="active">部门管理</li>
		</ol>
	</section>
	<!-- ==========模块说明模板============ -->
	<div class="row" style="margin-left: 5px;">
		<h2 class="page-header" style="margin-left: 50px; width: 1500px"></h2>
		<div class="col-md-6" style="width: 1660px">
			<div class="box box-solid">
				<div class="box-header with-border">
					<h3 class="box-title">管理模块功能说明</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<div class="box-group" id="accordion">
						<!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
						<div class="panel box box-primary">
							<div class="box-header with-border">
								<h4 class="box-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapseOne"> 模块说明 </a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="box-body">人事管理模块-部门管理-该页面用来添加新的部门信息</div>
							</div>
						</div>
						<div class="panel box box-danger">
							<div class="box-header with-border">
								<h4 class="box-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapseTwo"> 操作介绍 </a>
								</h4>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse">
								<div class="box-body">
								[我要提交] -该方案用来提交用户的表单信息 <br>
								[重置] -该方案用来重置用户的表单信息 <br>
								[编辑] -该方案用来编辑部门信息 <br>
								[删除] -该方案用来删除部门信息</div>
							</div>
						</div>
						<div class="panel box box-success">
							<div class="box-header with-border">
								<h4 class="box-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapseThree"> 注意事项 </a>
								</h4>
							</div>
							<div id="collapseThree" class="panel-collapse collapse">
								<div class="box-body">这里可以填写该模块操作需要注意的事项，或者其他备注</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /.box -->
		</div>
	</div>





	<!-- =========列表模板=========== -->
	<!-- Content Header (Page header) -->


	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="box">
					<div class="box-header">
						<h3 class="box-title">部门列表 Date</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<table id="example1" class="table table-bordered table-striped">
							<!-- 遍历循环传递数据 -->
							<!-- ============表头============= -->
							<thead>
								<tr>
									<th>编号</th>
									<th>姓名</th>
									<th>部门编号</th>
									<th>部门/职位</th>
									<th>当前状态</th>
									<th>操作</th>

								</tr>
							</thead>
							<tbody>
								<c:forEach var="matterDept" items="${list}">
									<tr>
										<td>${matterDept.uid}</td>
										<td>${matterDept.uname}</td>
										<td>${matterDept.deptId }</td>
										<td>${matterDept.deptName}/${matterDept.professionalName }</td>
										<td>${matterDept.ustate}</td>
										<td>
											<div class="btn-group">
												<button type="button" class="btn btn-info">
													<a href="todepartment_add.html"><font color=FFFFFF>添加</a>
												</button>
												<button type="button" class="btn btn-info">
													<a onclick="updateDept(${matterDept.deptId })"
														data-toggle="modal" data-target="#myModal_password"><font
														color=FFFFFF>修改</a>
												</button>
												<button type="button" class="btn btn-info">
													<a href="dept_delete.html?deptId=${matterDept.deptId }"><font
														color=FFFFFF>删除</a>
												</button>
											</div>
										</td>
									</tr>
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


<!-- 修改部门管理员信息 ；弹出框-->
<div class="modal fade" id="myModal_password" tabindex="-1"
	role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" style="width: 400px" role="document">
		<div class="modal-content">
			<!-- 修改密码内容 -->
			<div class="register-logo">
				<a href="staff.html"><b>完善部门信息</b>ADMIN</a>
			</div>

			<div class="register-box-body">
				<p class="login-box-sm">添加部门经理</p>

				<form action="department_update.html" method="post">
					<input type="hidden" name="uid" id="updateUid" value="">
					<div class="form-group has-feedback">
						<input type="text" class="form-control" name="uId"
							placeholder="新经理id"> <span
							class="glyphicon glyphicon-user form-control-feedback"></span>
					</div>
					<div class="form-group has-feedback">
						<input type="text" class="form-control" name="#"
							placeholder="新经理姓名"> <span
							class="glyphicon glyphicon-user form-control-feedback"></span>
					</div>
					<div class="form-group has-feedback">
						<!-- 单选的下拉框 -->
						<select class="form-control select2" name="dId"
							style="width: 100%;">
							<option value='' disabled selected style='display: none;'>分配部门</option>
							<c:forEach items="${deptList}" var="dept" varStatus="state">
								<option value="${dept.dId }">${dept.dName}</option>
							</c:forEach>
						</select>
					</div>
					<!-- 暂时没有机构 -->
					<!-- <div class="form-group has-feedback">
						单选的下拉框
						<select class="form-control select2" style="width: 100%;">
							<option selected="selected"><span color=#7b7b7b7b>所属机构</span></option>
							<option>Alaska</option>
							<option>California</option>
							<option>Delaware</option>
							<option>Tennessee</option>
							<option>Texas</option>
							<option>Washington</option>
						</select>
					</div> -->
					<!-- =================提交按钮部分================ -->
					<div class="row">
						<!-- /.col -->
						<input type="submit" href="#"
							class="btn btn-block btn-facebook btn-flat"> <input
							type="reset" href="#" class="btn btn-block btn-google btn-flat">
						<!-- /.col -->
					</div>
				</form>
			</div>
			<!-- 结束-->
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
			</div>
		</div>
	</div>
</div>
<!-- =============================foot=================================== -->
<jsp:include page="../foot.jsp"></jsp:include>
<!-- page script -->
<script>
	$(function() {
		$('#example1').DataTable({
			aLengthMenu : [ 5, 10, 20, 50, 100 ],//设置一页展示10条记录  
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
			}
			
		})
		$('#example2').DataTable({
			'paging' : true,
			'lengthChange' : false,
			'searching' : false,
			'ordering' : true,
			'info' : true,
			'autoWidth' : false
		})
	})
	
	
	/* function updateDept(dispatchId){
		 $.ajax({
	         url:"post_info",
	         type:"post",
	         data:"dispatchId="+dispatchId,
	         dataType:"json",
	         success:function(data){
	        	 $("#dispatchId").html("调动信息编号："+data.staf_info.dispatchId);
	        	 $("#uname").html("员工姓名："+data.staf_info.uname);
	        	 $("#loginUsercode").html("被调动登陆编号："+data.staf_info.loginUsercode);
	        	 $("#beforePost").html("调动前职务："+data.staf_info.beforePost);
	        	 $("#afterPost").html("调动后职位："+data.staf_info.afterPost);
	        	 $("#dispatchName").html("调动处理人名字："+data.staf_info.dispatchName);
	        	 $("#dispatchCreateTime").html("调动申请创建时间："+data.staf_info.dispatchCreateTime);
	        	 $("#dispatchResult").html("调动审批结果："+data.staf_info.dispatchResult);
	        	 $("#dispatchOpinion").html("调动处理人意见："+data.staf_info.dispatchOpinion);
	        	 $("#dispatchNote").html("调动请求标注："+data.staf_info.dispatchNote);
	
	        	 var shijian=new Date(data.date*1000).toLocaleString();
	         }
		  })	  
	} */
	/* 完成部门更新 */
	
	
	function updateStaff(uid){
		
		 $.ajax({
	         url:"staff_toUpdate",
	         type:"post",
	         data:"id="+uid,
	         dataType:"json",
	         success:function(data){
	        	 $("#updateUid").val(data.uid);	        	
	         }
		  })	  
	}
</script>


