<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 2 | Advanced form elements</title>
<link rel="stylesheet" href="<%=path%>/static/plugins/iCheck/all.css">
<link rel="stylesheet"
	href="<%=path%>/static/bower_components/bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css">
<link rel="stylesheet"
	href="<%=path%>/static/plugins/timepicker/bootstrap-timepicker.min.css">
<link rel="stylesheet"
	href="<%=path%>/static/bower_components/select2/dist/css/select2.min.css">

<script type="text/javascript"
	src="<%=path%>/static/css/jquery-3.1.1.js"></script>
<link
	href="https://cdn.bootcss.com/bootstrap/4.0.0-beta.3/css/bootstrap-grid.css"
	rel="stylesheet">
<link href="<%=path%>/static/css/templatemo_style.css" rel="stylesheet"
	type="text/css" />


<style type="text/css">
table {
	line-height: 30px;
}
</style>
<SCRIPT LANGUAGE="JavaScript">
	$(document).ready(
			function() {
				//select标签----左
				$("#selectLeft").click(
						function() {
							$("#selectLeft option:selected").each(
									function() {
										$("#selectRight").append(
												"<option value="
														+ $(this).val() +" selected='selected'>"
														+ $(this).html()
														+ "</option>");
										$(this).remove();
									});
						});
				//select标签----右
				$("#selectRight").click(
						function() {
							$("#selectRight option:selected").each(
									function() {
										$("#selectLeft").append(
												"<option value="
														+ $(this).val() +  ">"
														+ $(this).html()
														+ "</option>");//这个方法是默认在后面添加
										//$("#selectLeft option:first").before("<option value=" + $(this).val() + ">" + $(this).html() + "</option>"); //此种方法是在select前面加内容
										//$("#selectLeft option[value=3]").before("<option value=" + $(this).val() + ">" + $(this).html() + "</option>"); //此种方法是在selectt指定某一行加内容
										$(this).remove();
									});
						});

				//全选框
				$("#chk_SelectALL").on("click", function() {
					if ($(this).is(":checked")) {
						$("tbody :checkbox").prop("checked", true);
					} else {
						$("tbody :checkbox").prop("checked", false);
					}
				});

				//重置
				$("#reset").click(
						function() {

							$("#selectRight option").each(
									function() {
										$("#selectLeft").append(
												"<option value="
														+ $(this).val() + ">"
														+ $(this).html()
														+ "</option>");//这个方法是默认在后面添加
										$(this).remove();
									});

						});

			});
</SCRIPT>
<script type="text/javascript">

        function refer() {
        	var select = document.getElementById("selectRight");
            var selectCon = [];
            for(i=0;i<select.length;i++){
            	selectCon.push(select[i].value);
            } 
        	var author = document.getElementById("author").value;
        	var text = document.getElementById("text").value;
        	if(author==null||author==""){
        		alert("角色名称不能为空");
        		//author.focus();
        		return false;
        	} if(text==null||text==""){
        		alert("介绍不能为空");
        		//text.focus();
        		return false;
        	} if(selectCon==null||selectCon==""){
        		alert("权限未分配");
        		//selectRight.focus();
        		return false;
        	}
        	return true;
        	
        }
        
        function delectRole(rid){
        	var con = confirm("是否删除？");
        	//var role_rId = document.getElementById("role_rId").value;
        	//alert(rid);
        	if(con){
        		return true;
        		/* $.ajax({
        			url:"power_set_delAjax",
        			type:"POST",
        			dateType:"json",
        			data:"role_rId="+rid,
        			success:function(r_list){
        				//$("#tbody001").children("tr").deleteRow(this);
        				alert("success");
        			},
        			error:function(){
        				alert("error!")
        			}
        		}); */
        	}else{
        		return false
        	}
        }
        function lookRole(rid){
        	//alert(rid);
        	var permissionName;
        	//alert("进入lookRole()方法");
        	$.ajax({
    			url:"power_set_lookAjax",
    			type:"POST",
    			dateType:"json",
    			data:"role_rId="+rid,
    			success:function(map){
    				//alert("success");
    				$('#ul_look li span').remove();
    				$("#li1").append("<span>"+map.role.rName+"</span>");
    				//alert(map.role.rName);
					for (var x of map.perList) {
						permissionName = x.permissionName;
    					$("#li2").append("<span>"+permissionName+"&nbsp;&nbsp;"+"</span>");
					};
    				$("#li3").append("<span>"+map.r_create_time+"</span>");
    				$("#li4").append("<span>"+map.role.r_Content+"</span>");
    				$("#li5").append("<span>"+map.uName+"</span>");

    				//window.location.href = "power_set.html";//跳转到主页 
    				//alert(rr);
    			},
    			error:function(){
    				alert("error!")
    			}
    		});
        	
        	//alert(rr);
        	//alert("完成Ajax");
        	
        }
        	
    </script>

