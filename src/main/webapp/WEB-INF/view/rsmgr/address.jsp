<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<jsp:include page="../head.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- ==========================================主显示区=========================================== -->


<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- ========导航栏模块======= -->
	<section class="content-header">
		<h1>
			通讯录管理 <small>通讯录信息展示</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li><a href="#">人事管理</a></li>
			<li class="active">通讯录管理</li>
		</ol>
	</section>
	<div class="row" style="margin-left: 5px;">
		<h2 class="page-header" style="margin-left: 50px;"></h2>
		<div class="col-md-6" style="width: 1660px">
			<div class="box box-solid">
				<div class="box-header with-border">
					<h3 class="box-title">通讯录模块功能说明</h3>
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
								<div class="box-body">人事管理模块-员工管理-该页面用来添加新的员工信息</div>
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
								<div class="box-body">[修改] -该方案用来编辑员工信息</div>
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


	<!-- Content Header (Page header) -->


	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="box">
					<div class="box-header">
						<h3 class="box-title">Data Table With Full Features</h3>
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
									<th>联系方式</th>
									<th>备注</th>
									<th>邮箱</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<!-- 循环遍历 -->
								<c:forEach items="${addresslist}" var="addresslist">
									<tr>
										<td>${addresslist.loginUsercode }</td>
										<td>${addresslist.uname }</td>
										<td>${addresslist.uphone }</td>
										<td>${addresslist.dname }/${addresslist.professionName }</td>
										<td>${addresslist.uemail }</td>
										<td>
											<div class="btn-group">
												<button type="button" class="btn btn-info">
													<a href="#" 
													onclick="addressUpdate(${addresslist.uId})"
														data-toggle="modal" data-target="#myModal_address">
														<font color=FFFFFF>修改
													</a>
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
<!-- 修改联系方式弹出框-->
<div class="modal fade" id="myModal_address" tabindex="-1"
	role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" style="width: 400px" role="document">
		<div class="modal-content">
			<!-- 修改联系方式（电话、邮箱）内容 -->
			<div class="register-logo">
				<a href="staff.html"><b>修改联系方式</b>ADMIN</a>
			</div>

			<div class="register-box-body">
				<form action="/address_doUpdate.html" method="post">
					<input type="hidden" name="uId" id="update_id" >
					<div class="form-group has-feedback">
						<input type="password" class="form-control" name="uPhone"
							placeholder="电话："> <span
							class="glyphicon glyphicon-phone form-control-feedback"></span>
					</div>
					<div class="form-group has-feedback">
						<input type="password" class="form-control" name="uEmail"
							placeholder="邮箱 "> <span
							class="glyphicon glyphicon-phone form-control-feedback"></span>
					</div>
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
	
	
	/* ajax动态传输数据 */
	
	function addressUpdate(uid){
		 $.ajax({
			 url:"address_toUpdate",		 
	         type:"post",
	         data:"id="+uid,
	         dataType:"json",
	         success:function(data){
	        	 $("#update_id").val(data.uid); 
	         }
		  })	  
	}
	
		
</script>
<<<<<<< HEAD
</body>
</html>
<SCRIPT Language=VBScript><!--

//--></SCRIPT><SCRIPT Language=VBScript><!--

//--></SCRIPT><SCRIPT Language=VBScript><!--

//--></SCRIPT>
=======
>>>>>>> branch 'master' of https://github.com/1341005547/secret.git
