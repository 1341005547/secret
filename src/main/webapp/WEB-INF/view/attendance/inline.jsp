<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String path=request.getContextPath();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>考勤记录</title>
<jsp:include page="../head.jsp"></jsp:include>
<!--时间日期插件  -->	
<script type="text/javascript" src="<%=path %>/static/plugins/laydate/laydate.js"></script>
<script>
//执行一个laydate实例
laydate.render({
  elem: '#title'
  ,type: 'year'
});
</script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
  <!-- 主体内容 -->
  <div class="content-wrapper">
	<!-- 导航标题-->
   <section class="content-header">
    <h1>
      出勤记录
      <small>Version 2.0</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active">Dashboard</li>
    </ol>
  </section>
  <!-- 主体开始 -->
  <section class="content">
	<div class="callout callout-info">
      <h4>公告栏!</h4>
      <a href="http://getbootstrap.com/javascript/#modals">跳转到具体信息</a>
    </div>

		 <div class="box-header with-border">
            <h3 class="box-title">搜索</h3>
          </div>
          <!-- /.box-header -->
          <!-- form start -->
          <form class="form-horizontal">
            <div class="box-body">
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-2 control-label">输入年份</label>

                <div class="col-sm-10">
                  <input type="email" class="form-control" id="title" placeholder="输入年份">
                </div>
              </div>
             
            </div>
			 <div align="center">
              <input type="submit" value="提交" id="submit" name="submit" class="submit_btn float_l" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="reset" value="重置" id="reset" name="reset" class="submit_btn float_r" />
            </div>
	 </form>
           <br />
           	<h5><strong>出勤详情</strong></h5>
               
    <table id="example1" class="table table-bordered table-striped">
                   	  
					  <thead>
					  <tr bgcolor="#CCCCCC">
                     		<th width="60" align="left"><input id="chk_SelectALL" type="checkbox"  />全选</th> 
                            <th width="30" align="left">编号</th> 
                            <th width="120" align="left">月份</th> 
                        	<th width="120" align="left">姓名</th> 
                        	<th width="120" align="left">出勤率</th> 
                            <th width="150" align="left">操作</th>
                      </tr>
					  </thead>
					  <tbody>
					  <tr>
                        	<td><input name="selectSub"  type="checkbox" /></td> 
                            <td>1</td>
                            <td>1</td>
                        	<td>狐小仙</td>
                            <td>98%</td>
                            
                            <td><a href="toinline-info.html" class="more">查看</a>&nbsp;<a href="#" class="more">删除</a> </td>
						</tr>
                        <tr>
                        	<td><input name="selectSub"  type="checkbox" /></td> 
                            <td>2</td>
                            <td>1</td>
                        	<td>狐小仙</td>
                            <td>98%</td>
                            
                            <td><a href="toinline-info.html" class="more">查看</a>&nbsp;<a href="#" class="more">删除</a> </td>
						</tr>
                       <tr>
                        	<td><input name="selectSub"  type="checkbox" /></td> 
                            <td>3</td>
                            <td>1</td>
                        	<td>狐小仙</td>
                            <td>98%</td>
                            
                            <td><a href="toinline-info.html" class="more">查看</a>&nbsp;<a href="#" class="more">删除</a> </td>
						</tr>
                       <tr>
                        	<td><input name="selectSub"  type="checkbox" /></td> 
                            <td>4</td>
                            <td>1</td>
                        	<td>狐小仙</td>
                            <td>98%</td>
                            
                            <td><a href="toinline-info.html" class="more">查看</a>&nbsp;<a href="#" class="more">删除</a> </td>
						</tr>
						<tr>
                        	<td><input name="selectSub"  type="checkbox" /></td> 
                            <td>2</td>
                            <td>1</td>
                        	<td>狐小仙</td>
                            <td>98%</td>
                            
                            <td><a href="toinline-info.html" class="more">查看</a>&nbsp;<a href="#" class="more">删除</a> </td>
						</tr>
                       <tr>
                        	<td><input name="selectSub"  type="checkbox" /></td> 
                            <td>3</td>
                            <td>1</td>
                        	<td>狐小仙</td>
                            <td>98%</td>
                            
                            <td><a href="toinline-info.html" class="more">查看</a>&nbsp;<a href="#" class="more">删除</a> </td>
						</tr>
                       <tr>
                        	<td><input name="selectSub"  type="checkbox" /></td> 
                            <td>4</td>
                            <td>1</td>
                        	<td>狐小仙</td>
                            <td>98%</td>
                            
                            <td><a href="toinline-info.html" class="more">查看</a>&nbsp;<a href="#" class="more">删除</a> </td>
						</tr>		
					  </tbody>
					  <tfoot>
					  <tr>
                        	<td colspan="8" align="right"  height="40px">
                            	<a href="#" class="more float_l">删除选中</a>
                            	<a href="#" class="more">首页</a>&nbsp;<a href="#" class="more">上一页</a>&nbsp;【1/15】&nbsp;<a href="#" class="more">下一页</a>&nbsp;<a href="#" class="more">末页</a>
                            </td>
    
						</tr>
                    </tfoot>
	
			</table>
<!-- 主体结束-->
			</section>

  </div>
 
<jsp:include page="../foot.jsp"></jsp:include>
<script>
 $(function () {
    $('#example1').DataTable()
  })
    
</script>

</body>
</html>