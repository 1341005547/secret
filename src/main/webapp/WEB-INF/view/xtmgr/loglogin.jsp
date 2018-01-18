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

   <script type="text/javascript" src="${pageContext.request.contextPath}/js/My97DatePicker/WdatePicker.js"></script>
   <!-- <script type="text/javascript" src="../../js/jquery-1.8.0.min.js"></script> --> 
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

        //日期选择控件
       /* $("#startDate").click(function(){
          WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',lang:'zh-cn',isShowClear:false,maxDate:new Date(),minDate:'%y-%M-{%d+1}'
          });
        });
        $("#endDate").click(function(){
          WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',lang:'zh-cn',isShowClear:false,maxDate:new Date(),minDate:'%y-%M-{%d+1}'
          });
        });*/
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
  <div class="content-wrapper">
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

             
             <h4><strong>登陆日志搜索操作</strong></h4>
        <div id="contact_form">
               <form method="post" name="contact" action="#">
            
          <label for="email">搜索日期的上限  ?</label><br> <input type="text" name="email" class="Wdate" onFocus="WdatePicker({dateFmt:'yyyyMMdd',lang:'zh-cn'})" onclick="WdatePicker();" size="33"/>  
          <div class="cleaner h10"></div>
              
          <label for="subject">搜索日期下限 ?</label> <br><input type="text" class="Wdate" onFocus="WdatePicker({dateFmt:'yyyyMMdd',lang:'zh-cn'})" size="33" /><br>
          <div class="cleaner h10"></div><br>
                              
          <input type="submit" value="我要提交" id="submit" name="submit" class="submit_btn float_l" />
          <input type="reset" value="重置" id="reset" name="reset" class="submit_btn float_r" />
          
        </form>
        </div>
          
          <br><br>
           <h5><strong>登陆日志列表</strong></h5>
        <table width="700px" cellspacing="0" cellpadding="5">
                      <tr bgcolor="#CCCCCC">
                        <th width="60" align="left"><input id="chk_SelectALL" type="checkbox"  />全选</th> 
                            <th width="30" align="left">编号</th> 
                          <th width="93" align="left">登陆用户</th> 
                          <th width="86" align="left">登陆时间</th> 
                            <th width="96" align="left">退出时间</th> 
                            <th width="112" align="left">IP地址</th>
                            <th width="150" align="left">操作</th>
                      </tr>
                      <tr>
                          <td><input name="selectSub"  type="checkbox" /></td> 
                          <td><a href="#">1</a></td> 
                            <td>系统管理员</td>
                            <td>2013-09-23</td> 
                            <td>2013-09-23</td>
                            <td>
                              192.168.1.240   
                            </td>
                             <td><a href="log_look.html" class="more">查看</a>&nbsp;<a href="#" class="more">删除</a></td>
            </tr> 
                        <tr>
                          <td><input name="selectSub"  type="checkbox" /></td> 
                          <td><a href="#">1</a></td> 
                            <td>系统管理员</td>
                            <td>2013-09-23</td> 
                            <td>2013-09-23</td>
                            <td>
                              192.168.1.240   
                            </td>
                             <td><a href="log_look.html" class="more">查看</a>&nbsp;<a href="#" class="more">删除</a></td>
            </tr>
                        <tr>
                          <td><input name="selectSub"  type="checkbox" /></td> 
                          <td><a href="#">1</a></td> 
                            <td>系统管理员</td>
                            <td>2013-09-23</td> 
                            <td>2013-09-23</td>
                            <td>
                              192.168.1.240   
                            </td>
                             <td><a href="log_look.html" class="more">查看</a>&nbsp;<a href="#" class="more">删除</a></td>
                        </tr>        
                        <tr>
                           <td colspan="2" align="left"  height="40px">
                              <a href="#" class="more float_l">删除选中</a>
                            </td>
                            <td colspan="7" align="right"  height="40px"> 
                              <a href="#" class="more">首页</a>&nbsp;<a href="#" class="more">上一页</a>&nbsp;【1/15】&nbsp;<a href="#" class="more">下一页</a>&nbsp;<a href="#" class="more">末页</a>
                            </td>
    
            </tr>
          </table>



       </div>
      </div>
   </section>
  </div>
</div>
</div>
  <jsp:include page="../foot.jsp"/>
</body>
</html>
