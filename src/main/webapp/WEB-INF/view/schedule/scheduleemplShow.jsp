<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../head.jsp"></jsp:include>

</head>
<body class="hold-transition skin-blue sidebar-mini">

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">

		<!-- Main content -->
		<section class="content">
			<div class="row">
				<div class="col-xs-12">
					<div class="box">
						<div class="box-header">
							<h3 class="box-title">我的日程</h3>
						</div>

						<!-- /.box-header -->
						<div class="box-body">
							<table id="page" class="table table-bordered table-striped"
								cellpadding="0" cellspacing="0" border="1px">
								<!-- 遍历循环传递数据 -->
								<!-- ============表头============= -->
								<thead>
									<tr>
										<th>日程编号</th>
										<th>日程内容</th>
										<th>开始时间</th>
										<th>结束时间</th>
										<th>创建时间</th>
										<th>状态</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<% int s = 1; %>
									<c:set var="nowDate" value="<%=System.currentTimeMillis()%>"></c:set>
									<c:forEach var="scheduleempl" items="${slist}" step="1">
										<tr>
											<!-- 给后台获取的数据添加序号 -->
											<td><%=s++%></td>
											<td>${scheduleempl.scheduleContent}</td>
											<td><fmt:formatDate
													value="${scheduleempl.scheduleStartTime}"
													pattern="yyyy年MM月dd日 - HH:mm:ss" /></td>
											<td><fmt:formatDate
													value="${scheduleempl.scheduleEndTime}"
													pattern="yyyy年MM月dd日 - HH:mm:ss" /></td>
											<td><fmt:formatDate
													value="${scheduleempl.scheduleCreateTime}"
													pattern="yyyy年MM月dd日 - HH:mm:ss" /></td>
											<td><c:choose>
													<c:when
														test="${nowDate - scheduleempl.scheduleEndTime.time > 0}">
														<font color="#FF0000">已过期</font>
													</c:when>
													<c:otherwise>
														未完成
													</c:otherwise>
												</c:choose></td>
											<td><c:choose>
													<c:when
														test="${nowDate - scheduleempl.scheduleEndTime.time > 0}">
														<a class="btn btn-primary btn-xs" data-toggle="modal"
															disabled>修改</a>&nbsp;
													</c:when>
													<c:otherwise>
														<a class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal_update"
															onclick="updateSchedule(${scheduleempl.s_id})" 
															>修改</a>&nbsp;
													</c:otherwise>
												</c:choose> 
												<a class="btn btn-primary btn-xs" data-toggle="modal"
												href="delScheduleempl/${scheduleempl.s_id}" class="more"
												onclick="if(confirm('确定删除?')==false)return false;">删除</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
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


<script type="text/javascript">
//日程修改
function updateSchedule(s_id){
	$.ajax({
		url:"editScheduleempl",
		type:"post",
		data:"s_id="+s_id,
		dataType:"json",
		success:function(data){
			$("#con").val(data.scheduleempl.scheduleContent);
			$("#start").val(data.startDateString);
			$("#end").val(data.endDateString);
			$("#update").val(data.updateDateString);
			$("#create").val(data.createDateString);
			$("#uid").val(data.scheduleempl.u_id);
			$("#sid").val(data.scheduleempl.s_id);
		}
	})	  
}
</script>

	
<!-- 日程修改弹出框 -->
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
							style="width: 424px; background-color: #5CACEE;">
							<!-- /.widget-user-image -->
							<center>
								<h3>日程信息</h3>
							</center>
						</div>
						<div class="box-footer">
							
						<form method="post" action="saveEditScheduleempl" onsubmit="return checkform(this)" >
							<center>
					            <label for="con">日&nbsp;&nbsp;&nbsp;程&nbsp;&nbsp;&nbsp;内&nbsp;&nbsp;&nbsp;容 ：</label>
					            <input id="con" name="scheduleContent" /><em style="color:#F00">&nbsp;*</em>
					            <div class="cleaner h10"></div><br>
					            <label for="start">日程开始时间 ：</label>
					            <input id="start" name="scheduleStartTime" />
					            <em style="color:#F00">&nbsp;*</em><br><br>
					            <label for="end">日程结束时间 ：</label>
					            <input id="end" name="scheduleEndTime" />
					            <em style="color:#F00">&nbsp;*</em><br><br>
					            <label for="create">日程创建时间 ：</label>
					            <input id="create" name="scheduleCreateTime" style="border-width: 0;" readonly  unselectable="on" /><br><br>
					            <label for="update">日程上次更新 ：</label>
					            <input id="update" name="scheduleUpdateTime" style="border-width: 0;" readonly  unselectable="on" /><br><br>
					            <div class="cleaner h10"></div>
				          		<input type="hidden" id="uid" name="u_id"/>
						        <input type="hidden" id="sid" name="s_id"/>
		
								<input type="reset" value="重置" class="submit_btn float_r" />&nbsp;&nbsp;&nbsp;
						        <input type="submit" value="提交" onclick="if(confirm('确定提交?')==false)return false;" 
						        	name="save" class="submit_btn float_r" />
					        </center>
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

