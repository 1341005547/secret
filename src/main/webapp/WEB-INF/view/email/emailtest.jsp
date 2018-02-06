<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro" %>
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
<jsp:include page="../head.jsp"></jsp:include>
</head>

<body class="hold-transition skin-blue sidebar-mini">
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">
		<h1>
			邮箱 
		</h1>
		</section>

		<!-- Main content -->
		<section class="content">
		<div class="row">
			<div class="col-md-3">
				<a href="compose.html"
					class="btn btn-primary btn-block margin-bottom">Compose</a>

				<div class="box box-solid">
					<div class="box-header with-border">
						<h3 class="box-title">主题</h3>

						<div class="box-tools">
							<button type="button" class="btn btn-box-tool"
								data-widget="collapse">
								<i class="fa fa-minus"></i>
							</button>
						</div>
					</div>
					<div class="box-body no-padding">
						<ul class="nav nav-pills nav-stacked">
							<!-- <li class="active"><a href="#"><i class="fa fa-inbox"></i>收件箱 </a></li> -->
							<li><a data-toggle="modal" data-target="#myModal_email"><i
									class="fa fa-envelope-o"></i>发件箱</a></li>
							
							<!--  <li><a href="#"><i class="fa fa-envelope-o"></i>已读件箱</a></li>
							<li><a href="#"><i class="fa fa-envelope-o"></i>未件箱</a></li>
							 -->
						</ul>
					</div>
					<!-- /.box-body -->
				</div>

				<!-- /.box -->
			</div>
			<!-- /.col -->
			<div class="col-md-9">
				<div class="box box-primary">
					<div class="box-header with-border">
						<h3 class="box-title">收件箱</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body no-padding">

						<div class="table-responsive mailbox-messages">
							<table class="table table-hover table-striped" id="example1">
							<thead>
							<tr>
										
										<td class="mailbox-star"><a href="#"></a></td>							
										<td class="mailbox-name"><a href="#"><b>收件人</b></a></td>
										<td class="mailbox-subject"><b>邮件标题</b></td>
										<td class="mailbox-subject"><b>邮箱内容</b></td>
										<td class="mailbox-date"><b>发送时间</b></td>
									    </tr>
							</thead>
								<tbody>
								   
									<c:forEach items="${msgs }" var="m">
										<tr>
										<td><input type="checkbox"></td>
										<c:if test="${m.msgState=='未读' }">
								   <td class="mailbox-star"><i class="fa fa-star text-yellow"></i>
								   <a  onclick="reademail(${m.msgId})" target="view_window">${user.uName }</a>
								   </td>
										</c:if>
									     <c:if test="${m.msgState=='已读' }">
								  <td class="mailbox-star"><i class="fa fa-star-o text-yellow"></i>
								  <a href="${email }">${user.uName }</a>
								  </td>
										</c:if>
										<td class="mailbox-subject">${m.msgTitle }</td>
										<td class="mailbox-subject">${m.msgContent }</td>
										<td class="mailbox-date"><fmt:formatDate value="${m.msgCreateTime }"/></td>
									    </tr>
									
									</c:forEach>
								</tbody>
							</table>
							<!-- /.table -->
						</div>
						<!-- /.mail-box-messages -->
												<div class="mailbox-controls">
							<!-- Check all button -->
						<!-- 	<div class="btn-group">
								<button type="button" class="btn btn-default btn-sm">
									<i class="fa fa-reply"></i>上一页
								</button>
								<button type="button" class="btn btn-default btn-sm">
									<i class="fa fa-share">下一页</i>
								</button>
							</div> -->
							<!-- /.btn-group -->
						</div>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /. box -->
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row --> </section>
		<!-- /.content -->
	</div>
	<!-- 功能显示开始 -->


	</div>

	<!-- 发件箱 -->
	<div class="modal fade" id="myModal_email" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog role=" document" style="width: 520px">
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
									<img class="img-circle" src="<%=path %>/static/dist/img/user7-128x128.jpg"
										alt="User Avatar">
								</div>
								<!-- /.widget-user-image -->
								<h3 class="widget-user-username">发件箱</h3>
							</div>
							<div class="box-footer">
								<form action="doemail.html" method="post">
								<dl>
								  <dt>邮箱host：</dt>
								 <dd><input type="text" name="host"></dd>
								 <dt> 邮箱port：</dt>
								 <dd><input type="text" name="port"></dd>
								 
								 <dt> 邮箱账户：</dt>
								 <dd><input type="text" name="emailname"></dd>
								 
								 <dt>邮箱密码：</dt>
								 <dd><input type="password" name="emailpassword"></dd>
								 
								 <dt> 接收人：</dt>
								 <dd><input type="text" name="toEmail"></dd>
								 
								 <dt>邮件主题:</dt>
								 <dd><input type="text" name="title"></dd>
								 
								 <dt>邮件内容：</dt>
								 <dd><input type="text" name="context"></dd>
								</dl>
							    <input	type="submit" value="提交"> <input type="reset" value="重置">
								</form>

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


<jsp:include page="../foot.jsp"></jsp:include>
</body>

<script type="text/javascript">
 function  reademail(msgid){
	  $.ajax({
	         url:"updatemsgstate/"+msgid,
	         type:"post",
	         dataType:"json",
	         success:function(data){
	        	 //alert(6666666);
	        	 //window.location.href=data.emailurl;
	        	 window.open(data.emailurl,'_blank'); 
	         }
		  })
 }



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