<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Simple Tables</title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
  <link href="https://cdn.bootcss.com/bootstrap/4.0.0-beta.3/css/bootstrap-grid.css" rel="stylesheet"> 
  <link href="${pageContext.request.contextPath}/static/css/templatemo_style.css" rel="stylesheet" type="text/css" />
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/jquery-3.1.1.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/My97DatePicker/WdatePicker.js"></script>
  <SCRIPT LANGUAGE="JavaScript">
	$(document).ready(function() {
	  $("#chk_SelectALL").click(function(){
	            if($(this).is(":checked")){
	                $("table :checkbox").prop("checked",true);
	            }
	            else{
	                $("table :checkbox").prop("checked",false);
	            }
	  }); 
});
</SCRIPT>
<style type="text/css">
  table{
      line-height: 50px;

  }
</style>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <jsp:include page="../head.jsp"/>
  
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style='overflow:auto ! important;'>
    <!-- Content Header (Page header) -->
    


 <div id = "content" style="width:800px;">
 <section class="content-header">
  <div class="container">
  <div class="row clearfix">
    <div class="col-md-12 column">
      <div class="panel-group" id="panel-614238">
        <div class="panel panel-default">
         <h2>&nbsp;&nbsp;&nbsp;&nbsp;登陆日志</h2>
             <h5><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;操作说明</strong></h5>
          <div class="panel-heading">
             <a class="panel-title" data-toggle="collapse" data-parent="#panel-614238" href="#panel-element-288445">模块说明</a>
          </div>
          
          <br>

          <div id="panel-element-288445" class="panel-collapse in">
            <div class="panel-body">
             系统管理模块-登陆日志-该页面管理登陆日志信息
            </div>
          </div>
        </div>
        <div class="panel panel-default">
          <div class="panel-heading">
             <a class="panel-title collapsed" data-toggle="collapse" data-parent="#panel-614238" href="#panel-element-862650">操作介绍</a>
          </div>
          <div id="panel-element-862650" class="panel-collapse collapse">
            <div class="panel-body">
              <p>[我要提交] -该方案用来提交用户的表单信息</p>
              <p>[重置] -该方案用来重置用户的表单信息</p>
              <p>[查看] -该方案用来查看登陆日志详细信息</p>
              <p>[删除] -该方案用来删除日志信息</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

 
    </section>

    <!-- Main content -->
    <section class="content" style="width:750px;">
      <div class="contact_form">
        <div class="col-xs-12">
          

<br/> <br/> 

          
          <br><br>
           <h5><strong>登陆日志列表</strong></h5>
        <table width="1500px" cellspacing="0" cellpadding="5" id="example1">
        <thead>
                      <tr bgcolor="#CCCCCC">
                        <th width="60" align="left"><input id="chk_SelectALL" type="checkbox"  />全选</th> 
                            <th width="30" align="left">编号</th> 
                          <th width="93" align="left">登陆用户</th> 
                          <th width="86" align="left">登陆时间</th> 
                            <th width="96" align="left">退出时间</th> 
                            <th width="112" align="left">IP地址</th>
                            <th width="150" align="left">操作</th>
                      </tr>
         </thead>
         <tbody>
                      <c:forEach items="${theList }" var="thelog">
                      <tr>
                          <td><input name="selectSub"  type="checkbox" /></td> 
                          <td><a href="#">${thelog.thelogId}</a></td> 
                            <td>${thelog.uname }</td>
                            <td><fmt:formatDate pattern="yyyy-MM-dd" value="${thelog.thelogLoginTime }" type="time"/></td> 
                            <td><fmt:formatDate pattern="yyyy-MM-dd" value="${thelog.thelogOutTime }" type="time"/></td>
                            <td>
                              ${thelog.thelogIp }  
                            </td>
                             <td>
	                             <a href="log_look/${thelog.thelogId}" class="more">查看</a>&nbsp;
	                             <a href="delLog/${thelog.thelogId}" onclick="if(confirm('确定删除?')==false)return false;" class="more">删除</a>
                             </td>
           			 </tr> 
                     </c:forEach>
            
          </tbody>
          </table>



       </div>
      </div>
   </section>
  </div>
</div>
</div>


<!-- 员工信息详情弹出框 -->
<div class="modal fade" id="myModal_user" tabindex="-1" role="dialog"
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
							<h3 class="widget-user-username">日志信息</h3>
						</div>
						<div class="box-footer">
							<table width="402" >
				              <tr>
				                <td width="152" height="40">登陆者：</td>
				                <td width="234">${log.thelogId }</td>
				              </tr>
				              <tr>
				                <td height="40">登陆IP：</td>
				                <td>${log.thelogIp }</td>
				              </tr>
				              <tr>
				                <td height="40">登陆时间：</td>
				                <td><fmt:formatDate pattern="yyyy-MM-dd" value="${log.thelogLoginTime }" type="time"/></td>
				              </tr>
				              <tr>
				                <td height="40">登陆结果：</td>
				                <td>成功登陆</td>
				              </tr>  
				            </table>
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



  <jsp:include page="../foot.jsp"/>
</body>
<script>
 $(function () {
	 $('#example1').DataTable({ 
			"pagingType": "simple_numbers",//设置分页控件的模式  
		         searching: true,//屏蔽datatales的查询框  
		         aLengthMenu:[10,10],//设置一页展示10条记录  
		        
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
