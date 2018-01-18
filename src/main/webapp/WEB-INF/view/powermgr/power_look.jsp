<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%String path=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Simple Tables</title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="<%=path %>/static/static/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="<%=path %>/static/static/bower_components/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="<%=path %>/static/static/bower_components/Ionicons/css/ionicons.min.css">
  <link rel="stylesheet" href="<%=path %>/static/static/dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="<%=path %>/static/static/dist/css/skins/_all-skins.min.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
   <link href="https://cdn.bootcss.com/bootstrap/4.0.0-beta.3/css/bootstrap-grid.css" rel="stylesheet"> 

		<link href="https://cdn.bootcss.com/bootstrap/4.0.0-beta.3/css/bootstrap-grid.css" rel="stylesheet">
		<link href="<%=path %>/static/static/css/templatemo_style.css" rel="stylesheet" type="text/css" />
   
   </head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <header class="main-header">
    
  </header>
  
  
  <jsp:include page="../head.jsp"/>



  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
	
	
	
	
	<div id = "content">
    <section class="content-header">
	<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="panel-group" id="panel-614238">
				<div class="panel panel-default">
				 <h2>&nbsp;&nbsp;&nbsp;&nbsp;权限查看</h2>
             <h5><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;操作说明</strong></h5>
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-614238" href="#panel-element-288445">模块说明</a>
					</div>
					<div id="panel-element-288445" class="panel-collapse in">
						<div class="panel-body">
							授权管理模块-权限查看-该页面查看用户的权限角色
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
        
        
      



           
              <div id="contact_form" style="width:400px;">
			  <h5><strong>授权信息</strong></h5>
   	    	<table width="720" >
              <tr>
                <td width="152" height="40">授权编号：</td>
                <td width="234">1</td>
              </tr>
              <tr>
                <td height="40">授权人信息：</td>
                <td>201300001  张三</td>
              </tr>
              <tr>
                <td height="40">授权角色：</td>
                <td>部门经理</td>
              </tr>
              <tr>
                <td height="40">隶属上级角色：</td>
                <td>管理员</td>
              </tr>
              <tr>
                <td height="40">授权时间：</td>
                <td>2013-09-22 8:00</td>
              </tr>  
              <tr>
                <td height="40">角色描述：</td>
                <td>这是一个部门经理所拥有的权限</td>
              </tr> 
               <tr>
                <td height="40">内容：</td>
                <td>内容信息</td>
              </tr>  
            </table>
            <br/>
		
            </div>
			
			
			
			<div class="data " style="position:fixed; bottom:10px; left:20px; z-index:10;" >
         <button class="btn tip" title="当前时间: 2013-02-20 14:24 星期五">当前时间</button> 
         <button class="btn tip" title="该方案用于快速查看通讯录" id="jDialog_default_button">通讯录</button> 
     </div>
    
     <div class="dialog" id="jDialog_default" style="display: none; z-index:5;" title="公司通讯录">
     		<p><em>*&nbsp; [部门] 职位-姓名-联系电话</em></p>
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
  </div>

    </section></div>
    <!-- /.content -->
  </div>

	 <jsp:include page="../foot.jsp"/>
 
 
 
</div>

</body>
</html>
