<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>考勤统计</title>
    <script src="<%=path %>/static/dist/js/Chart.js"></script>
    <script src="<%=path %>/static/jquery-3.1.1.js"></script>
    <script src="<%=path %>/static/plugins/laydate/laydate.js"></script>
    <jsp:include page="../head.jsp"></jsp:include>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <!-- ===================================================划分导航栏和主显示栏================================================ -->
    <div class="content-wrapper">

        <section class="content-header">

            <h1>
                考勤统计
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
                <li class="active">考勤统计</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <!-- ==========================form表单========================= -->
            <div class="box box-info">

                <div class="box-header with-border">
                    <h3 class="box-title">搜索</h3>
                </div>
                <!-- /.box-header -->
                <!-- form start -->

                <div class="box-body">
                    <form action="statistics_main" class="form-horizontal">
                        <!-- <div class="form-group">
                          <label for="inputEmail3" class="col-sm-2 control-label">员工编号</label>
                          <div class="col-sm-10">
                            <input type="email" name="uId" class="form-control" id="inputEmail3" placeholder="员工编号">
                          </div>
                        </div> -->
                        <div class="form-group">
                            <label for="inputPassword3" class="col-sm-2 control-label">部门名称</label>
                            <div class="col-sm-10">
                                <select name="deptId" class="form-control select2" style="width: 100%;">
                                    <option value="3">人事部</option>
                                    <option value="2">研发部</option>
                                    <option value="1">管理部</option>
                                </select>
                            </div>
                        </div>
                </div>
                <!-- ================================时间选择=================================== -->
                <div class="box-footer">
                    <button <%--type="submit"--%> id="testAjax" class="btn btn-info pull-right">search</button>
                </div>
                </form>
            </div>
            <!-- ==================================================统计主显示区================================================================= -->
            <div class="row">
                <div class="col-md-12">
                    <div class="box">
                        <div class="box-header with-border">
                            <h3 class="box-title">各月的考勤率</h3>

                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i
                                        class="fa fa-minus"></i>
                                </button>
                                <div class="btn-group">
                                    <button type="button" class="btn btn-box-tool dropdown-toggle"
                                            data-toggle="dropdown">
                                        <i class="fa fa-wrench"></i></button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="#">Action</a></li>
                                        <li><a href="#">Another action</a></li>
                                        <li><a href="#">Something else here</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a></li>
                                    </ul>
                                </div>
                                <button type="button" class="btn btn-box-tool" data-widget="remove"><i
                                        class="fa fa-times"></i></button>
                            </div>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-8">
                                    <p class="text-center" id="title">

                                    </p>
                                    <div class="chart">
                                        <!-- Sales Chart Canvas -->
                                        <canvas id="myChart" style="height: 250px;"></canvas>
                                    </div>
                                    <!-- /.chart-responsive -->
                                </div>
                                <!-- /.col -->
                                <!-- =============================================数据分析区间=============================== -->
                                <div class="col-md-4" style="margin-top:50px">
                                    <p class="text-center">
                                        <strong>各部门指数</strong>
                                    </p>

                                    <div class="progress-group">
                                        <span class="progress-text">管理部正常出勤人次/总出勤人次</span>
                                        <span class="progress-number"><b>${viewDateMain.deptManagerNumNormal }/${viewDateMain.deptManagerNum}</b></span>

                                        <div class="progress sm">
                                            <div class="progress-bar progress-bar-aqua"
                                                 style="width: ${viewDateMain.managerRate}%"></div>
                                        </div>
                                    </div>
                                    <!-- /.progress-group -->
                                    <div class="progress-group">
                                        <span class="progress-text">研发部正常出勤人次/总出勤人次</span>
                                        <span class="progress-number"><b>${viewDateMain.deptSearchNumNormal}/${viewDateMain.deptSearchNum}</b></span>

                                        <div class="progress sm">
                                            <div class="progress-bar progress-bar-green"
                                                 style="width: ${viewDateMain.searchRate}%"></div>
                                        </div>
                                    </div>
                                    <!-- /.progress-group -->
                                    <div class="progress-group">
                                        <span class="progress-text">销售部正常出勤人次/总出勤人次</span>
                                        <span class="progress-number"><b>${viewDateMain.deptSaleNumNormal}/${viewDateMain.deptSaleNum}</b></span>
                                        <div class="progress sm">
                                            <div class="progress-bar progress-bar-yellow"
                                                 style="width: ${viewDateMain.saleRate}%"></div>
                                        </div>
                                    </div>
                                    <!-- /.progress-group -->
                                </div>
                                <!-- /.col -->
                            </div>
                            <!-- /.row -->
                        </div>
                        <!-- ./box-body -->
                        <!-- ====================================百分比分析========================================= -->
                        <div class="box-footer">
                            <div class="row">
                                <div class="col-sm-3 col-xs-6">
                                    <div class="description-block border-right">
                                        <span class="description-percentage text-green"><i
                                                class="fa fa-caret-up"></i> ${viewDateMain.neglectRate}</span>
                                        <h5 class="description-header">${viewDateMain.neglectNum}</h5>
                                        <span class="description-text">本月旷工总人数</span>
                                    </div>
                                    <!-- /.description-block -->
                                </div>
                                <!-- /.col -->
                                <div class="col-sm-3 col-xs-6">
                                    <div class="description-block border-right">
                                        <span class="description-percentage text-yellow"><i
                                                class="fa fa-caret-left"></i>${viewDateMain.neglectRate}</span>
                                        <h5 class="description-header">${viewDateMain.leaveNum}</h5>
                                        <span class="description-text">本月请假人数</span>
                                    </div>
                                    <!-- /.description-block -->
                                </div>
                                <!-- /.col -->
                                <div class="col-sm-3 col-xs-6">
                                    <div class="description-block border-right">
                                        <span class="description-percentage text-green"><i
                                                class="fa fa-caret-up"></i>${viewDateMain.leaveRate}</span>
                                        <h5 class="description-header">${viewDateMain.lateNum}</h5>
                                        <span class="description-text">迟到</span>
                                    </div>
                                    <!-- /.description-block -->
                                </div>
                                <!-- /.col -->
                                <div class="col-sm-3 col-xs-6">
                                    <div class="description-block">
                                        <span class="description-percentage text-red"><i
                                                class="fa fa-caret-down"></i> ${viewDateMain.earlyNum}</span>
                                        <h5 class="description-header">${viewDateMain.earlyNum}</h5>
                                        <span class="description-text">早退</span>
                                    </div>
                                    <!-- /.description-block -->
                                </div>
                            </div>
                            <!-- /.row -->
                        </div>
                        <!-- /.box-footer -->
                    </div>
                    <!-- /.box -->
                </div>
                <!-- /.col -->
            </div>


            <!-- /.row -->
    </div>


    <script>
        var i = 0;
        function getfromdata() {

            var lab1 = null;
            var lab = null;
            $.ajax({
                url: "getCharjsData",
                dateTpye: "json",
                success: function (data) {
                    lab = data.lab;
                    lab1 = data.lab1;
                    var ctx = document.getElementById("myChart").getContext("2d");
                    var data = {

                        labels: lab,
                        datasets: [
                            {
                                fillColor: "rgba(220,220,220,0.5)",
                                strokeColor: "rgba(220,220,220,1)",
                                pointColor: "rgba(220,220,220,1)",
                                pointStrokeColor: "#fff",
                                data: lab1

                            }
                        ]
                    }
                    var myNewChart = new Chart(ctx).Line(data);
                    new Chart(ctx).Line(data, options);
                    Line.defaults = {
                        segmentShowStroke: true,
                        segmentStrokeColor: "#fff",
                        segmentStrokeWidth: 2,
                        animation: true,
                        animationSteps: 100,
                        animationEasing: "easeOutBounce",
                        animateRotate: true,
                        animateScale: false,
                        onAnimationComplete: null
                    }
                }
            });
        }


        $(document).ready(function () {


            var lab1 = null;
            var lab = null;
            $.ajax({
                url: "getCharjsData",
                dateTpye: "json",
                success: function (data) {
                    lab = data.lab;
                    lab1 = data.lab1;
                    var ctx = document.getElementById("myChart").getContext("2d");
                    var data = {

                        labels: lab,
                        datasets: [
                            {
                                fillColor: "rgba(220,220,220,0.5)",
                                strokeColor: "rgba(220,220,220,1)",
                                pointColor: "rgba(220,220,220,1)",
                                pointStrokeColor: "#fff",
                                data: lab1

                            }
                        ]
                    }
                    var myNewChart = new Chart(ctx).Line(data);
                    new Chart(ctx).Line(data, options);
                    Line.defaults = {
                        segmentShowStroke: true,
                        segmentStrokeColor: "#fff",
                        segmentStrokeWidth: 2,
                        animation: true,
                        animationSteps: 100,
                        animationEasing: "easeOutBounce",
                        animateRotate: true,
                        animateScale: false,
                        onAnimationComplete: null
                    }
                }
            });


        });
    </script>
    <script src="<%=path %>/static/bower_components/chart.js/Chart.js"></script>
    <jsp:include page="../foot.jsp"></jsp:include>
</body>
</html>