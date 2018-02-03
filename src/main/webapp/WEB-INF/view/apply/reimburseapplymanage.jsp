<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%String path=request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
 
 <jsp:include page="../head.jsp"></jsp:include> 
 
 
 <body>
 

  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header" style="margin-top: 0px">
      <h1>
        报销管理
        <small>To submit an expense account management</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Charts</a></li>
        <li class="active">Flot</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
  
        <div class="col-xs-12">
          <!-- interactive chart -->
          <div class="box box-primary">


            <div class="box-header with-border">

              <i class="fa fa-bar-chart-o"></i>

              <h3 class="box-title">添加报销单</h3>

           
            </div>
            <div class="box-body">
                 <form action="account_dispatchAdd" method="post" id="actionUrl">
                 
                 <table style="width: 90%" class="addform-base" >
                            <tr>
                                <td><h4>*填报人：</h4></td>
                                <td><h4>${user.uName }</h4></td>
                                <td><h4>*填报时间：</h4></td>
                                <td><h4><input type="text" id="status" name="" value="<%=(new java.util.Date()).toLocaleString()%>"
                                     readonly="readonly"  /></h4></td>
                            </tr>
                            <tr height="25px;" >
                                <td></td>
                                <td></td>
                                <td><h4 >*状态：</h4></td>
                                <td><h4 ><input type="text" id="status" name="tatus" value="新创建"
                                        readonly="readonly" /></h4></td>
                            </tr>
                            <tr height="30px;" >
                                <td colspan="4"><h4><span class="notice" id="noctice"></span></h4></td>
                            </tr>
                        </table>
                        <table id="myTable"  style="width: 90%" class="addform-base">
                    <tr height="25px;" >
                        <td width="30%"><h4>项目类别</h4></td>
                        <td width="30%"><h4>项目金额</h4></td>
                        <td width="30%"><h4>费用说明</h4></td>
            
                    </tr>
                </table>
                <table id="detailTable" style="width: 90%" class="addform-base">
                    <tr>
                        <td width="30%">
                           <h4>
                            	<select name="cDId" id="cDId">
                                	<c:forEach items="${category_dispatchs }" var="category_dispatch">
                                		<option value="${category_dispatch.cDId }" >${category_dispatch.cDName }</option>
                                	</c:forEach>
                            </select>
                         </h4>
                        </td>
                        <td width="30%"><input type="text" name="aDPrice" id="aDPrice10" /><span class=notice>*</span></td>
                        <td width="30%"><input type="text" name="aDExplain" id="desc10" /><span class=notice>*</span></td>
                    </tr>
                    
                    <tr >
                               
                                
                                <td ><h4>*申请事件：</h4></td>
                                <td>
                                	<textarea rows="" cols="" name="aEven" id="aEven10"></textarea>
                                </td>  	
                                
                            </tr>
  
                      <tr align="center">
                               
                                <td >
                                <h4>
                                    <input type="submit" id="2" name="2" value="提交"  onclick="return qwe()" />
										
									<input type="reset" id="1" name="1" value="重置"  />
                          		 
								</h4>	 
								
                                </td>
                            </tr>
                </table>
 
                 </form>      
            </div>
            <!-- /.box-body-->
          </div>
          <!-- /.box -->

        </div>
        <!-- /.col -->

      </div>
      <!-- /.row -->
