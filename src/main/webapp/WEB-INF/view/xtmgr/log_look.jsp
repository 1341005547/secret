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
      line-height: 30px;

  }
</style>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <jsp:include page="../head.jsp"/>
  
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style='overflow:auto ! important;'>
    <!-- Content Header (Page header) -->
    


 <div id = "content">
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
    <section class="content">
      <div class="contact_form">
        <div class="col-xs-12">
          

<br/> <br/> 

             
             <div class="cleaner"></div>
             <br/> <br/> <br/>
             <h5><strong>日志信息</strong></h5>
           		<!-- 从登陆日志页面跳转过来，显示以下表格 -->
              <div id="contact_form" style="width:400px;">
   	    	<table width="402" >
   	    	
              <tr>
                <td width="152" height="40">登陆者：</td>
                <td width="234">${log.uname }</td>
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
            <br/>
			<a href="../loglogin.html" class="more float_l">返回列表</a>
              
        </div>
             <div class="cleaner"></div>
             <br/> <br/> <br/>

		</div>
        <div class="cleaner"></div>
    </div> <!-- END of main -->



       </div>
      </div>
   </section>
  </div>
</div>
</div>
  <jsp:include page="../foot.jsp"/>
</body>
</html>
