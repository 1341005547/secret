<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 2 | Advanced form elements</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<link rel="stylesheet" href="<%=path%>/static/plugins/iCheck/all.css">
<link rel="stylesheet"
	href="<%=path%>/static/bower_components/bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css">
<link rel="stylesheet"
	href="<%=path%>/static/plugins/timepicker/bootstrap-timepicker.min.css">
<link rel="stylesheet"
	href="<%=path%>/static/bower_components/select2/dist/css/select2.min.css">
<link rel="stylesheet" href="<%=path%>/static/dist/css/AdminLTE.min.css">
<link rel="stylesheet"
	href="<%=path%>/static/dist/css/skins/_all-skins.min.css">


<link
	href="https://cdn.bootcss.com/bootstrap/4.0.0-beta.3/css/bootstrap-grid.css"
	rel="stylesheet">
<link href="<%=path%>/static/css/templatemo_style.css" rel="stylesheet"
	type="text/css" />

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">




<script type="text/javascript"
	src="<%=path%>/static/css/jquery-3.1.1.js"></script>

<%-- <script type="text/javascript" src = "<%=path %>/static/layer/mobile/layer.js"></script> --%>
<script type="text/javascript"
	src="<%=path%>/static/css/jquery-3.1.1.js"></script>
<SCRIPT LANGUAGE="JavaScript">
	$(document)
			.ready(
					function() {
						$("#chk_SelectALL").click(function() {
							if ($(this).is(":checked")) {
								$("#table111 :checkbox").prop("checked", true);
							} else {
								$("table :checkbox").prop("checked", false);
							}
						});

						//select标签----左
						$("#selectLeft")
								.click(
										function() {
											$("#selectLeft option:selected")
													.each(
															function() {
																$(
																		"#selectRight")
																		.append(
																				"<option value="
																						+ $(
																								this)
																								.val()
																						+ " selected='selected'>"
																						+ $(
																								this)
																								.html()
																						+ "</option>");
																$(this)
																		.remove();
															});
										});
						//select标签----右
						$("#selectRight").click(
								function() {
									$("#selectRight option:selected").each(
											function() {
												$("#selectLeft").append(
														"<option value="
																+ $(this).val()
																+ ">"
																+ $(this)
																		.html()
																+ "</option>");//这个方法是默认在后面添加
												//$("#selectLeft option:first").before("<option value=" + $(this).val() + ">" + $(this).html() + "</option>"); //此种方法是在select前面加内容
												//$("#selectLeft option[value=3]").before("<option value=" + $(this).val() + ">" + $(this).html() + "</option>"); //此种方法是在selectt指定某一行加内容
												$(this).remove();
											});
						var obj = document.getElementById(selectRight);
						for(i=0;i<obj.length;i++){
						 /*  if(obj[i].value == something) */
						    obj[i].selected = true;
						}
								});
						
					});
</SCRIPT>

<script type="text/javascript">

	function fromCheck() {
		var selectUser123 = document.getElementById("selectUser123").value;
		//alert(selectUser123);
		$.ajax({
			//几个参数需要注意一下
			url : "power_give/"+selectUser123,//url
			type : "POST",//方法类型
			dataType :"json",//预期服务器返回的数据类型
			contentType: "application/json; charset=utf-8",//此处不能省略
			/* data : {
				"selectUser123" : selectUser123
			},//提交的内容 */
			success : function(map) {
				//登陆用户创建的角色集合
				var role_list = map.role_list;
				//uid对应的角色集合
				var uIdRole_list = map.uIdRole_list;
				
				if(uIdRole_list!=null){
					document.getElementById("selectLeft").options.length = 0;
					document.getElementById("selectRight").options.length = 0;
					for(var i=0;i<uIdRole_list.length;i++){
						$("#selectRight").append("<option "+" selected='selected' "+" value="+uIdRole_list[i].rId+">"+uIdRole_list[i].rName+"</option>");
					};
					for(var i=0;i<role_list.length;i++){
						
						$("#selectLeft").append("<option value="+role_list[i].rId+">"+role_list[i].rName+"</option>");
					}
				};
				
				
				//alert("成功");
			},
		 	error : function() {
				alert("异常！");
			} 
		});
	};


  	  function submitCheck() {
		//var selectUser123 = document.getElementById("selectUser123").value;
		var select = document.getElementById("selectRight");
		var selectCon = [];
		
		for (var i = 0; i < select.length; i++) {
			selectCon.push(select[i].value);
		}
		if (selectCon==null||selectCon=="") {
			alert("未添加角色");
			return false;
		}
		
		return true;
	}   
	
  	function lookUser(uId){
    	//alert(uId);
    	var permissionName;
    	$.ajax({
			url:"power_give_lookAjax",
			type:"POST",
			dateType:"json",
			data:"uId="+uId,
			success:function(map){
				//alert("success");
				
				//alert(map.give_Time);
				$('#ul_look li span').remove();
				$("#li3").append("<span>"+map.give_Time+"</span>");
				$("#li1").append("<span>"+map.user.uName+"</span>");
				for (var x of map.r_name_list) {
					$("#li2").append("<span>"+x+"&nbsp"+"</span>");
					//alert("x.rName");
				};
				$("#li4").append("<span>"+map.user.uState+"</span>");
				$("#li5").append("<span>"+map.user.uStartTime+"</span>");

				
			},
			error:function(){
				alert("error!")
			}
		});
    	
    	//alert(rr);
    	//alert("完成Ajax");
    	
    }
	 
