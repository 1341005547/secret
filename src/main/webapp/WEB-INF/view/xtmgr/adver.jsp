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
      <div class="accordion" id="accordion-354281">
        
        

         <br/> <br/> 
           
           <!-- <p>公告发布</p> -->
             <div id="contact_form">
             <h5><strong>公告发布</strong></h5><br>
               <form method="post" name="contact" action="#">
                    
                    <label for="author">公告主题 ? </label><br>
                    <input type="text" id="author" name="author" class="required input_field" /><em style="color:#F00">&nbsp;*</em>
                    <div class="cleaner h10"></div><br>
                         
                    <label for="text">公告主体内容 ?</label><br>
                     <textarea id="text" name="text" rows="10" cols="30" class="required"></textarea><em style="color:#F00">&nbsp;*</em>
                    <div class="cleaner h10"></div>
          
          <input type="submit" value="我要提交" id="submit" name="submit" class="submit_btn float_l" />
                    <input type="button" value="我要保存" id="submit" name="submit" class="submit_btn float_l" />
          <input type="reset" value="重置" id="reset" name="reset" class="submit_btn float_r" />
          
                </form>
                </div>
                <br/> <br/><br/>
                
            <h5><strong>草稿箱</strong></h5>
                <table width="700px" cellspacing="0" cellpadding="5">
                     <tr bgcolor="#CCCCCC">
                        <th width="60" align="left"><input id="chk_SelectALL" type="checkbox"  />全选</th> 
                            <th width="36" align="left">编号</th> 
                          <th width="173" align="left">公告主题</th> 
                            <th width="104" align="left">创建时间</th> 
                            <th width="115" align="left">创建者</th> 
                            <th width="150" align="left">操作</th>
                      </tr>
                      <tr>
                          <td><input name="selectSub"  type="checkbox" /></td> 
                            <td>1</td>
                          <td>[<font color="#FF0000">未发布</font>]<a href="adver_look.html">项目开发规范说明书</a></td> 
                            <td>2013-09-21</td> 
                            <td>旭阳科技</td> 
                            <td>
                              <a href="#" class="more">发布</a>&nbsp;
                                <a href="#" class="more">修改</a>&nbsp;
                                <a href="#" class="more">删除</a>
                                </td>
            </tr>
                        <tr>
                          <td><input name="selectSub"  type="checkbox" /></td> 
                            <td>2</td>
                          <td><a href="adver_look.html">项目开发规范说明书</a></td> 
                            <td>2013-09-21</td> 
                            <td>旭阳科技</td> 
                            <td>
                              <a class="more">发布</a>&nbsp;
                                <a href="#" class="more">修改</a>&nbsp;
                                <a href="#" class="more">删除</a>
                          </td>
            </tr>
                         <td colspan="2" align="left"  height="40px">
                              <a href="#" class="more float_l">删除选中</a>
                            </td>
                            <td colspan="7" align="right"  height="40px"> 
                              <a href="#" class="more">首页</a>&nbsp;<a href="#" class="more">上一页</a>&nbsp;【1/15】&nbsp;<a href="#" class="more">下一页</a>&nbsp;<a href="#" class="more">末页</a>
                            </td>
    
            </tr>
              </table>
            </div>
      
      
      
      
      
      
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
