<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>	
<jsp:include page="../head.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- ==========================================主显示区=========================================== -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- ========导航栏模块======= -->
	<section class="content-header">
		<h1>
			调动管理 <small>调动信息展示</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li><a href="#">人事管理</a></li>
			<li class="active">调动管理</li>
		</ol>
	</section>

	<div class="row" style="margin-left: 5px;">
		<h2 class="page-header" style="margin-left: 50px; width: 1500px"></h2>
		<div class="col-md-6" style="width: 1680px">
			<div class="box box-solid">
				<div class="box-header with-border">
					<h3 class="box-title">调用模块功能说明</h3>
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
								<div class="box-body">人事管理模块-调动管理-该页面用来展示员工调动信息</div>
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
								<div class="box-body">[查看信息详情] -该方案用来查看员工调度信息详情</div>
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
									<th>调动人</th>
									<th>创建时间</th>
									<th>调动前职位</th>
									<th>调动后职位</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list}" var="postDispatch">
									<tr>
										<td>${postDispatch.loginUsercode}</td>
										<td>${postDispatch.uname }</td>
										<td> <fmt:formatDate value="${postDispatch.dispatchCreateTime}" pattern="yyyy年MM月dd日-HH:mm:ss"/></td>
										<td>${postDispatch.beforePost}</td>
										<td>${postDispatch.afterPost}</td>
										<td>
											<div class="btn-group">
												<button type="button" class="btn btn-info">
													<!-- 添加弹框的样式 -->
													<!-- href="post_info.html" -->
													<a class="staffinfo"
														onclick="staffinfo(${postDispatch.dispatchId})"
														data-toggle="modal" data-target="#myModal_user_post"><font
														color=FFFFFF>查看详细信息</font></a>
												</button>
												<%-- <button type="button" class="btn btn-info">
													<a href="delPost?id=${postDispatch.dispatchId}"
														onclick="return staff_del()">
														<font color=FFFFFF>删除</font></a>
												</button> --%>
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
		</div>
	</section>
	<!-- /.content -->
</div>






<div class="modal fade" id="myModal_user_post" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog role=" document" style="width: 450px">
		<div class="modal-content">
			<!-- 内容-->
			<div class="row">
				<div class="col-md-4" style="margin: 13px; width: 450px">
					<!-- Widget: user widget style 1 -->
					<div class="box box-widget widget-user-2">
						<!-- Add the bg color to the header using any of the bg-* classes -->
						<div class="widget-user-header"
							style="width: 440px; background-color: orange">
							<div class="widget-user-image">
								<img class="img-circle" src="../dist/img/user7-128x128.jpg"
									alt="User Avatar">
							</div>
							<!-- /.widget-user-image -->
							<h3 class="widget-user-username">个人详情显示</h3>
							<h5 class="widget-user-desc">Lead Developer</h5>
						</div>
						<div class="box-footer">
							<ul class="nav nav-stacked">

								<!-- 把写死的内容通过ajax -->

								<li><a href="#" id="dispatchId"></a></li>
								<li><a href="#" id="uname"></a></li>
								<li><a href="#" id="loginUsercode"></a></li>
								<li><a href="#" id="beforePost"></a></li>
								<li><a href="#" id="afterPost"></a></li>
								<li><a href="#" id="dispatchName"></a></li>
								<li><a href="#" id="dispatchCreateTime"></a></li>
								<li><a href="#" id="dispatchResult"></a></li>
								<li><a href="#" id="dispatchOpinion"></a></li>
								<li><a href="#" id="dispatchNote"></a></li>


							</ul>
						</div>
					</div>
					<!-- /.widget-user -->
				</div>
			</div>
			<!-- 内容-->
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
			</div>
		</div>
	</div>
</div>


<!-- ==========================foot====================== -->
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
	
	/* 王楠杰  */
	function staffinfo(dispatchId){
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
	        	 var shijian=new Date(data.staf_info.dispatchCreateTime).toLocaleString();
	        	 $("#dispatchCreateTime").html("调动申请创建时间："+data.staf_info.dispatchCreateTime);
	        	 $("#dispatchResult").html("调动审批结果："+data.staf_info.dispatchResult);
	        	 $("#dispatchOpinion").html("调动处理人意见："+data.staf_info.dispatchOpinion);
	        	 $("#dispatchNote").html("调动请求标注："+data.staf_info.dispatchNote);
	         }
		  })	  
	}
	
	
	/* 确认提示框 */
	function staff_del(){
        	var con = confirm("是否删除？");
        	//var role_rId = document.getElementById("role_rId").value;
        	//alert(rid);
        	if(con){
        		return true;//如果是true自动进行url跳转
        		
        	}else{
        		return false//如果是false自动取消跳转
        	}
        }
</script>
<c:if test="${msg_del ==1 }">
	<script type="text/javascript">alert("删除成功");</script>
</c:if>
<c:if test="${msg_del ==2 }">
	<script type="text/javascript">alert("删除失败");</script>
</c:if>
<c:remove var="msg_del" />
