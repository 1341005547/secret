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
<script type="text/javascript">
function Check(){
	if(contact.announcementTitle.value==''){
		alert("公告主题不能为空！");
		return false;
	}
	if(contact.announcementContent.value==''){
		alert("公告内容不能为空！");
		return false;
	}
	return true;
}
</script>

<style type="text/css">
  table{
      line-height: 30px;
  }
  input{
  	/* outline:medium; */
  	border:0;
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
         <h2>&nbsp;&nbsp;&nbsp;&nbsp;公告管理</h2>
             <h5><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;操作说明</strong></h5>
          <div class="panel-heading">
             <a class="panel-title" data-toggle="collapse" data-parent="#panel-614238" href="#panel-element-288445">模块说明</a>
          </div>
          
          <br>

          <div id="panel-element-288445" class="panel-collapse in">
            <div class="panel-body">
              系统管理模块-公告明细-该页面显示公告详细信息
            </div>
          </div>
        </div>
        <div class="panel panel-default">
          <div class="panel-heading">
             <a class="panel-title collapsed" data-toggle="collapse" data-parent="#panel-614238" href="#panel-element-862650">操作介绍</a>
          </div>
          <div id="panel-element-862650" class="panel-collapse collapse">
            <div class="panel-body">
              <p>[返回列表] -该方案用来跳转到公告管理页面</p>
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
        
        

         <br/> <br/> 
           
           <!-- <p>公告发布</p> -->
             <div id="content">
            
             <div class="cleaner"></div>
             <br/> <br/> <br/>
             <h5><strong>公告详细</strong></h5>
             
             
             
             
            
             
             
              <div id="contact_form" style="width:400px;">
              
               <form method="post" name="contact" id="contact" action="../saveAdver">
	              <span>${error}</span>
	              <label for="author">公告主题 ? </label><br>
	              <input type="text" id="author" value="${announcement.announcementTitle}" name="announcementTitle" class="required input_field" /><em style="color:#F00">&nbsp;*</em>
	              <div class="cleaner h10"></div><br>
	              
	              <label for="text">公告主体内容 ?</label><br>
	               <textarea id="text" name="announcementContent" rows="5" cols="30" class="required">${announcement.announcementContent }</textarea><em style="color:#F00">&nbsp;*</em>
	              <div class="cleaner h10"></div>
          		<input type="hidden" name="announcementId" value="${announcement.announcementId}"/>
		        <input type="hidden" name="announcementType" value="${announcement.announcementType}"/>
		        <input type="hidden" name="announcementCreateTime" value="${announcement.announcementCreateTime}"/>
		        <input type="hidden" name="uId" value="${announcement.uId}"/>
		        <input type="submit" onclick="if(confirm('确定提交?')==false)return false;" onclick="return Check()" value="我要提交" class="submit_btn float_l" />&nbsp;
		        <input type="reset" value="重置" id="reset" name="reset" class="submit_btn float_r" />
            </form>
            <br/>
			<a href="../adver.html" class="more float_l">返回列表</a>
              
        </div>
             <div class="cleaner"></div>
             <br/> <br/> <br/>

		</div>
        <div class="cleaner"></div>
    </div> <!-- END of main -->
      
      
      
      
      
      
            <!-- /.box-body -->
        </div>
      </div>
    </div>
   </section>
  </div>
</div>
  <!-- /.content-wrapper -->
  <jsp:include page="../foot.jsp"></jsp:include>
</body>
</html>
