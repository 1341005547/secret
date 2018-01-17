<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%String path=request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
  <jsp:include page="../../head.jsp"></jsp:include> 

<body class="hold-transition skin-blue sidebar-mini">


  
  

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        我的申请
        <small>my application</small>
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
           <h3 class="box-title">申请操作</h3>
            
          <form action="" class="">
             <table border="0" cellspacing="0" cellpadding="0" >
                  <tr>
                    <td><label for="name">申请人姓名：</label></td>
                  </tr>
                  <tr>
                    <td><input type="text" name="name" readonly="only" value="" /></td>
                  </tr>
                  <tr>
                    <td><label for="type">申请类型：</label></td>
                  </tr>
                  <tr >
                    <td ><select name="select" class="required input_field" id="type">
                      <option selected="selected">-这还是默认的(请选择)</option>
                        <option value="1">调动</option>
                        <option value="2">申购</option>
                        <option value="3">加班</option>
                        <option value="4">辞职</option>
                    </select><em style="color:#F00">&nbsp;*</em></td>
                  </tr>
                  <tr><td><label>申请事件</label></td></tr>
                  <tr><td><textarea name="" cols="" rows=""></textarea><em style="color:#F00">&nbsp;*</em></td></tr>
                  <tr ><td ><input type="submit" value="我要提交" id="submit" name="submit" class="submit_btn float_l" />
                    <input type="button" value="我要保存" id="submit" name="submit" class="submit_btn float_l" />
                    <input type="reset" value="重置" id="reset" name="reset" class="submit_btn float_r" /></td></tr>

                </table>
          </form>
             
      
      </div>   
    </div>
    </section>
    </div>


 <jsp:include page="../../foot.jsp"></jsp:include> 

</body>
</html>