<jsp:include page="../foot.jsp"></jsp:include>

<!-- layDate -->
<script src="<%=path%>/static/bower_components/layDate-v5.0.9/laydate/laydate.js"></script>

<script type="text/javascript">
	//开始时间
	laydate.render({
		elem : '#start',
		type : 'datetime'
	});
	//结束时间
	laydate.render({
		elem : '#end',
		type : 'datetime'
	});
</script>

<!-- 验证日期（判断结束日期是否大于开始日期）日期格式为YY—MM—DD HH:mm:ss -->
<script type="text/javascript">

	function checkform(obj){
		if(obj.scheduleContent.value == null || obj.scheduleContent.value == ""){
			alert("日程内容不能为空！");
			return false;
		}
	    if(obj.scheduleStartTime.value != null && obj.scheduleEndTime.value != ""){

	    	var startTmp=obj.scheduleStartTime.value.replace(" ",":").replace(/\:/g,"-").split("-");
	        var endTmp=obj.scheduleEndTime.value.replace(" ",":").replace(/\:/g,"-").split("-");
	        var sd=new Date(startTmp[0],startTmp[1],startTmp[2],startTmp[3],startTmp[4],startTmp[5]);
	        var ed=new Date(endTmp[0],endTmp[1],endTmp[2],endTmp[3],endTmp[4],endTmp[5]);
	        
	        if(sd.getTime()>ed.getTime()){
	            alert("结束日期不能早于开始日期！");     
	            return false; 
	        }
	    }
		if(obj.scheduleStartTime.value == null || obj.scheduleStartTime.value == ""){
	    	alert("开始日期不能为空！");     
            return false;
	    } 
		if(obj.scheduleEndTime.value == null || obj.scheduleEndTime.value == ""){
	    	alert("结束日期不能为空！");     
            return false;
	    }
	    return true;
	}
</script>
<!-- /验证日期（判断结束日期是否大于开始日期）日期格式为YY—MM—DD HH:mm:ss -->

<script>
	$(function() {
		$('#page').DataTable({
			"pagingType" : "simple_numbers",//设置分页控件的模式  
			searching : true,//屏蔽datatales的查询框  
			aLengthMenu : [ 5, 10, 15 ],//设置一页展示10条记录  
			"oLanguage" : { //对表格国际化  
				"sLengthMenu" : "每页显示 _MENU_条",
				"sZeroRecords" : "没有找到符合条件的数据",
				//"sProcessing": "&lt;img src=’./loading.gif’ /&gt;",    
				"sInfo" : "当前第 _START_ - _END_ 条　共计 _TOTAL_ 条",
				"sInfoEmpty" : "木有记录",
				"sInfoFiltered" : "(从 _MAX_ 条记录中过滤)",
				"sSearch" : "搜索：",
				"oPaginate" : {
					"sFirst" : "首页",
					"sPrevious" : "上一页",
					"sNext" : "下一页",
					"sLast" : "尾页"
				}
			},
		})
	})
</script>

</body>
</html>
