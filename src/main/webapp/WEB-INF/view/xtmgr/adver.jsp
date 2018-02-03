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
  <%-- <link href="${pageContext.request.contextPath}/static/bower_components/css/templatemo_style.css" rel="stylesheet" type="text/css" /> --%>
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
<style type="text/css">
  table{
      line-height: 30px;

  }
</style>
<script type="text/javascript">
function Check(name){
	
		if(contact.announcementTitle.value==''){
			alert("公告主题不能为空！");
			return false;
		}
		if(contact.announcementContent.value==''){
			alert("公告内容不能为空！");
			return false;
		}
		//点击我要提交跳转的路径
		if(name=='submit'){
			if(confirm("是否确认提交？"))
				document.contact.action = "saveAdver.html";
			else
				return false;
		}
		//点击我要保存跳转的路径
		if(name=='stype'){
			if(confirm("是否保存提交？"))
				document.contact.action = "saveAdverType.html";
			else
				return false;
		}
		return true;
}

</script>
<jsp:include page="../head.jsp"/>
<style type="text/css">
 textarea, input{
  	outline:medium;
  	border:0;
  	resize:none;
  }
</style>
<script type="text/javascript">
function outTo(){
		 $.ajax({
	         url:"outTo",
	         type:"post",
	         dataType:"json",
	         success:function(data){
	        	window.location.href="logout";
	         }
		  })	  
	}
</script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style='overflow:auto ! important;'>
    <!-- Content Header (Page header) -->
    
  
  
  <div id = "content" style="width:750px;">
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
              系统管理模块-公告管理-该页面管理公告信息
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
              <p>[我要保存] -该方案用来保存用户的表单信息</p>
              <p>[重置] -该方案用来重置用户的表单信息</p>
              <p>[发布] -该方案用来发布公告信息</p>
              <p>[删除] -该方案用来删除公告信息</p>
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
      <div class="accordion" id="accordion-354281" >
        
        

         <br/> <br/> 
           
           <!-- <p>公告发布</p> -->
             <div id="contact_form" >
             <h5><strong>公告发布</strong></h5><br>
               <form method="post" name="contact" id="contact" action="">
                    <span>${error}</span>
                    <label for="author">公告主题 ? </label><br>
                    <input type="text" id="author" name="announcementTitle" class="required input_field" /><em style="color:#F00">&nbsp;*</em>
                    <div class="cleaner h10"></div><br>
                         
                    <label for="text">公告主体内容 ?</label><br>
                     <textarea id="text" name="announcementContent" rows="10" cols="30" class="required"></textarea><em style="color:#F00">&nbsp;*</em>
                    <div class="cleaner h10"></div>
          
          <input type="submit" onclick="return Check('submit')" value="我要提交" id="submit" name="submit" class="submit_btn float_l" />&nbsp;
          <input type="submit" value="我要保存" id="submit2" onclick="return Check('stype')" name="stype" class="submit_btn float_l" />
          <input type="reset" value="重置" id="reset" name="reset" class="submit_btn float_r" />
          
                </form>
                </div>
                <br/> <br/><br/>
                
            <h5><strong>草稿箱</strong></h5>
                <table width="700px" cellspacing="0" cellpadding="5" id="example1">
                <thead>
                     <tr bgcolor="#CCCCCC">
                        <th width="60" align="left"><input id="chk_SelectALL" type="checkbox"  />全选</th> 
                            <th width="36" align="left">编号</th> 
                          <th width="173" align="left">公告主题</th> 
                            <th width="104" align="left">创建时间</th> 
                            <th width="115" align="left">创建者</th> 
                            <th width="150" align="left">操作</th>
                      </tr>
                 </thead>
            		<tbody>
            		<c:forEach items="${anList }" var="announcement">
            		<c:if test="${announcement.announcementType!=0}">
            		
            		<tr>
                          	<td><input name="selectSub"  type="checkbox" /></td> 
	                          <td>${announcement.announcementId}</td>
	                          <td><a data-toggle="modal" data-target="#myModal_user" onclick="adverlook(${announcement.announcementId})">${announcement.announcementTitle}</a></td> 
	                          <td>
	                          	 <fmt:formatDate pattern="yyyy-MM-dd" value="${announcement.announcementCreateTime}" type="time"/>
	                          </td> 
	                          <!-- 此处得到的uid是数据库中的用户id，应该获取到用户的用户名  -->
	                          <td>${announcement.uname}</td> 
                          <td>
	                          <a href="updAteadver/${announcement.announcementId}" class="more" onclick="if(confirm('确定发布?')==false)return false;">发布</a>&nbsp;
	                          <a href="upAdver/${announcement.announcementId}" class="more">修改</a>&nbsp;
	                          <a href="deladver/${announcement.announcementId}" class="more" onclick="if(confirm('确定删除?')==false)return false;">删除</a>
                          </td>
            		</tr>
            		</c:if>
            		</c:forEach>
                    </tbody>
              </table>
            </div>
      
      
      
      
      
      <!-- a onclick="outTo()" class="btn btn-default btn-flat">退出</a> -->
      
            <!-- /.box-body -->
        </div>
      </div>
    </div>
   </section>
  </div>
</div>
  <!-- /.content-wrapper -->
  <jsp:include page="../foot.jsp"></jsp:include>
<script>
 $(function () {
	 $('#example1').DataTable({ 
			"pagingType": "simple_numbers",//设置分页控件的模式  
		         searching: true,//屏蔽datatales的查询框  
		         aLengthMenu:[3,10],//设置一页展示10条记录  
		        
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
<script type="text/javascript">
//ajax 函数
function adverlook(uid){
	
		 $.ajax({
	         url:"adver_look",
	         type:"post",
	         data:"id="+uid,
	         dataType:"json",
	         success:function(data){
	        	 $("#announcementTitle").val(data.announcement.announcementTitle);
	        	 var shijian=new Date(data.announcement.announcementCreateTime).toLocaleString();
	        	 $("#announcementCreateTime").val(shijian);
	        	 $("#announcementContent").val(data.announcement.announcementContent);
	         }
		  })	  
	}
</script>

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
							
							<!-- /.widget-user-image -->
							<h3 class="widget-user-username">公告详情</h3>
						</div>
						<div class="box-footer">
							<table width="402" >
				              <tr>
				                <td width="152" height="40">公告主题：</td>
				                <td width="234"><input id="announcementTitle" size="24"/></td>
				              </tr>
				              <tr>
				                <td height="40">创建者：</td>
				                <td>${login.loginUsercode}</td>
				              </tr>
				              <tr>
				                <td height="40">创建时间：</td>
				                <td>
				                	<%-- <fmt:formatDate pattern="yyyy-MM-dd" value="${announcement.announcementCreateTime}" type="time"/> --%>
				                	<input id="announcementCreateTime" size="24"/>
				                </td>
				              </tr>
				              <tr>
				                <td height="40">公告内容：</td>
				                <td>
				                	<textarea id="announcementContent" rows="2" cols="20"></textarea>
				                </td>
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

</body>
</html>

