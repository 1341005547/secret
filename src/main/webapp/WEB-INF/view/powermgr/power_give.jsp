<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%String path=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Advanced form elements</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <!-- Font Awesome -->
  <!-- Ionicons -->
  <!-- daterange picker -->
  <!-- bootstrap datepicker -->
  <!-- iCheck for checkboxes and radio inputs -->
  <link rel="stylesheet" href="<%=path %>/static/plugins/iCheck/all.css">
  <!-- Bootstrap Color Picker -->
  <link rel="stylesheet" href="<%=path %>/static/bower_components/bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css">
  <!-- Bootstrap time Picker -->
  <link rel="stylesheet" href="<%=path %>/static/plugins/timepicker/bootstrap-timepicker.min.css">
  <!-- Select2 -->
  <link rel="stylesheet" href="<%=path %>/static/bower_components/select2/dist/css/select2.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<%=path %>/static/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="<%=path %>/static/dist/css/skins/_all-skins.min.css">
	
	
		<link href="https://cdn.bootcss.com/bootstrap/4.0.0-beta.3/css/bootstrap-grid.css" rel="stylesheet">
		<link href="<%=path %>/static/css/templatemo_style.css" rel="stylesheet" type="text/css" />

  <!-- Google Font -->
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
		
		
	
	
	<%-- <script type="text/javascript" src = "<%=path %>/static/layer/mobile/layer.js"></script> --%>
	<script type="text/javascript" src="<%=path %>/static/css/jquery-3.1.1.js"></script>
	<SCRIPT LANGUAGE="JavaScript">
			$(document).ready(function() {
				$("#chk_SelectALL").click(function(){
					if($(this).is(":checked")){
						$("#table111 :checkbox").prop("checked",true);
					}  
					else{
						$("table :checkbox").prop("checked",false);
					}
				});

		/* $("#jDialog_default_button").click(function(){
		
			layer.open({
				type: 2,
				skin: 'layui-layer-rim', //加上边框
				area: ['420px', '240px'], //宽高
				content:'power_phone.html'
			});
		
		}); */


				
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
				 <h2>&nbsp;&nbsp;&nbsp;&nbsp;权限分配</h2>
             <h5><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;操作说明</strong></h5>
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-614238" href="#panel-element-288445">模块说明</a>
					</div>
					<div id="panel-element-288445" class="panel-collapse in">
						<div class="panel-body">
							授权管理模块-权限分配-用于分配当前用户的权限给子级
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
        
        
      



            
             <div id="contact_form">
			 <h5><strong>权限设定操作</strong></h5>
               <form method="post" name="contact" action="#">
                    
                    <label for="author">员工名称: </label>
                    <div class="span9" style="width:200px;margin-left:0px;">
                    		  <select name="s_example" class="select" style="width: 100%;height:28px; ">
                                            <option value="0">choose a option...</option>
                                            <option value="1">Andorra</option>
                                            <option value="2">Antarctica</option>
                                            <option value="3">Bulgaria</option>
                                            <option value="4">Germany</option>
                                            <option value="5">Dominican Republic</option>
                                            <option value="6">Micronesia</option>
                                            <option value="7">United Kingdom</option>
                                            <option value="8">Greece</option>
                                            <option value="9">Italy</option>
                                            <option value="10" >Ukraine</option>                                                                       
                              </select>
                         </div><em style="color:#F00">&nbsp;*</em>
                    <div class="cleaner h10"></div>
						
                    <label for="email">可授予的角色?</label>
					<div class="span9" style="width:200px; margin-left:0px;">
						<table width="700px" cellspacing="0" cellpadding="5">
							<tr>
								<td><input name="selectSub"  type="checkbox" />11111</td> 
								<td><input name="selectSub"  type="checkbox" />2222</td> 
								<td><input name="selectSub"  type="checkbox" />3333333</td> 
								<td><input name="selectSub"  type="checkbox" />444444</td> 
								<td><input name="selectSub"  type="checkbox" />55555555</td> 
								<td><input name="selectSub"  type="checkbox" />666666</td>
							</tr>
							
							<tr>
								<td><input name="selectSub"  type="checkbox" />7777777</td> 
								<td><input name="selectSub"  type="checkbox" />888888</td> 
								<td><input name="selectSub"  type="checkbox" />9999999</td> 
								<td><input name="selectSub"  type="checkbox" />000</td> 
								<td><input name="selectSub"  type="checkbox" />8989</td> 
								<td><input name="selectSub"  type="checkbox" />667867</td> 
							</tr>
						</table>
						
						
                    		  
                         </div><em style="color:#F00">&nbsp;*</em>
                    <div class="cleaner h10"></div>
  				
					<input type="submit" value="我要提交" id="submit" name="submit" class="submit_btn float_l" />
					<input type="reset" value="重置" id="reset" name="reset" class="submit_btn float_r" />
					
                </form>
                </div>
            <div class="cleaner"></div>
            <br/> <br/> <br/>
           	<h5><strong>权限结果</strong></h5>
                <table width="700px" cellspacing="0" cellpadding="5" id="table111">
                   	  <tr bgcolor="#CCCCCC">
                     		<th width="60" align="left"><input id="chk_SelectALL" type="checkbox"  />全选</th> 
                        	<th width="100" align="left">编号</th> 
                        	<th width="100" align="left">用户名 </th> 
                       	  	<th width="100" align="left">角色名称</th> 
                            <th width="100" align="left">授权时间</th> 
                            <th width="150" align="left"> 操作</th>
                      </tr>
                    	<tr>
                        	<td><input name="selectSub"  type="checkbox" /></td> 
                        	<td>201300001</td> 
                            <td>孙悟空</td>
                            <td>管理员</td> 
                            <td>2013-09-26</td> 
                            <td><a href="#" class="more">禁用</a>&nbsp;<a href="#" class="more">删除</a></td>
						</tr>
                        <tr>
                        	<td><input name="selectSub"  type="checkbox" /></td> 
                        	<td>201300001</td> 
                            <td>孙悟空</td>
                            <td>管理员</td> 
                            <td>2013-09-26</td> 
                            <td><a href="#" class="more">禁用</a>&nbsp;<a href="#" class="more">删除</a></td>
						</tr>
                        <tr>
                        	<td><input name="selectSub"  type="checkbox" /></td> 
                        	<td>201300001</td> 
                            <td>孙悟空</td>
                            <td>管理员</td> 
                            <td>2013-09-26</td> 
                            <td><a href="#" class="more">禁用</a>&nbsp;<a href="#" class="more">删除</a></td>
						</tr>
                        <tr>
                        	<td colspan="2" align="left" height="40px">
								<a href="#" class="more float_l">删除选中</a>
							</td>
						
                        	<td colspan="4" align="right"  height="40px">
                            	
                            	<a href="#" class="more">首页</a>&nbsp;<a href="#" class="more">上一页</a>&nbsp;【1/15】&nbsp;<a href="#" class="more">下一页</a>&nbsp;<a href="#" class="more">末页</a>
                            </td>
    
						</tr>
					</table>
          </div>
        <div class="cleaner"></div>
    </div> <!-- END of main -->
    
 <!-- END of footer -->   
    </div>
    
    <div class="data" style="position:fixed; bottom:10px; right:20px; z-index:10;" >
         <button class="btn tip" title="该方案用于返回该页面顶部">顶部</button> 
         <button class="btn tip" title="该方案用于快速查看公告">公告</button> 
         <button class="btn tip" title="该方案用于快速查看信箱">邮箱</button> 

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
       </section></div>
</div>
  <jsp:include page="../foot.jsp"/>
</div>
 
<script>
  $(function () {
    //Initialize Select2 Elements
    $('.select2').select2()

    //Datemask dd/mm/yyyy
    $('#datemask').inputmask('dd/mm/yyyy', { 'placeholder': 'dd/mm/yyyy' })
    //Datemask2 mm/dd/yyyy
    $('#datemask2').inputmask('mm/dd/yyyy', { 'placeholder': 'mm/dd/yyyy' })
    //Money Euro
    $('[data-mask]').inputmask()

    //Date range picker
    $('#reservation').daterangepicker()
    //Date range picker with time picker
    $('#reservationtime').daterangepicker({ timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A' })
    //Date range as a button
    $('#daterange-btn').daterangepicker(
      {
        ranges   : {
          'Today'       : [moment(), moment()],
          'Yesterday'   : [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
          'Last 7 Days' : [moment().subtract(6, 'days'), moment()],
          'Last 30 Days': [moment().subtract(29, 'days'), moment()],
          'This Month'  : [moment().startOf('month'), moment().endOf('month')],
          'Last Month'  : [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
        },
        startDate: moment().subtract(29, 'days'),
        endDate  : moment()
      },
      function (start, end) {
        $('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'))
      }
    )

    //Date picker
    $('#datepicker').datepicker({
      autoclose: true
    })

    //iCheck for checkbox and radio inputs
    $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
      checkboxClass: 'icheckbox_minimal-blue',
      radioClass   : 'iradio_minimal-blue'
    })
    //Red color scheme for iCheck
    $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
      checkboxClass: 'icheckbox_minimal-red',
      radioClass   : 'iradio_minimal-red'
    })
    //Flat red color scheme for iCheck
    $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
      checkboxClass: 'icheckbox_flat-green',
      radioClass   : 'iradio_flat-green'
    })

    //Colorpicker
    $('.my-colorpicker1').colorpicker()
    //color picker with addon
    $('.my-colorpicker2').colorpicker()

    //Timepicker
    $('.timepicker').timepicker({
      showInputs: false
    })
  })
</script>
</body>
</html>
