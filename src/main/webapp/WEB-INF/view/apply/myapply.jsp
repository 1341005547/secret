<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
  <%String path=request.getContextPath();%>
<!DOCTYPE html>
<html>
<head>
  <jsp:include page="../head.jsp"></jsp:include>

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
             <table border="0"  >
                  <tr>
                    <td><label for="name">申请人姓名：</label></td>
                  </tr>
                  <tr>
                    <td><input type="text" name="name" readonly="only" /></td>
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
    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">申请草稿箱</h3>
            </div>

              <div>
                <div class="divlable"><label>Show<select name="example1_length" aria-controls="example1" class="labelselect">
                      <option value="10">10</option>
                      <option value="25">25</option>
                      <option value="50">50</option>
                      <option value="100">100</option>
                    </select>entries</label>
                  <div>Search<label><input type="search" class="form-control input-sm"></label></div>
                </div>
              </div>
              


            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped" cellpadding="0" cellspacing="0" border="1px">
              <!-- 遍历循环传递数据 -->
              <!-- ============表头============= -->


                <thead>
                <tr>
                  <th width="80" align="left"><input id="chk_SelectALL" type="checkbox" />全选</th>
                  <th>申请编号</th>
                  <th>申请人</th>
                  <th>申请时间</th>
                  <th>类型</th>
                  <th>状态</th>
                  <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                <td><input type="checkbox" name="selectSub" /></td> 
                  <td>Trident</td>
                  <td><a href="applyexamine">Internet Explorer 4.0 </a></td>
                  <td>Win 95+</td>
                  <td> 4</td>
                  <td>X</td>
                  <td><a href="#" class="more">提交</a>&nbsp;<a href="applyedit" class="more">编辑</a>&nbsp;<a href="#" class="more">删除</a></td>
                </tr>
                <tr>
                <td><input type="checkbox" name="selectSub" /></td> 
                  <td>Trident</td>
                  <td><a href="applyexamine">Internet Explorer 5.0 </a></td>
                  <td>Win 95+</td>
                  <td>5</td>
                  <td>C</td>
                  <td><a href="#" class="more">提交</a>&nbsp;<a href="applyedit" class="more">编辑</a>&nbsp;<a href="#" class="more">删除</a></td>
                </tr>
                <tr>
                <td><input type="checkbox" name="selectSub" /></td> 
                  <td>Trident</td>
                  <td><a href="applyexamine">Internet Explorer 5.5 </a></td>
                  <td>Win 95+</td>
                  <td>5.5</td>
                  <td>A</td>
                  <td><a href="#" class="more">提交</a>&nbsp;<a href="applyedit" class="more">编辑</a>&nbsp;<a href="#" class="more">删除</a></td>
                </tr>
             
               
                </tbody>

              </table>


          <div class="row">
              <div class="col-sm-5">
                <div class="dataTables_info" id="example1_info" role="status" aria-live="polite">Showing 1 to 10 of 57 entries</div>
              </div>
              <div class="col-sm-7">
                <div class="dataTables_paginate paging_simple_numbers" id="example1_paginate">
                  <ul class="pagination">
                    <li class="paginate_button previous disabled" id="example1_previous">
                      <a href="#" aria-controls="example1" data-dt-idx="0" tabindex="0">Previous</a>
                    </li>
                    <li class="paginate_button active"><a href="#" aria-controls="example1" data-dt-idx="1" tabindex="0">1</a></li>
                    <li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="2" tabindex="0">2</a></li>
                    <li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="3" tabindex="0">3</a></li>
                    <li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="4" tabindex="0">4</a></li>
                    <li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="5" tabindex="0">5</a></li>
                    <li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="6" tabindex="0">6</a></li>
                    <li class="paginate_button next" id="example1_next">
                      <a href="#" aria-controls="example1" data-dt-idx="7" tabindex="0">Next</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
         </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>

    <!-- /.content -->
  </div>
 
  <div class="control-sidebar-bg"></div>





 <jsp:include page="../foot.jsp"></jsp:include>

</body>
</html>
