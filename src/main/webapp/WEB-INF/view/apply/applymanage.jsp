<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
     <%String path=request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
 <jsp:include page="../head.jsp"></jsp:include> 

<body class="hold-transition skin-blue sidebar-mini">

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header" style="margin-top: 0px;">
      <h1>
        申请管理
        <small>Application management</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">申请管理aa</a></li>
        <li class="active">申请管理</li>
      </ol>
    </section>


    <section class="content">
    
       
          <div class="box" style="height: 850px;">
            <div class="box-header">
              <h3 class="box-title">申请列表</h3>
            </div>



            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
              <!-- 遍历循环传递数据 -->
              <!-- ============表头============= -->


                <thead >
                <tr >
  
                  <th style="text-align: center;">申请编号</th>
                  <th style="text-align: center;">申请人</th>
                  <th style="text-align: center;">申请时间</th>
                  <th style="text-align: center;">类型</th>
                  <th style="text-align: center;">状态</th>
                  <th style="text-align: center;">操作</th>
                </tr>
                </thead>
               <tbody style="text-align: center;">
  		
                	<c:forEach items="${applies }" var="apply">
	                	<c:if test="${apply.aSubmit==1}">
	         			
	                			<tr>   
					                <td>${apply.aId }</td>
					                <td><a >${apply.uName }</a></td>
					                <td><fmt:formatDate pattern="yyyy-MM-dd" value="${apply.aCreateTime}" type="time"/></td>
					                <td> ${apply.aName }</td>
					                <td>${apply.aState }</td>
					                <td><a href="applyexamine?uId=${apply.uId }&aId=${apply.aId}" class="more">审核</a>&nbsp;
					                	<a href="result_applydelete?aaa=${apply.aId}" class="more">删除</a>
					               	</td>
	                			</tr>	
	                	</c:if>
               		</c:forEach>
               		
               		<c:forEach items="${applies2 }" var="apply2">
               			<tr>   
					                <td>${apply2.aId }</td>
					                <td><a >${apply2.uName }</a></td>
					                <td><fmt:formatDate pattern="yyyy-MM-dd" value="${apply2.aCreateTime}" type="time"/></td>
					                <td> ${apply2.aName }</td>
					                <td>${apply2.aState }</td>
					                <td><a href="applyexamine?uId=${apply2.uId }&aId=${apply2.aId}" class="more">审核</a>&nbsp;
					                	<a href="result_applydelete?aaa=${apply2.aId}" class="more">删除</a>
					               	</td>
	                			</tr>	
               		</c:forEach>
               		<c:forEach items="${applies3 }" var="apply3">

               				<tr>   
					                <td>${apply3.aId }</td>
					                <td><a >${apply3.uName }</a></td>
					                <td><fmt:formatDate pattern="yyyy-MM-dd" value="${apply3.aCreateTime}" type="time"/></td>
					                <td> ${apply3.aName }</td>
					                <td>${apply3.aState }</td>
					                <td><a href="applyexamine?uId=${apply3.uId }&aId=${apply3.aId}" class="more">审核</a>&nbsp;
					                	<a href="result_applydelete?aaa=${apply3.aId}" class="more">删除</a>
					               	</td>
	                		</tr>
               			
               			

               		</c:forEach>
               		
       
                </tbody>
              </table>
               
             </div>
          <!-- /.box -->
       
      </div>
      <!-- /.row -->
    </section>
  </div>
  <!-- /.content-wrapper -->
  
 <jsp:include page="../foot.jsp"></jsp:include> 
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
 

</body>
</html>


