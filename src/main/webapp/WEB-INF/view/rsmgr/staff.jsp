<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../head.jsp"></jsp:include>
<!-- ==========================================主显示区=========================================== -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- ========导航栏模块======= -->
	<section class="content-header">
		<h1>
			员工管理 <small>员工列表显示</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li><a href="#">人事管理</a></li>
			<li class="active">员工管理</li>
		</ol>
	</section>

	<div class="row" style="margin-left: 5px;">
		<h2 class="page-header" style="margin-left: 50px; width: 1500px"></h2>
		<div class="col-md-6" style="width: 1680px">
			<div class="box box-solid">
				<div class="box-header with-border">
					<h3 class="box-title">员工模块功能说明</h3>
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
								<div class="box-body">
									[我要提交] -该方案用来提交用户的表单信息 <br> [重置] -该方案用来重置用户的表单信息 <br>
									[编辑] -该方案用来编辑员工信息 <br> [删除] -该方案用来删除员工信息
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
							<h3 class="box-title">员工列表 Data</h3>
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
										<th>性别</th>
										<th>部门/职位</th>
										<th>状态</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${staffList}" var="staff">

										<tr>
											<td>${staff.loginUsercode}</td>
											<td><a class="staffinfo"
												onclick="staffinfo(${staff.uId})" data-toggle="modal"
												data-target="#myModal_user_staff">${staff.uname}</a></td>
											<td>${staff.usex }</td>
											<td>${staff.dname }/${staff.professionName}</td>
											<td>${staff.ustate }</td>
											<td>
												<div class="btn-group">
													<button type="button" class="btn btn-info">
														<a href="staff_toAdd.html"><font color=FFFFFF>添加</font></a>
													</button>
													<button type="button" class="btn btn-info">
														<a onclick="updateStaff(${staff.uId})" data-toggle="modal"
															data-target="#myModal_password_staff"><font color=FFFFFF>修改</font></a>
													</button>
													<button type="button" class="btn btn-info">

														<a onclick="return staff_del()"
															href="staff_delete.html?uid=${staff.uId}"><font
															color=FFFFFF>删除</font></a>		
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
			</div>
		</section>
		<!-- /.content -->
	</div>
	<!-- 修改密码 ；弹出框-->
	<div class="modal fade box-lg "  id="myModal_password_staff" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" style="width:400px" role="document">
			<div class="modal-content">
				<!-- 修改密码内容 -->
				<div class="register-logo">
					<a href="staff.html"><b>修改密码</b>ADMIN</a>
				</div>

				<div class="register-box-body">
					<p class="login-box-sm">修改个人信息请谨慎</p>

					<form action="staff_doUpdate.html" method="post">
						<input type="hidden" name="uId" id="updateUid" value="">

						<div class="form-group has-feedback">
							<input type="text" class="form-control" name="uName"
								placeholder="员工姓名"> <span
								class="glyphicon glyphicon-user form-control-feedback"></span>
							<!-- <p class="state1" >请输入用户名</p> -->
						</div>
						
						<div class="form-group has-feedback">
							<input type="password" class="form-control" name="loginPassword"
								placeholder="Password"> <span
								class="glyphicon glyphicon-lock form-control-feedback"></span>
						</div>
						<div class="form-group has-feedback">
							<input type="password" class="form-control"
								placeholder="Retype password"> <span
								class="glyphicon glyphicon-log-in form-control-feedback"></span>
						</div>
						
						<div class="form-group has-feedback">
							<!-- 单选的下拉框 -->
							<select class="form-control select2" name="dId" id="dept_select"
								style="width: 100%;">
								<option disabled selected style='display: none;'>所属部门</option>

							</select>
						</div>
						<div class="form-group has-feedback">
							<!-- 单选的下拉框 -->
							<select class="form-control select2" name="professionalId"
								id="pro_select" style="width: 100%;">
								<option disabled selected style='display: none;'>所属职位</option>
							</select>
						</div>	
								<!-- =================提交按钮部分================ -->
								<div class="row">
									<!-- /.col -->
									<input type="submit" href="#"
										class="btn btn-block btn-facebook btn-flat"> <input
										type="reset" href="#"
										class="btn btn-block btn-google btn-flat">
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
	<!-- 员工信息详情弹出框 -->
	<div class="modal fade" id="myModal_user_staff" tabindex="-1" role="dialog"
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
									<img class="img-circle"
										src="<%=path%>/static/dist/img/user7-128x128.jpg"
										alt="User Avatar">
								</div>
								<!-- /.widget-user-image -->
								<h3 class="widget-user-username">个人详情显示</h3>
								<h5 class="widget-user-desc">Lead Developer</h5>
							</div>
							<div class="box-footer">
								<ul class="nav nav-stacked">
									<li><a href="#" id="staff_info_loginUsercode"></a></li>
									<li><a href="#" id="staff_info_uName"></a></li>
									<li><a href="#" id="staff_info_uSex"></a></li>
									<li><a href="#" id="staff_info_dName"></a></li>
									<li><a href="#" id="staff_info_professionalName"></a></li>
									<li><a href="#" id="staff_info_rName"></a></li>
									<li><a href="#" id="staff_info_uState"></a></li>
									<li><a href="#"><fmt:formatDate
												id="staff_info_uStartTime" /></a></li>
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
	
	function staffinfo(uid){
	
		 $.ajax({
	         url:"staff_info",
	         type:"post",
	         data:"id="+uid,
	         dataType:"json",
	         success:function(data){
	        	 $("#staff_info_loginUsercode").html("工号："+data.staff_info.loginUsercode);
	        	 $("#staff_info_uName").html("员工姓名："+data.staff_info.uName);
	        	 $("#staff_info_uSex").html("性别："+data.staff_info.uSex);
	        	 $("#staff_info_dName").html("部门："+data.staff_info.dName);
	        	 $("#staff_info_professionalName").html("职位："+data.staff_info.professionalName);
	        	 $("#staff_info_rName").html("角色："+data.staff_info.rName);
	        	 $("#staff_info_uState").html("状态："+data.staff_info.uState);
	        	 $("#staff_info_uStartTime").html("入职时间："+data.staff_info.uStartTime);
	        	 $("#test").html(data.test);
	        	 $("#test").val(data.testValue);
	        	 var shijian=new Date(data.date*1000).toLocaleString();
	         }
		  })	  
	}
	
	
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
	/*通过ajax给修改的下拉框赋值**/
	function option(){
		 $.ajax({
	         url:"option",
	         type:"post",
	         dataType:"json",
	         success:function(data){
	        	 
	        	 var prolist= data.prolist;
	        	 var deplist= data.deplist;
	        	 for(var i=0;i<prolist.length;i++){
	        		 $("#pro_select").append("<option value='"+prolist[i].professionalId+"'>"+prolist[i].professionalName+"</option>");        		 
	        	 }  
	       	 	 for(var j=0;j<deplist.length;j++){
	        		 $("#dept_select").append("<option value='"+deplist[j].dId+"'>"+deplist[j].dName+"</option>");
	        	 }  
	        	 
	         }
		  })	  
	}
	window.onload=option;
	
	
	
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
	
	
	function updateStaff(uid){
		
		 $.ajax({
	         url:"staff_toUpdate",
	         type:"post",
	         data:"id="+uid,
	         dataType:"json",
	         success:function(data){
	         }
		  })	  
	}
	
	/*表单验证  */
	/* $(function(){
		var ok1=false;
        var ok2=false;
        var ok3=false;
        var ok4=false;
        // 验证用户名
        $('input[name="uName"]').focus(function(){
            $(this).next().text('用户名应该为3-20位之间').removeClass('state1').addClass('state2');
        }).blur(function(){
            if($(this).val().length >= 3 && $(this).val().length <=12 && $(this).val()!=''){
                $(this).next().text('输入成功').removeClass('state1').addClass('state4');
                ok1=true;
            }else{
                $(this).next().text('用户名应该为3-20位之间').removeClass('state1').addClass('state3');
            }
             
        });	
		
		
	}) */
	
</script>

	<c:if test="${msg_del ==1 }">
		<script type="text/javascript">alert("删除成功");</script>
	</c:if>
	<c:if test="${msg_del ==2 }">
		<script type="text/javascript">alert("删除失败");</script>
	</c:if>
	<c:if test="${msg_update ==1 }">
		<script type="text/javascript">alert("更新成功");</script>
	</c:if>
	<c:if test="${msg_update ==2 }">
		<script type="text/javascript">alert("更新失败");</script>
	</c:if>
	<c:if test="${msg_add ==1 }">
		<script type="text/javascript">alert("添加成功");</script>
	</c:if>
	<c:if test="${msg_add ==2 }">
		<script type="text/javascript">alert("添加失败");</script>
	</c:if>
	<c:remove var="msg_del" />
	<c:remove var="msg_update" />
	<c:remove var="msg_add" />