</script>

<style type="text/css">
table {
	line-height: 30px;
}
</style>

</head>

<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<header class="main-header"> </header>
		<jsp:include page="../head.jsp" />

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper" style='overflow: auto ! important;'>
			<!-- Content Header (Page header) -->

			<div id="content">
				<section class="content-header">
				<div class="container">
					<div class="row clearfix">
						<div class="col-md-12 column">
							<div class="panel-group" id="panel-614238">
								<div class="panel panel-default">
									<h2>&nbsp;&nbsp;&nbsp;&nbsp;权限分配</h2>
									<h5>
										<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;操作说明</strong>
									</h5>
									<div class="panel-heading">
										<a class="panel-title" data-toggle="collapse"
											data-parent="#panel-614238" href="#panel-element-288445">模块说明</a>
									</div>
									<div id="panel-element-288445" class="panel-collapse in">
										<div class="panel-body">授权管理模块-权限分配-用于分配当前用户的权限给子级</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<a class="panel-title collapsed" data-toggle="collapse"
											data-parent="#panel-614238" href="#panel-element-862650">操作介绍</a>
									</div>
									<div id="panel-element-862650" class="panel-collapse collapse">
										<div class="panel-body">
											<p>[我要提交] -该方案用来提交用户的表单信息</p>
											<p>[重置] -该方案用来重新清空用户的表单信息</p>
											<p>[禁用] -该方案用来禁用该角色的权限</p>
											<p>[删除选中] -该方案用来删除被选中的角色</p>
											<p>[删除] -该方案用来删除角色</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>













				</section>

				<!-- Main content -->
				<section class="content">
				<div class="container-fluid">
					<div class="row-fluid">
						<div class="span12">
							<div class="accordion" id="accordion-354281">







								<div id="contact_form">
									<h5>
										<strong>权限设定操作</strong>
									</h5>
									<form method="post" name="contact" action="/power_give_refer" id="formlll">

										<label for="author">员工姓名: </label>
										<div class="span9" style="width: 200px; margin-left: 0px;">
											<select id="selectUser123" style="width: 200px" name="userId"
												onchange="fromCheck()">
												<c:forEach items="${user_list }" var="user">
													<option value="${user.uId }">${user.uName }</option>
												</c:forEach>

											</select>
										</div>
										<em style="color: #F00">&nbsp;*</em>
										<div class="cleaner h10"></div>


										<table>
											<tr>
												<td>
													<p>可添加角色:
													<p /> <select size='10' multiple id="selectLeft"
													style="width: 200px">
														<c:forEach items="${role_list }" var="role">
															<option value="${role.rId }">${role.rName }</option>
														</c:forEach>

												</select>
												</td>
												<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
												<td><p>已添加角色:
													<p /> <select size='10' multiple id="selectRight"
													style="width: 200px" name="selectRight">
												</select></td>
											</tr>
										</table>



										<em style="color: #F00">&nbsp;*</em>
										<div class="cleaner h10"></div>

										<input type="submit" value="我要提交" id="submit" name="submit"
											class="submit_btn float_l" onclick="return submitCheck()"/>
										<!-- onclick="return check()"   <input type="reset" value="重置"
											id="reset" name="reset" class="submit_btn float_r" /> -->

									</form>
								</div>
								<div class="cleaner"></div>
								<br /> <br /> <br />
								<h5>
									<strong>权限结果</strong>
								</h5>
								<table width="700px" cellspacing="0" cellpadding="5"
									id="table111">
									<thead>
									<tr bgcolor="#CCCCCC">
										<th width="60" align="left"></th>
										<th width="100" align="left">编号</th>
										<th width="100" align="left">用户名</th>
										<th width="100" align="left">角色名称</th>
										<th width="100" align="left">授权时间</th>
										<th width="150" align="left">操作</th>
									</tr>
									</thead>
									<tbody>
									
									
									
									<c:forEach items="${list}" var="obj">
										<tr>
											<td><!-- <input name="selectSub" type="checkbox" /> --></td>
											<td>${obj.user.uId}</td>
											<td>${obj.user.uName}</td>
											<td><c:forEach items="${obj.role_name_list }"
													var="r_name">
													${r_name}
												</c:forEach></td>
											<td>${obj.giva_power_time }</td>
											<td><a href="#" class="more" data-toggle="modal" data-target="#myModal_user"  onclick="lookUser(${obj.user.uId})">查看</a></td>
										</tr>
									</c:forEach>
									</tbody>
								</table>
							</div>
							<div class="cleaner"></div>
						</div>
						<!-- END of main -->

						<!-- END of footer -->
					</div>


	<!-- 个人详情 -->
		<div class="modal fade" id="myModal_user" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog modal-sm" role="document">
				<div class="modal-content">
					<!-- 内容-->
					<div class="widget-user-header bg-yellow">
						<div class="widget-user-image">
							<img class="img-circle"
								src="<%=path%>/static/dist/img/user7-128x128.jpg"
								alt="User Avatar">
						</div>
					</div>
					<div class="box-footer">
						<ul class="nav nav-stacked" id="ul_look">
							
							<li><div >员工姓名：<a id="li1"></a></div></li>
							<li><div >拥有角色：<a id="li2"></a></div></li>
							<%-- <li><a href="#">所在部门：${dept.dName }</a></li> --%>
							<%-- <li><a href="#">目前职位：${professional.professionalName }</a></li> --%>
							<li><div >授权时间：<a id="li3"></a></div></li>
							<%-- <li><a href="#">角色：
						<c:forEach items="${roles}" var="r">${r.rName },</c:forEach>
						</a></li> --%>
							<li><div >目前状态：<a id="li4"></a></div></li>
							<li><div >入职时间：<a id="li5"></a></div></li>
						</ul>
							
					</div>
					<!-- 内容-->
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					</div>
				</div>
			</div>
		</div>



					<div class="data"
						style="position: fixed; bottom: 10px; right: 20px; z-index: 10;">
						<button class="btn tip" title="该方案用于返回该页面顶部">顶部</button>
						<button class="btn tip" title="该方案用于快速查看公告">公告</button>
						<button class="btn tip" title="该方案用于快速查看信箱">邮箱</button>

					</div>

					<div class="data "
						style="position: fixed; bottom: 10px; left: 20px; z-index: 10;">
						<button class="btn tip" title="当前时间: 2013-02-20 14:24 星期五">当前时间</button>
						<button class="btn tip" title="该方案用于快速查看通讯录"
							id="jDialog_default_button">通讯录</button>
					</div>

					<div class="dialog" id="jDialog_default"
						style="display: none; z-index: 5;" title="公司通讯录">
						<p>
							<em>*&nbsp; [部门] 职位-姓名-联系电话</em>
						</p>
						<ul class="sidebar_menu">
							<li><strong>[项目部]</strong> 部门经理-张三-13213052102</li>
							<li><strong>[项目部]</strong> 部门经理-张三-13213052102</li>
							<li><strong>[项目部]</strong> 部门经理-张三-13213052102</li>
							<li><strong>[项目部]</strong> 部门经理-张三-13213052102</li>
							<li><strong>[项目部]</strong> 部门经理-张三-13213052102</li>
							<li><strong>[项目部]</strong> 部门经理-张三-13213052102</li>
							<li><strong>[项目部]</strong> 部门经理-张三-13213052102</li>
							<li><strong>[项目部]</strong> 部门经理-张三-13213052102</li>
							<li><strong>[项目部]</strong> 部门经理-张三-13213052102</li>
							<li><strong>[项目部]</strong> 部门经理-张三-13213052102</li>
						</ul>
					</div>










					<!-- /.box-body -->
				</div>
				</section>
			</div>
		</div>
		<jsp:include page="../foot.jsp" />
	</div>

	<script>
		$(function() {
			//Initialize Select2 Elements
			$('.select2').select2()

			//Datemask dd/mm/yyyy
			$('#datemask').inputmask('dd/mm/yyyy', {
				'placeholder' : 'dd/mm/yyyy'
			})
			//Datemask2 mm/dd/yyyy
			$('#datemask2').inputmask('mm/dd/yyyy', {
				'placeholder' : 'mm/dd/yyyy'
			})
			//Money Euro
			$('[data-mask]').inputmask()

			//Date range picker
			$('#reservation').daterangepicker()
			//Date range picker with time picker
			$('#reservationtime').daterangepicker({
				timePicker : true,
				timePickerIncrement : 30,
				format : 'MM/DD/YYYY h:mm A'
			})
			//Date range as a button
			$('#daterange-btn').daterangepicker(
					{
						ranges : {
							'Today' : [ moment(), moment() ],
							'Yesterday' : [ moment().subtract(1, 'days'),
									moment().subtract(1, 'days') ],
							'Last 7 Days' : [ moment().subtract(6, 'days'),
									moment() ],
							'Last 30 Days' : [ moment().subtract(29, 'days'),
									moment() ],
							'This Month' : [ moment().startOf('month'),
									moment().endOf('month') ],
							'Last Month' : [
									moment().subtract(1, 'month').startOf(
											'month'),
									moment().subtract(1, 'month')
											.endOf('month') ]
						},
						startDate : moment().subtract(29, 'days'),
						endDate : moment()
					},
					function(start, end) {
						$('#daterange-btn span').html(
								start.format('MMMM D, YYYY') + ' - '
										+ end.format('MMMM D, YYYY'))
					})

			//Date picker
			$('#datepicker').datepicker({
				autoclose : true
			})

			//iCheck for checkbox and radio inputs
			$('input[type="checkbox"].minimal, input[type="radio"].minimal')
					.iCheck({
						checkboxClass : 'icheckbox_minimal-blue',
						radioClass : 'iradio_minimal-blue'
					})
			//Red color scheme for iCheck
			$(
					'input[type="checkbox"].minimal-red, input[type="radio"].minimal-red')
					.iCheck({
						checkboxClass : 'icheckbox_minimal-red',
						radioClass : 'iradio_minimal-red'
					})
			//Flat red color scheme for iCheck
			$('input[type="checkbox"].flat-red, input[type="radio"].flat-red')
					.iCheck({
						checkboxClass : 'icheckbox_flat-green',
						radioClass : 'iradio_flat-green'
					})

			//Colorpicker
			$('.my-colorpicker1').colorpicker()
			//color picker with addon
			$('.my-colorpicker2').colorpicker()

			//Timepicker
			$('.timepicker').timepicker({
				showInputs : false
			})
		})
	</script>
</body>

	
	<script>
 $(function () {
	 $('#table111').DataTable({ 
			"pagingType": "simple_numbers",//设置分页控件的模式  
		         searching: false,//屏蔽datatales的查询框  
		         aLengthMenu:[5,10],//设置一页展示10条记录  
		        
		         "oLanguage": {  //对表格国际化  
		            "sLengthMenu": "每页显示 _MENU_条",    
		            "sZeroRecords": "没有找到符合条件的数据",    
		        //  "sProcessing": "&lt;img src=’./loading.gif’ /&gt;",    
		            "sInfo": "当前第 _START_ - _END_ 条　共计 _TOTAL_ 条",    
		            "sInfoEmpty": "木有记录",    
		            "sInfoFiltered": "(从 _MAX_ 条记录中过滤)",    
		            "sSearch": "搜索：",    
		            "oPaginate": {    
		            "sFirst": "首页",    
		            "sPrevious": "前一页",    
		            "sNext": "后一页",    
		            "sLast": "尾页"    
		                   
		            }    
		        },

		 })
  })
    
</script>
</html>
