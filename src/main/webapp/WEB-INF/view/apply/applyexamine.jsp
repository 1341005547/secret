<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%String path=request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
   <jsp:include page="../../head.jsp"></jsp:include> 
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  

  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        申请详情
        <small>Application details</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">申请管理</a></li>
        <li class="active">我的申请</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-6">
           <h3 class="box-title">申请详情</h3>

            <table width="402" >
              <tr>
                <td width="152" height="40">申请人：</td>
                <td width="234">孙悟空</td>
              </tr>
              <tr>
                <td height="40">申请时间：</td>
                <td>2013-09-12</td>
              </tr>
               <tr>
                <td height="40">申请类型：</td>
                <td>调动</td>
              </tr>
              <tr>
                <td height="40">申请事件：</td>
                <td>职位调动</td>
              </tr>
              <tr>
                <td height="40">请假时间：</td>
                <td>2013-09-28</td>
              </tr>
              <tr>
                <td height="40">申请意见：</td>
                <td>望领导批准</td>
              </tr>
               
            </table>
            <br/>
   
      <input type="button" name="Submit" onclick="javascript:history.back(-1);" value="返回列表">   
      
      </div>   
    </div>
    </section>
    <!-- Main content -->
     <section class="content">
      <div class="row">
        <div class="col-md-6">
           <h3 class="box-title">申报审核</h3>
            <div id="contact_form">
               <form method="post" name="contact" action="#">
  
                    <label for="email">审核人：</label>  <br/><input type="text" id="title" class="required input_field" value="张三"  readonly="readonly" /><em style="color:#F00">&nbsp;*</em>
                    <div class="cleaner h10"></div>
                    
                    <label for="email">审核建议：</label> <br/><textarea id="text" rows="0" cols="0" class="required"></textarea><em style="color:#F00">&nbsp;*</em>
                    <div class="cleaner h10"></div>
                    
                     <label for="email">审核操作：</label> <br/>
                    <select name="select" class="required input_field">
                      <option selected="selected">-这还是默认的(请选择)</option>
                        <option value="3">通过</option>
                        <option value="4">拒绝</option>
                    </select><em style="color:#F00">&nbsp;*</em>
                    <div class="cleaner h10"></div>
                              
               <input type="submit" value="我要提交" id="submit" name="submit" class="submit_btn float_l" />
               <input type="reset" value="重置" id="reset" name="reset" class="submit_btn float_r" />
          
          
                </form>
                </div>
           
      
      </div>   
    </div>
    </section>
</div>
    
  </div>
 <jsp:include page="../../foot.jsp"></jsp:include> 
</body>
</html>
