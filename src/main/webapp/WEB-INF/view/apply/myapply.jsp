<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <%String path=request.getContextPath(); %>
 
<!DOCTYPE html>
<html>

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
           
   <a  class="btn btn-default btn-flat" data-toggle="modal" data-target="#myapply_dispatch">调度</a>
            
     
    <div class="modal fade" id="myapply_dispatch" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog role=" document" style="width: 450px">
		<div class="modal-content">
			<!-- 内容-->
			<div class="row">
				<div class="col-md-4" style="margin: 13px; width: 450px">
					
					<div class="box box-widget widget-user-2">
						
					<form action="" method="post">
					<div class="form-group has-feedback">
						<input type="text"  class="form-control" placeholder="调度申请人" readonly="readonly">
					</div>
					<div class="form-group has-feedback">
						<input type="text"  class="form-control" placeholder="当前部门" readonly="readonly">
					</div>
					<div class="form-group has-feedback">
						<input type="text"  class="form-control" placeholder="当前职位" readonly="readonly">
					</div>
					<div class="form-group has-feedback">
						<input type="text"  class="form-control" placeholder="要调动的部门" >
					</div>
					<div class="form-group has-feedback">
						<input type="text"  class="form-control" placeholder="要调动的职位">
					</div>
					<div class="form-group has-feedback">
						<input type="text"  class="form-control" placeholder="调度时间">
					</div>
				
					<div class="row">
						
						<input type="submit" class="btn btn-block btn-facebook btn-flat">
						<input type="reset" class="btn btn-block btn-google btn-flat">
					</div>
				</form>				
					</div>
				</div>
			</div>
			<!-- 内容-->
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
			</div>
		</div>
	</div>
</div>
     
     

            
          <form action="" class="">
             <table  >
                  <tr>
                    <td><label for="name">申请人姓名：</label></td>
                  </tr>
                  <tr>
                    <td><input type="text" readonly="only" value="${User.uName }"/></td>
                  </tr>
                  <tr>
                    <td><label for="type">申请类型：</label></td>
                  </tr>
                  <tr >
                    <td ><select name="select" class="required input_field" id="type">
                      <option selected="selected">-这还是默认的(请选择)</option>
                        <c:forEach items="${type_applies }" var="type_apply">
                        	<option id="${type_apply.tId }">${type_apply.tName }</option>
                        </c:forEach>
                    </select><em style="color:#F00">&nbsp;*</em></td>
                  </tr>
                  <tr><td><label>申请事件</label></td></tr>
                  <tr><td><textarea name="" cols="" rows="" style="resize:none"></textarea><em style="color:#F00">&nbsp;*</em></td></tr>
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

 <jsp:include page="../../foot.jsp"></jsp:include> 

</body>
</html>
