<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%String path=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Advanced form elements</title>
  <!-- iCheck for checkboxes and radio inputs -->
  <link rel="stylesheet" href="<%=path %>/static/plugins/iCheck/all.css">
  <!-- Bootstrap Color Picker -->
  <link rel="stylesheet" href="<%=path %>/static/bower_components/bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css">
  <!-- Bootstrap time Picker -->
  <link rel="stylesheet" href="<%=path %>/static/plugins/timepicker/bootstrap-timepicker.min.css">
  <!-- Select2 -->
  <link rel="stylesheet" href="<%=path %>/static/bower_components/select2/dist/css/select2.min.css">
  <!-- Theme style -->
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->

  <script type="text/javascript" src="<%=path %>/static/css/jquery-3.1.1.js"></script>
		<link href="https://cdn.bootcss.com/bootstrap/4.0.0-beta.3/css/bootstrap-grid.css" rel="stylesheet">
		<link href="<%=path %>/static/css/templatemo_style.css" rel="stylesheet" type="text/css" />
  

	<style type="text/css">
	  table{
		  line-height: 30px;
	  }
	</style>	
<SCRIPT LANGUAGE="JavaScript">
//select标签
$(document).ready(function() {
    $("#selectLeft").click(function(){
        $("#selectLeft option:selected").each(function(){
                $("#selectRight").append("<option value=" + $(this).val() + ">" + $(this).html() + "</option>");
                $(this).remove();
        });
    });

    $("#selectRight").click(function(){    
        $("#selectRight option:selected").each(function(){
                $("#selectLeft").append("<option value=" + $(this).val() + ">" + $(this).html() + "</option>");//这个方法是默认在后面添加
                //$("#selectLeft option:first").before("<option value=" + $(this).val() + ">" + $(this).html() + "</option>"); //此种方法是在select前面加内容
                //$("#selectLeft option[value=3]").before("<option value=" + $(this).val() + ">" + $(this).html() + "</option>"); //此种方法是在selectt指定某一行加内容
				$(this).remove();
        });
    });

	//全选框
	$("#chk_SelectALL").on("click",function(){
            if($(this).is(":checked")){
                $("tbody :checkbox").prop("checked",true);
            }
            else{
                $("tbody :checkbox").prop("checked",false);
            }
	}); 
	
	//重置
	$("#reset").click(function(){
		
		$("#selectRight option").each(function(){
                $("#selectLeft").append("<option value=" + $(this).val() + ">" + $(this).html() + "</option>");//这个方法是默认在后面添加
                $(this).remove();
        });
		
	});
	
});

</SCRIPT>		
		
		
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <header class="main-header">
    
  </header>
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
				 <h2>&nbsp;&nbsp;&nbsp;&nbsp;角色设定</h2>
             <h5><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;操作说明</strong></h5>
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-614238" href="#panel-element-288445">模块说明</a>
					</div>
					<div id="panel-element-288445" class="panel-collapse in">
						<div class="panel-body">
							授权管理模块-角色设定-该页面设定新的权限角色
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
                    
                    <label for="author">新建角色名称  ? </label> <br/>
                    <input type="text" id="author" name="author" class="required input_field" /><em style="color:#F00">&nbsp;*</em>
                    <div class="cleaner h10"></div><br/>
                    <label for="text">角色的描述 ?</label> <br/>
                    <textarea id="text" name="text" rows="5" cols="60" class="required"></textarea>
                    <div class="cleaner h10"></div>
						<br/>
                    <label for="email">角色的权限  ?</label>
           	   
					   <table>
							<tr>
								<td>
								<p>可添加权限:<p/>
								<select  size='10' multiple id="selectLeft"  style="width:200px">
								
									<option value="0">Jquery API</option>
									<option  value="1">JavaScript高级程序设计</option>
									<option  value="2">锋利的jQuery</option>
									<option value="3">JavaScript 设计模式</option>
									<option  value="4">JavaScript+DOM高级程序设计</option>
									<option  value="5">PHP高级程序设计</option>
									<option  value="6">面向对象程序设计</option>
								</select>
								</td>
								<td>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</td>
								<td><p>已添加权限:<p/>
								<select  size='10' multiple id="selectRight" style="width:200px">
								</select>
								</td>
							</tr>
						</table>
					   
					   
					   
					   
                    <div class="cleaner h10"></div>
  				<br/>
					<input type="submit" value="我要提交" id="submit" name="submit" class="submit_btn float_l" />
					<input type="reset" value="重置" id="reset" name="reset" class="submit_btn float_r" />
					
                </form>
                </div>
            <div class="cleaner"></div>
            <br/>
           	<h5><strong>角色列表</strong></h5>
                <table width="700px" cellspacing="0" cellpadding="5">
					<thead>
                   	  <tr bgcolor="#CCCCCC">
                     		<th width="60" align="left"><input id="chk_SelectALL" type="checkbox"/>全选</th> 
                            <th width="30" align="left">编号</th> 
                        	<th width="120" align="left">角色名称</th> 
                       	  	<th width="120" align="left">创建者</th> 
                            <th width="120" align="left">创建时间</th> 
                            <th width="150" align="left"> 操作</th>
                      </tr>
					  </thead>
					  <tbody>
                    	<tr>
                        	<td><input name="selectSub" type="checkbox" /></td> 
                            <td>1</td>
                        	<td>系统管理员</td>
                            <td>系统设计者</td> 
                            <td>2013-09-22</td> 
                            <td><a href="#" class="more">禁用</a>&nbsp;<a href="#" class="more">删除</a></td>
						</tr>
                        <tr>
                        	<td><input name="selectSub" type="checkbox" /></td> 
                            <td>1</td>
                        	<td>系统管理员</td>
                            <td>系统设计者</td> 
                            <td>2013-09-22</td> 
                            <td><a href="#" class="more">禁用</a>&nbsp;<a href="#" class="more">删除</a></td>
						</tr>
                        <tr>
                        	<td><input name="selectSub" type="checkbox" /></td> 
                            <td>1</td>
                        	<td>系统管理员</td>
                            <td>系统设计者</td> 
                            <td>2013-09-22</td> 
                            <td><a href="#" class="more">禁用</a>&nbsp;<a href="#" class="more">删除</a></td>
						</tr>
                        <tr>
                        	<td><input name="selectSub"  type="checkbox" /></td> 
                            <td>1</td>
                        	<td>系统管理员</td>
                            <td>系统设计者</td> 
                            <td>2013-09-22</td> 
                            <td><a href="#" class="more">禁用</a>&nbsp;<a href="#" class="more">删除</a></td>
						</tr>
                        <tr>
                        	<td><input name="selectSub" type="checkbox" /></td> 
                            <td>1</td>
                        	<td>系统管理员</td>
                            <td>系统设计者</td> 
                            <td>2013-09-22</td> 
                            <td><a href="#" class="more">禁用</a>&nbsp;<a href="#" class="more">删除</a></td>
						</tr>
                        <tr>
							<td colspan="1" align="left"  height="40px">
                            	<a href="#" class="more float_l">删除选中</a>
							</td>
                        	<td colspan="5" align="right"  height="40px">
                            	
								
                            	<a href="#" class="more">首页</a>&nbsp;<a href="#" class="more">上一页</a>&nbsp;【1/15】&nbsp;<a href="#" class="more">下一页</a>&nbsp;<a href="#" class="more">末页</a>
                            </td>
						</tr>
						</tbody>
					</table>

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
  </section> </div>
  

  
  
</div>

  <jsp:include page="../foot.jsp"/>
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
