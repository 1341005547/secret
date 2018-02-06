<%String path = request.getContextPath();%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>统计数据导出</title>
    <jsp:include page="../head.jsp"></jsp:include>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <div class="content-wrapper">
        <section class="content-header">
            <h1>
                考勤统计导出
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                <li><a href="#">Tables</a></li>
                <li class="active">Data tables</li>
            </ol>
        </section>
        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">公司员工考勤数据</h3>
                        </div>
                        <div class="box-body">
                            <table id="example1" class="table table-bordered table-striped">
                                <!-- 遍历循环传递数据 -->
                                <!-- ============表头============= -->
                                <thead>
                                <tr>
                                    <th>统计信息序号</th>
                                    <th>用户编号</th>
                                    <th>部门编号</th>
                                    <th>用户名</th>
                                    <th>考勤结果</th>
                                    <th>考勤时间</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="baseStatisticsEntry" items="${list}">
                                    <tr>
                                        <td>${baseStatisticsEntry.id}</td>
                                        <td>${baseStatisticsEntry.uid}</td>
                                        <td>${baseStatisticsEntry.deptId}</td>
                                        <td>${baseStatisticsEntry.uname}</td>
                                        <td>${baseStatisticsEntry.manualResult}</td>
                                        <td><fmt:formatDate value="${baseStatisticsEntry.time}" pattern="yyyy-MM-dd"></fmt:formatDate></td>
                                    </tr>
                                </c:forEach>
                                </tbody>


                            </table>
                        </div>
                    </div>
                </div>
                <!-- ================================================打印按钮==================================== -->
                <div class="row no-print">
                    <div class="col-xs-12">

                        <button type="button" class="btn btn-success pull-right"><i class="fa fa-credit-card"></i> <a
                                href="printExcel">打印excel</a></button>
                    </div>
                </div>

        </section>

    </div>

</div>
<jsp:include page="../foot.jsp"></jsp:include>
<!-- page script -->
<script>
    $(function () {
        $('#example1').DataTable({
            "pagingType": "simple_numbers",//设置分页控件的模式
            searching: false,//屏蔽datatales的查询框
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
