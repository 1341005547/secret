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
<style type="text/css">
  table{
      line-height: 30px;
  }
  textarea, input{
  	outline:medium;
  	border:0;
  	resize:none;
  }
</style>
<script>
 $(function () {
	 $('#example1').DataTable({ 
			"pagingType": "simple_numbers",//设置分页控件的模式  
		         searching: true,//屏蔽datatales的查询框  
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
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

<jsp:include page="../head.jsp"/>

  <div class="content-wrapper" style='overflow:auto ! important;'>
    
  
  
  
  <div id = "content">
  <section class="content-header" > 
  <div class="container">
  <div class="row clearfix">
    <div class="col-md-12 column">
      <div class="panel-group" id="panel-614238">
        <div class="panel panel-default">
         <h2>&nbsp;&nbsp;&nbsp;&nbsp;员工守则管理</h2>
             <h5><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;操作说明</strong></h5>
          <div class="panel-heading">
             <a class="panel-title" data-toggle="collapse" data-parent="#panel-614238" href="#panel-element-288445">模块说明</a>
          </div>
          
          <br>

          <div id="panel-element-288445" class="panel-collapse in">
            <div class="panel-body">
              系统管理模块-守则管理-该页面管理守则信息
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
              <p>[修改] -该方案用来修改守则信息</p>
              <p>[删除] -该方案用来删除守则信息</p>
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
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<div class="accordion" id="accordion-354281">

					<br /> <br /> <br />

					<div id="contact_form">
						<h4>
							<strong>员工守则发布</strong>
						</h4>
						<br>
						<form method="post" name="contact" action="insertRule.html">

							<label for="author">员工守则类型 ? </label> <br> <select
								id="select" name="counductType" class="required input_field">
								<option value="0">-这还是默认的（请选择）</option>
								<option value="日常">日常</option>
								<option value="假期">假期</option>
								<option value="请假">请假</option>
							</select><em style="color: #F00">&nbsp;*</em>
							<div class="cleaner h10"></div>
							<br> <label for="author">员工守则标题 ? </label> <br> <input
								type="text" id="author" name="counductTitle"
								class="required input_field" /><em style="color: #F00">&nbsp;*</em>
							<div class="cleaner h10"></div>
							<br> <label for="text">员工守则内容 ?</label><br>
							<textarea id="text" name="counductContent" rows="10" cols="30"
								class="required"></textarea>
							<em style="color: #F00">&nbsp;*</em>
							<div class="cleaner h10"></div>
							<br> <input type="submit" value="我要提交" id="submit"
								name="submit" class="submit_btn float_l" /> <input
								type="reset" value="重置" id="reset" name="reset"
								class="submit_btn float_r" />

						</form>
					</div>
					<br /> <br /> 

					<h5>
						<strong>守则列表</strong>
					</h5>
					<table width="700px" cellspacing="0" cellpadding="5" id="example1">
					<thead>
						<tr bgcolor="#CCCCCC">
							<th width="70" align="left"><input id="chk_SelectALL"
								type="checkbox" />全选</th>
							<th width="40" align="left">编号</th>
							<th width="140" align="left">守则标题</th>
							<th width="70" align="left">守则类型</th>
							<th width="80" align="left">创建时间</th>
							<th width="78" align="left">创建者</th>
							<th width="150" align="left">操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${counList }" var="counduct">
						<tr>
							<td><input name="selectSub" type="checkbox" /></td>
							<td>${counduct.counductId }</td>
							<td>
								<a data-toggle="modal" data-target="#myModal_user" onclick="ruleslook(${counduct.counductId})">${counduct.counductTitle }</a>
							</td>
							<td>${counduct.counductType }</td>
							<td><fmt:formatDate pattern="yyyy-MM-dd" value="${counduct.counductCreateTime }" type="time"/></td>
							<td>${counduct.uname }</td>
							<td>
								<a data-toggle="modal" data-target="#myModal_update" onclick="uprules(${counduct.counductId})" class="more">修改</a>&nbsp;
								<a href="delrule/${counduct.counductId}" onclick="if(confirm('确定删除?')==false)return false;"  class="more">删除</a>
							</td>
						</tr>
						</c:forEach>
					</tbody>
					</table>
				</div>



		 </div>
      </div>
    </div>
   </section>
  </div>
</div>
  <jsp:include page="../foot.jsp"/>

<script type="text/javascript">
//ajax 函数 显示守则详情
function ruleslook(uid){
		 $.ajax({
	         url:"rules_look",
	         type:"post",
	         data:"id="+uid,
	         dataType:"json",
	         success:function(data){
	        	 $("#counductType").val(data.counduct.counductType);
	        	 $("#counductTitle").val(data.counduct.counductTitle);
	        	 $("#uname").val(data.counduct.uname);
	        	/*  var shijian=new Date(data.counduct.counductCreateTime).toLocaleString(); */
	        	 $("#counductCreateTime").val(data.counduct.counductCreateTime);
	        	 $("#counductContent").val(data.counduct.counductContent);
	         }
		  })	  
	}
</script>

<!-- 守则详情弹出框 -->
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
							<h3 class="widget-user-username">守则信息</h3>
						</div>
						<div class="box-footer">
							<table width="402" >
				              <tr>
				                <td width="152" height="40">类型：</td>
				                <td width="234"><input id="counductType" size="24"/></td>
				              </tr>
				              <tr>
				                <td height="40">标题：</td>
				                <td><input id="counductTitle" size="24"/></td>
				              </tr>
				              <tr>
				                <td height="40">创建人：</td>
				                <td><input id="uname" size="24"/></td>
				              </tr>
				              <tr>
				                <td height="40">创建时间：</td>
				                <td><input id="counductCreateTime" size="24"/></td>
				              </tr>  
				               <tr>
				                <td height="40">内容：</td>
				                <td><textarea id="counductContent" rows="2" cols="20"></textarea></td>
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

<script type="text/javascript">
//守则修改
function uprules(uid){
		 $.ajax({
	         url:"update_rules",
	         type:"post",
	         data:"id="+uid,
	         dataType:"json",
	         success:function(data){
	        	 $("#title").val(data.counduct.counductTitle);
	        	 $("#con").val(data.counduct.counductContent);
	        	 $("#iid").val(data.counduct.uId);
	        	 $("#createtime").val(data.counduct.counductCreateTime);
	        	 /* alert(data.counduct.counductCreateTime); */
	        	 $("#cid").val(data.counduct.counductId);
	        	 $("#type").val(data.counduct.counductType);
	         }
		  })	  
	}
</script>
<!-- 守则修改弹出框 -->
<div class="modal fade" id="myModal_update" tabindex="-1" role="dialog"
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
							<h3 class="widget-user-username">守则信息</h3>
						</div>
						<div class="box-footer">
							
						<form method="post" action="../saveRule">
					            <label for="author">守则主题 ? </label><br>
					            <input  id="title" name="counductTitle" /><em style="color:#F00">&nbsp;*</em>
					            <div class="cleaner h10"></div><br>
					            <label for="text">守则主体内容 ?</label><br>
					            <textarea id="con" name="counductContent" rows="3" cols="50"></textarea><em style="color:#F00">&nbsp;*</em>
					            <div class="cleaner h10"></div>
				          		<input type="hidden" id="cid" name="counductId"/>
						        <input type="hidden" id="type" name="counductType"/>
							    <input type="hidden" id="createtime" name="counductCreateTime"/>
						        <input type="hidden" id="iid" name="uId"/>
						        <!-- <input type="hidden" id="name" name="uname"/> -->
						        <input type="submit" onclick="if(confirm('确定提交?')==false)return false;" onclick="return Check()" value="我要提交" class="submit_btn float_l" />
						        <input type="reset" value="重置" id="reset" name="reset" class="submit_btn float_r" />
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

</body>
</html>