</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

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
									<h2>&nbsp;&nbsp;&nbsp;&nbsp;角色设定</h2>
									<h5>
										<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;操作说明</strong>
									</h5>
									<div class="panel-heading">
										<a class="panel-title" data-toggle="collapse"
											data-parent="#panel-614238" href="#panel-element-288445">模块说明</a>
									</div>
									<div id="panel-element-288445" class="panel-collapse in">
										<div class="panel-body">
											授权管理模块-角色设定-该页面设定新的权限角色</br>权限所至，谨慎操作
										</div>
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
				<section class="content" style="width:800px">
				<div class="container-fluid">
					<div class="row-fluid">
						<div class="span12">
							<div class="accordion" id="accordion-354281">







								<div id="contact_form">
									<h5>
										<strong>权限设定操作</strong>
									</h5>
									<form method="post" name="contact" action="/power_set_refer"
										onsubimt="return check()" id="formlll">

										<label for="author">新建角色名称</label> <br /> <input type="text"
											id="author" name="author" class="required input_field" /><em
											style="color: #F00">&nbsp;*</em>
										<div class="cleaner h10"></div>
										<br /> <label for="text">角色的描述 </label> <br />
										<textarea id="text" name="text" rows="5" cols="60"
											class="required"></textarea>
										<div class="cleaner h10"></div>
										<br /> <label for="email">角色的权限</label>

										<table>
											<tr>
												<td>
													<p>可添加权限:
													<p /> <select size='10' multiple id="selectLeft"
													style="width: 200px">
														<c:forEach items="${per_list }" var="permission">
															<option value="${permission.permissionId }">${permission.permissionName }</option>
														</c:forEach>

												</select>
												</td>
												<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
												<td><p>已添加权限:
													<p /> <select size='10' multiple id="selectRight"
													style="width: 200px" name="selectRight">
												</select></td>
											</tr>
										</table>




										<div class="cleaner h10"></div>
										<br /> <input type="submit" value="我要提交" id="submit"
											name="submit" onclick="return refer()"
											class="submit_btn float_l" /> <input type="reset" value="重置"
											id="reset" name="reset" class="submit_btn float_r" />

									</form>
								</div>
								<div class="cleaner"></div>
								<br />
								<h5>
									<strong>角色列表</strong>
								</h5>
								<table width="700px" cellspacing="0" cellpadding="5"
									id="example1">
									<thead>
										<tr bgcolor="#CCCCCC">
											<th width="60" align="left"><input id="chk_SelectALL"
												type="checkbox" />
											<!-- 全选 --></th>
											<th width="30" align="left">编号</th>
											<th width="120" align="left">角色名称</th>
											<th width="120" align="left">创建者</th>
											<th width="120" align="left">创建时间</th>
											<th width="150" align="left">操作</th>
										</tr>
									</thead>
									<tbody id="tbody001">
										<c:forEach items="${r_list}" var="role">
											<tr>
												<td>
													<!-- <input name="selectSub" type="checkbox" /> -->
												</td>
												<td>${role.rId}</td>
												<td>${role.rName}</td>
												<td>${create_name}</td>
												<td><fmt:formatDate pattern="yyyy-MM-dd"
														value="${role.r_Create_Time}" type="time" /></td>
												<td><a href="#" class="more" data-toggle="modal" data-target="#myModal_user1" onclick="lookRole(${role.rId})">查看</a>&nbsp;
													<shiro:hasPermission name="权限表格删除操作">
														<a href="power_set_delAjax${role.rId}" class="more" onclick="return delectRole(${role.rId})"> 删除 </a>
													</shiro:hasPermission>	
												</td>
											</tr>
										</c:forEach>

									</tbody>
								</table>

							</div>


							<!-- 角色详情弹出框 -->
							<div class="modal fade" id="myModal_user1" tabindex="-1"
								role="dialog" aria-labelledby="myModalLabel">
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
											<ul class="nav nav-stacked" id="ul_look"><br/>
												<li><div>角色名称：<a id="li1"></a></div></li><br/>
												<li><div>拥有权限：<a id="li2"></a></div></li><br/>
												<li><div>创建时间： <a id="li3"></a></div></li><br/>
												<li><div>角色描述：<a id="li4"></a></div></li><br/>
												<li><div>创建人：<a id="li5"></a></div></li><br/>
											</ul>

										</div>
										<!-- 内容-->
										<div class="modal-footer">
											<button type="button" class="btn btn-default"
												data-dismiss="modal">关闭</button>
										</div>
									</div>
								</div>
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
					</div>
				</div>
				</section>
			</div>




		</div>

		<jsp:include page="../foot.jsp" />
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
				$('#daterange-btn')
						.daterangepicker(
								{
									ranges : {
										'Today' : [ moment(), moment() ],
										'Yesterday' : [
												moment().subtract(1, 'days'),
												moment().subtract(1, 'days') ],
										'Last 7 Days' : [
												moment().subtract(6, 'days'),
												moment() ],
										'Last 30 Days' : [
												moment().subtract(29, 'days'),
												moment() ],
										'This Month' : [
												moment().startOf('month'),
												moment().endOf('month') ],
										'Last Month' : [
												moment().subtract(1, 'month')
														.startOf('month'),
												moment().subtract(1, 'month')
														.endOf('month') ]
									},
									startDate : moment().subtract(29, 'days'),
									endDate : moment()
								},
								function(start, end) {
									$('#daterange-btn span')
											.html(
													start
															.format('MMMM D, YYYY')
															+ ' - '
															+ end
																	.format('MMMM D, YYYY'))
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
				$(
						'input[type="checkbox"].flat-red, input[type="radio"].flat-red')
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
	 $('#example1').DataTable({ 
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
