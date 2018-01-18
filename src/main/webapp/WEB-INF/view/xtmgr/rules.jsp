<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Simple Tables</title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bower_components/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bower_components/Ionicons/css/ionicons.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/dist/css/skins/_all-skins.min.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
  <link href="https://cdn.bootcss.com/bootstrap/4.0.0-beta.3/css/bootstrap-grid.css" rel="stylesheet"> 
  <link href="${pageContext.request.contextPath}/css/templatemo_style.css" rel="stylesheet" type="text/css" />

   <script type="text/javascript" src="${pageContext.request.contextPath}/jquery-3.1.1.js"></script>
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
<section class="content">
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
						<form method="post" name="contact" action="#">

							<label for="author">员工守则类型 ? </label> <br> <select
								id="select" class="required input_field">
								<option value="0">-这还是默认的（请选择）</option>
								<option value="1">日常</option>
								<option value="2">假期</option>
								<option value="3">请假</option>
							</select><em style="color: #F00">&nbsp;*</em>
							<div class="cleaner h10"></div>
							<br> <label for="author">员工守则标题 ? </label> <br> <input
								type="text" id="author" name="author"
								class="required input_field" /><em style="color: #F00">&nbsp;*</em>
							<div class="cleaner h10"></div>
							<br> <label for="text">员工守则内容 ?</label><br>
							<textarea id="text" name="text" rows="10" cols="30"
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
					<table width="700px" cellspacing="0" cellpadding="5">
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
						<tr>
							<td><input name="selectSub" type="checkbox" /></td>
							<td>1</td>
							<td><a href="rules_look.html">公假也有规定...</a></td>
							<td>请假</td>
							<td>2013-09-28</td>
							<td>旭阳科技</td>
							<td><a href="#" class="more">修改</a>&nbsp;<a href="#"
								class="more">删除</a></td>
						</tr>
						<tr>
							<td><input name="selectSub" type="checkbox" /></td>
							<td>1</td>
							<td><a href="rules_look.html">公假也有规定...</a></td>
							<td>请假</td>
							<td>2013-09-28</td>
							<td>旭阳科技</td>
							<td><a href="#" class="more">修改</a>&nbsp;<a href="#"
								class="more">删除</a></td>
						</tr>
						<tr>
							<td><input name="selectSub" type="checkbox" /></td>
							<td>1</td>
							<td><a href="rules_look.html">公假也有规定...</a></td>
							<td>请假</td>
							<td>2013-09-28</td>
							<td>旭阳科技</td>
							<td><a href="#" class="more">修改</a>&nbsp;<a href="#"
								class="more">删除</a></td>
						</tr>
						<tr>
							<td><input name="selectSub" type="checkbox" /></td>
							<td>1</td>
							<td><a href="rules_look.html">公假也有规定...</a></td>
							<td>请假</td>
							<td>2013-09-28</td>
							<td>旭阳科技</td>
							<td><a href="#" class="more">修改</a>&nbsp;<a href="#"
								class="more">删除</a></td>
						</tr>
						<tr>
							<td><input name="selectSub" type="checkbox" /></td>
							<td>1</td>
							<td><a href="rules_look.html">公假也有规定...</a></td>
							<td>请假</td>
							<td>2013-09-28</td>
							<td>旭阳科技</td>
							<td><a href="#" class="more">修改</a>&nbsp;<a href="#"
								class="more">删除</a></td>
						</tr>
						<tr>
							<td colspan="1" align="left" height="40px"><a href="#"
								class="more float_l">删除选中</a></td>
							<td colspan="7" align="right" height="40px"><a href="#"
								class="more">首页</a>&nbsp;<a href="#" class="more">上一页</a>&nbsp;【1/15】&nbsp;<a
								href="#" class="more">下一页</a>&nbsp;<a href="#" class="more">末页</a>
							</td>
						</tr>
					</table>
				</div>



		 </div>
      </div>
    </div>
   </section>
  </div>
</div>
  <jsp:include page="../foot.jsp"/>
</body>
</html>