</section>
      
      
      <script type="text/javascript">
      function qwe() {
    	  var aDPrice = document.getElementById("aDPrice10").value;
    	  var desc =  document.getElementById("desc10").value;
    	  var aEven =  document.getElementById("aEven10").value;
  
    	  
    	  if(aDPrice==""||aDPrice==null){
    		  alert("项目金额不能为空！");
    		 return false; 
    	  }
    	  if(desc==""||desc==null){
    		  alert("费用说明不能为空!");
    		  return false; 
    	  }
    	  if(aEven==null||aEven==""){
    		  alert("申请事件不能为空！");
    		  return false; 
    	  }
    	  return true;
		
	}
      
      
      
      </script>
      
 <!-- /.box-header -->
            <div class="box-body">
            <h3 class="box-title">报销单列表</h3>
              <form action="#" name="claimForm">
              <input type="hidden" name="claimVoucher.create_sn" value="${sessionScope.employee_sn}"/>
              <input type="hidden" name="claimVoucher.next_deal_sn" value="${sessionScope.depertmentManager.sn }"/>
              <input type="hidden" id="rowNumber" name="rowNumber" value=""/>
                
                <table id="example1" class="table table-bordered table-striped" >
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
                <c:forEach items="${reimburseapplies }" var="account_dispatch">
	                	
	         			
	                				<tr>
					                <td>${account_dispatch.aId }</td>   
					                <td><a onclick="accountdispathDeal(${account_dispatch.aId})"
					                  data-toggle="modal" data-target="#myapply_deal">${account_dispatch.uName }</a></td>
					                <td><fmt:formatDate pattern="yyyy-MM-dd" value="${account_dispatch.aDTime}" type="time"/></td>
					                <td> ${account_dispatch.cdName }</td>
					                <td>${account_dispatch.aState }</td>
					                <td>	
					                	<a href="result_applydelete?aaa=${account_dispatch.aId}" class="more">删除</a>
					               	</td>
	                			</tr>

               		</c:forEach>

                </tbody>
              </table>
           </form>       
  
  <script type="text/javascript">
function accountdispathDeal(applyaId){
	  $.ajax({
       url:"accountdispathDealByaId/"+applyaId,
       dataType:"json",
       success:function(data){
    	$("#aDPrice11").val(data.account_dispatch.aDPrice),
      	$("#aEven").val(data.account_dispatch.aEven),
      	$("#uName").val(data.account_dispatch.uName),
      	$("#cdName").val(data.account_dispatch.cdName) ,
      	$("#aDExplain").val(data.account_dispatch.aDExplain) ,
      	$("#aState").val(data.account_dispatch.aState) ,
      	$("#rAResult").val(data.account_dispatch.rAResult) 
   
       }
	  })	  
};
</script>
   <div class="modal fade" id="myapply_deal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog role="  style="width: 450px">
		<div class="modal-content">
			<!-- 内容-->
			<div class="row">
				<div class="col-md-4" style="margin: 13px; width: 450px">
					<div class="box box-widget widget-user-2">
					<div class="form-group has-feedback">
						<input type="text" id="uName" class="form-control" placeholder="申请人" readonly="readonly" value="${reultdata.account_dispatch.uName }">
					</div>
					<div class="form-group has-feedback">
						<input type="text" id="cdName"  class="form-control" placeholder="报销项目类别" readonly="readonly">
					</div>
					<div class="form-group has-feedback">
						<input type="text"  id="aDPrice11" class="form-control" placeholder="报销项目金额" readonly="readonly">
					</div>
					<div class="form-group has-feedback">
						<input type="text"  id="aDExplain" class="form-control" placeholder="报销费用说明" readonly="readonly">
					</div>
					<div class="form-group has-feedback">
						<input type="text"   id="aEven" class="form-control" placeholder="申请事件" readonly="readonly">
					</div>
					<div class="form-group has-feedback">
						<input type="text" id="aState"  class="form-control" placeholder="报销单状态" readonly="readonly">
					</div>
					<div class="form-group has-feedback">
						<input type="text" id="rAResult"  class="form-control" placeholder="处理结果" readonly="readonly">
					</div>
						
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


           </div>

     
          <!-- /.box -->
        </div>

  
   <jsp:include page="../foot.jsp"></jsp:include> 
   <script>
			$(function() {

				$('#example1').DataTable({

					searching : true,//屏蔽datatales的查询框  
					aLengthMenu : [ 5, 10 ],//设置一页展示10条记录  

					"oLanguage" : { //对表格国际化  
						"sLengthMenu" : "每页显示 _MENU_条",
						"sZeroRecords" : "没有找到符合条件的数据",
						//  "sProcessing": "&lt;img src=’./loading.gif’ /&gt;",    
						"sInfo" : "当前第 _START_ - _END_ 条　共计 _TOTAL_ 条",
						"sInfoEmpty" : "木有记录",
						"sInfoFiltered" : "(从 _MAX_ 条记录中过滤)",
						"sSearch" : "搜索：",
						"oPaginate" : {
							"sFirst" : "首页",
							"sPrevious" : "前一页",
							"sNext" : "后一页",
							"sLast" : "尾页"

						}
					},
				})
			})
		</script>
</body>
</html>

