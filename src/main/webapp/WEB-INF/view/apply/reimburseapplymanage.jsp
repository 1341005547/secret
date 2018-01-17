<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Flot Charts</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="../../bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="../../bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="../../dist/css/skins/_all-skins.min.css">


  <!--自己添加css样式-->
<link href="../../bower_components/css/applymanage.css" rel="stylesheet">

<link href="../../bower_components/css/templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="../../bower_components/css/bootstrap.min.css" rel="stylesheet">

    <link href="../../bower_components/fonts/css/font-awesome.min.css" rel="stylesheet">
    <link href="../../bower_components/css/animate.min.css" rel="stylesheet">
    <link href="../../bower_components/css/stylesheets.css" rel="stylesheet" type="text/css" />

    <!-- Custom styling plus plugins -->
    <link href="../../bower_components/css/custom.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../../bower_components/css/maps/jquery-jvectormap-2.0.1.css" />
    <link href="../../bower_components/css/icheck/flat/green.css" rel="stylesheet">
    <link href="../../bower_components/css/floatexamples.css" rel="stylesheet" />

    <script src="../../bower_components/js/jquery.min.js"></script>
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="../../index2.html" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>A</b>LT</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Admin</b>LTE</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
          <li class="dropdown messages-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-envelope-o"></i>
              <span class="label label-success">4</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have 4 messages</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li><!-- start message -->
                    <a href="#">
                      <div class="pull-left">
                        <img src="../../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Support Team
                        <small><i class="fa fa-clock-o"></i> 5 mins</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                  <!-- end message -->
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="../../dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        AdminLTE Design Team
                        <small><i class="fa fa-clock-o"></i> 2 hours</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="../../dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Developers
                        <small><i class="fa fa-clock-o"></i> Today</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="../../dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Sales Department
                        <small><i class="fa fa-clock-o"></i> Yesterday</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="../../dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Reviewers
                        <small><i class="fa fa-clock-o"></i> 2 days</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                </ul>
              </li>
              <li class="footer"><a href="#">See All Messages</a></li>
            </ul>
          </li>
          <!-- Notifications: style can be found in dropdown.less -->
          <li class="dropdown notifications-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-bell-o"></i>
              <span class="label label-warning">10</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have 10 notifications</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li>
                    <a href="#">
                      <i class="fa fa-users text-aqua"></i> 5 new members joined today
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-warning text-yellow"></i> Very long description here that may not fit into the
                      page and may cause design problems
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-users text-red"></i> 5 new members joined
                    </a>
                  </li>

                  <li>
                    <a href="#">
                      <i class="fa fa-shopping-cart text-green"></i> 25 sales made
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-user text-red"></i> You changed your username
                    </a>
                  </li>
                </ul>
              </li>
              <li class="footer"><a href="#">View all</a></li>
            </ul>
          </li>
          <!-- Tasks: style can be found in dropdown.less -->
          <li class="dropdown tasks-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-flag-o"></i>
              <span class="label label-danger">9</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have 9 tasks</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li><!-- Task item -->
                    <a href="#">
                      <h3>
                        Design some buttons
                        <small class="pull-right">20%</small>
                      </h3>
                      <div class="progress xs">
                        <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar"
                             aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                          <span class="sr-only">20% Complete</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <!-- end task item -->
                  <li><!-- Task item -->
                    <a href="#">
                      <h3>
                        Create a nice theme
                        <small class="pull-right">40%</small>
                      </h3>
                      <div class="progress xs">
                        <div class="progress-bar progress-bar-green" style="width: 40%" role="progressbar"
                             aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                          <span class="sr-only">40% Complete</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <!-- end task item -->
                  <li><!-- Task item -->
                    <a href="#">
                      <h3>
                        Some task I need to do
                        <small class="pull-right">60%</small>
                      </h3>
                      <div class="progress xs">
                        <div class="progress-bar progress-bar-red" style="width: 60%" role="progressbar"
                             aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                          <span class="sr-only">60% Complete</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <!-- end task item -->
                  <li><!-- Task item -->
                    <a href="#">
                      <h3>
                        Make beautiful transitions
                        <small class="pull-right">80%</small>
                      </h3>
                      <div class="progress xs">
                        <div class="progress-bar progress-bar-yellow" style="width: 80%" role="progressbar"
                             aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                          <span class="sr-only">80% Complete</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <!-- end task item -->
                </ul>
              </li>
              <li class="footer">
                <a href="#">View all tasks</a>
              </li>
            </ul>
          </li>
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="../../dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
              <span class="hidden-xs">Alexander Pierce</span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="../../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                <p>
                  Alexander Pierce - Web Developer
                  <small>Member since Nov. 2012</small>
                </p>
              </li>
              <!-- Menu Body -->
              <li class="user-body">
                <div class="row">
                  <div class="col-xs-4 text-center">
                    <a href="#">Followers</a>
                  </div>
                  <div class="col-xs-4 text-center">
                    <a href="#">Sales</a>
                  </div>
                  <div class="col-xs-4 text-center">
                    <a href="#">Friends</a>
                  </div>
                </div>
                <!-- /.row -->
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat">Profile</a>
                </div>
                <div class="pull-right">
                  <a href="#" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
          <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="../../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>Alexander Pierce</p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
          <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>人事管理</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="../../index.html"><i class="fa fa-circle-o"></i> Dashboard v1</a></li>
            <li><a href="../../index2.html"><i class="fa fa-circle-o"></i> Dashboard v2</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-files-o"></i>
            <span>日程管理</span>
            <span class="pull-right-container">
              <span class="label label-primary pull-right">4</span>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="../layout/top-nav.html"><i class="fa fa-circle-o"></i> Top Navigation</a></li>
            <li><a href="../layout/boxed.html"><i class="fa fa-circle-o"></i> Boxed</a></li>
            <li><a href="../layout/fixed.html"><i class="fa fa-circle-o"></i> Fixed</a></li>
            <li><a href="../layout/collapsed-sidebar.html"><i class="fa fa-circle-o"></i> Collapsed Sidebar</a></li>
          </ul>
        </li>
        
        <li class="treeview active">
          <a href="#">
            <i class="fa fa-pie-chart"></i>
            <span>申请管理</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="myapply.html"><i class="fa fa-circle-o"></i> 我的申请</a></li>
            <li><a href="applymanage.html"><i class="fa fa-circle-o"></i>申请管理</a></li>
            <li class="active"><a href="reimburseapplymanage.html"><i class="fa fa-circle-o"></i>报销管理</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-laptop"></i>
            <span>考勤管理</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="../UI/general.html"><i class="fa fa-circle-o"></i> General</a></li>
            <li><a href="../UI/icons.html"><i class="fa fa-circle-o"></i> Icons</a></li>
            <li><a href="../UI/buttons.html"><i class="fa fa-circle-o"></i> Buttons</a></li>
            <li><a href="../UI/sliders.html"><i class="fa fa-circle-o"></i> Sliders</a></li>
            <li><a href="../UI/timeline.html"><i class="fa fa-circle-o"></i> Timeline</a></li>
            <li><a href="../UI/modals.html"><i class="fa fa-circle-o"></i> Modals</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-edit"></i> <span>邮件传递</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="../forms/general.html"><i class="fa fa-circle-o"></i> General Elements</a></li>
            <li><a href="../forms/advanced.html"><i class="fa fa-circle-o"></i> Advanced Elements</a></li>
            <li><a href="../forms/editors.html"><i class="fa fa-circle-o"></i> Editors</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-table"></i> <span>授权管理</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="../tables/simple.html"><i class="fa fa-circle-o"></i> Simple tables</a></li>
            <li><a href="../tables/data.html"><i class="fa fa-circle-o"></i> Data tables</a></li>
          </ul>
        </li>
        <li>
          <a href="../calendar.html">
            <i class="fa fa-calendar"></i> <span>系统管理</span>
            <span class="pull-right-container">
              <small class="label pull-right bg-red">3</small>
              <small class="label pull-right bg-blue">17</small>
            </span>
          </a>
        </li>
        <li>
          <a href="../mailbox/mailbox.html">
            <i class="fa fa-envelope"></i> <span>关于</span>
            <span class="pull-right-container">
              <small class="label pull-right bg-yellow">12</small>
              <small class="label pull-right bg-green">16</small>
              <small class="label pull-right bg-red">5</small>
            </span>
          </a>
        </li>
       
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
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
              <table width="90%" border="0" cellspacing="0" cellpadding="0" class="addform-base">
                            <tr>
                                <td>*填报人：</td>
                                <td><s:property value="#session.employee_name"/></td>
                                <td>*填报时间：</td>
                                <td><input type="text" id="status" name="" value="2018-01-12"
                                     readonly="readonly"  /></td>
                            </tr>
                            <tr>
                                <td>*总金额：￥</td>
                                <td><input type="text" id="totalAccount" name="claimVoucher.total_Account" value=""/></td>
                                <td>*状态：</td>
                                <td><input type="text" id="status" name="claimVoucher.status" value="新创建"
                                        readonly="readonly" /></td>
                            </tr>
                            <tr>
                                <td colspan="4"><span class="notice" id="noctice">*</span></td>
                            </tr>
                        </table>
                        <table id="myTable" width="90%" border="0" cellspacing="0" cellpadding="0" class="addform-base">
                    <tr>
                        <td width="30%">项目类别</td>
                        <td width="30%">项目金额</td>
                        <td width="30%">费用说明</td>
                        <td width="10%">操作</td>
                    </tr>
                </table>
                <table id="detailTable" width="90%" border="0" cellspacing="0" cellpadding="0" class="addform-base">
                    <tr>
                        <td width="30%">
                            <select name="detailList.item" id="item">
                                <option value="城际交通费">城际交通费</option>
                                <option value="市内交通费">市内交通费</option>
                                <option value="通讯费">通讯费</option>
                                <option value="礼品费">礼品费</option>
                                <option value="办公费">办公费</option>
                                <option value="交际餐费">交际餐费</option>
                                <option value="餐补">餐补</option>
                                <option value="住宿费">住宿费</option>
                            </select>
                        </td>
                        <td width="30%"><input type="text" name="detailList.account" id="account" /><span class=notice>*</span></td>
                        <td width="30%"><input type="text" name="detailList.des" id="desc" /><span class=notice>*</span></td>
                        <td width="10%"><img src="../../dist/images/add.gif" width="16" height="16" id="AddRow"/></td>

                    </tr>
                </table>
                        <table>
                            <tr>
                                <td>*事由：</td>
                                <td colspan="3"><textarea rows="5" cols="66" name="claimVoucher.event"
                                                id="event"></textarea>
                                </td>
                            </tr>
                            <tr align="center" colspan="4">
                                <td>
                                    &nbsp; 
                                </td>
                                <td >
                                <input type="button" id="1" name="1" value="保存" onclick="submitClaimVoucher('保存')" class="submit_01"/>
                                    <input type="button" id="2" name="2" value="提交" class="submit_01"
                                        onclick="submitClaimVoucher('提交')" />
                                </td>
                            </tr>
                        </table>
            </div>


            <!-- /.box-body-->
          </div>
          <!-- /.box -->

        </div>
        <!-- /.col -->

      </div>
      <!-- /.row -->

      
 <!-- /.box-header -->
            <div class="box-body">
            <h3 class="box-title">报销单草稿箱</h3>
              <form action="#" name="claimForm">
              <input type="hidden" name="claimVoucher.create_sn" value="${sessionScope.employee_sn}"/>
              <input type="hidden" name="claimVoucher.next_deal_sn" value="${sessionScope.depertmentManager.sn }"/>
              <input type="hidden" id="rowNumber" name="rowNumber" value=""/>
                
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
                  <td><a href="applyexamine.html">Internet Explorer 4.0 </a></td>
                  <td>Win 95+</td>
                  <td> 4</td>
                  <td>X</td>
                  <td><a href="#" class="more">提交</a>&nbsp;<a href="applyedit.html" class="more">编辑</a>&nbsp;<a href="#" class="more">删除</a></td>
                </tr>
                <tr>
                <td><input type="checkbox" name="selectSub" /></td> 
                  <td>Trident</td>
                  <td><a href="applyexamine.html">Internet Explorer 5.0 </a></td>
                  <td>Win 95+</td>
                  <td>5</td>
                  <td>C</td>
                  <td><a href="#" class="more">提交</a>&nbsp;<a href="applyedit.html" class="more">编辑</a>&nbsp;<a href="#" class="more">删除</a></td>
                </tr>
                <tr>
                <td><input type="checkbox" name="selectSub" /></td> 
                  <td>Trident</td>
                  <td><a href="applyexamine.html">Internet Explorer 5.5 </a></td>
                  <td>Win 95+</td>
                  <td>5.5</td>
                  <td>A</td>
                  <td><a href="#" class="more">提交</a>&nbsp;<a href="applyedit.html" class="more">编辑</a>&nbsp;<a href="#" class="more">删除</a></td>
                </tr>
             
               
                </tbody>


              </table>
              </form>


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
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 2.4.0
    </div>
    <strong>Copyright &copy; 2014-2016 <a href="https://adminlte.io">Almsaeed Studio</a>.</strong> All rights
    reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
      <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane" id="control-sidebar-home-tab">
        <h3 class="control-sidebar-heading">Recent Activity</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-birthday-cake bg-red"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                <p>Will be 23 on April 24th</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-user bg-yellow"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Frodo Updated His Profile</h4>

                <p>New phone +1(800)555-1234</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Nora Joined Mailing List</h4>

                <p>nora@example.com</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-file-code-o bg-green"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>

                <p>Execution time 5 seconds</p>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

        <h3 class="control-sidebar-heading">Tasks Progress</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Custom Template Design
                <span class="label label-danger pull-right">70%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Update Resume
                <span class="label label-success pull-right">95%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-success" style="width: 95%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Laravel Integration
                <span class="label label-warning pull-right">50%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Back End Framework
                <span class="label label-primary pull-right">68%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

      </div>
      <!-- /.tab-pane -->
      <!-- Stats tab content -->
      <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
      <!-- /.tab-pane -->
      <!-- Settings tab content -->
      <div class="tab-pane" id="control-sidebar-settings-tab">
        <form method="post">
          <h3 class="control-sidebar-heading">General Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Report panel usage
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Some information about this general settings option
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Allow mail redirect
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Other sets of options are available
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Expose author name in posts
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Allow the user to show his name in blog posts
            </p>
          </div>
          <!-- /.form-group -->

          <h3 class="control-sidebar-heading">Chat Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Show me as online
              <input type="checkbox" class="pull-right" checked>
            </label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Turn off notifications
              <input type="checkbox" class="pull-right">
            </label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Delete chat history
              <a href="javascript:void(0)" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
            </label>
          </div>
          <!-- /.form-group -->
        </form>
      </div>
      <!-- /.tab-pane -->
    </div>
  </aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="../../bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="../../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="../../bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../dist/js/demo.js"></script>
<!-- FLOT CHARTS -->
<script src="../../bower_components/Flot/jquery.flot.js"></script>
<!-- FLOT RESIZE PLUGIN - allows the chart to redraw when the window is resized -->
<script src="../../bower_components/Flot/jquery.flot.resize.js"></script>
<!-- FLOT PIE PLUGIN - also used to draw donut charts -->
<script src="../../bower_components/Flot/jquery.flot.pie.js"></script>
<!-- FLOT CATEGORIES PLUGIN - Used to draw bar charts -->
<script src="../../bower_components/Flot/jquery.flot.categories.js"></script>
<!-- Page script -->



<script type="text/javascript" src="../../bower_components/js/select.js"></script>
<script type='text/javascript' src='../../bower_components/js/jquery.js'></script>
<script type='text/javascript' src='../../bower_components/js/bootstrap.min.js'></script> 
<script type="text/javascript" src="../../bower_components/js/jquery.min.js"></script>
<script type="text/javascript" src="../../bower_components/js/ddsmoothmenu.js"></script>
<script type="text/javascript" src="../../bower_components/js/function.js"></script>

<script type="text/javascript" src="../../bower_components/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript">
        $(function () {
//表单提交校验
    
      //$("#myTable tr").eq(0).hide();  
      $("form[name='claimForm']").submit(function(){
        alert("fadfafa");

        //判断是否加入了问题 
        if($("#rowNumber").val()<1){
          //$.messager.defaults={ok:"确定"};$.messager.alert("提示信息",$("#rowNumber").val());
          $("#notice").text("* 添加报销单的明细，至少一条 ！");
          return false;
        } 
        $("#notice").text("*");
        for(var s=0;s<$("#rowNumber").val();s++){
          $("#account"+s).next(".notice").text("*");
          $("#desc"+s).next(".notice").text("*");
          if(isEmpty($("#account"+s).val())){
            $("#account"+s).next(".notice").text("* 金额不能为空  ！");
            return false;
          }   
          if(isEmpty($("#desc"+s).val())){
            $("#desc"+s).next(".notice").text("* 金额不能为空  ！");
            return false;
          }   
                
        }
        $(".buttons").hide();
        return true;
      }); 


            $("#AddRow").click(function(){      
                var tr=$("#myTable tr").eq(0).clone();
                ++i;
                var j=i-1;
                var item = $("#item").val();
                var account = $("#account").val();
                totalAccount=parseFloat(totalAccount)+parseFloat(account);
                var desc = $("#desc").val();
                tr.find("td").get(0).innerHTML="<input  name=detailList["+j+"].item id=item"+j+" type=hidden value="+item+" />"+item;
                tr.find("td").get(1).innerHTML="<input  name=detailList["+j+"].account id=account"+j+"  type=hidden value="+account+" />"+account;
                tr.find("td").get(2).innerHTML="<input  name=detailList["+j+"].des  id=desc"+j+" type=hidden value="+desc+" />"+desc;       
                tr.find("td").get(3).innerHTML="<input type=button name=DelRow"+j+" id=DelRow"+j+" onclick=delRow("+j+") value="+'删除'+" />";
                tr.find("td").get(3).innerHTML="<img src=../../dist/images/delete.gif width=16 height=16 id=DelRow"+j+" onclick=delRow("+j+") />";
                tr.show();
                tr.appendTo("#myTable");
                //传递一共添加多少问题 
                rowNumber=i;
                $("#account").attr("value","");
                $("#desc").attr("value","");
                $("#totalAccount").attr("value",totalAccount);
        
            });
        });
        var i=0;
        var rowNumber=0;
        var totalAccount = 0;
        function delRow(id){    
            var account = $("#account"+id).val();
            $("#myTable tr").eq(id+1).remove();
            var rowNumber=$("#rowNumber").val();
                for(var s=id+1;s<rowNumber;s++){
                $("#item"+s).attr("name","detailList["+(s-1)+"].item");
                $("#item"+s).attr("id","item"+(s-1));
                $("#account"+s).attr("name","detailList["+(s-1)+"].account");
                $("#account"+s).attr("id","account"+(s-1));
                $("#desc"+s).attr("name","detailList["+(s-1)+"].desc");
                $("#desc"+s).attr("id","desc"+(s-1));       
                var js="delRow("+(s-1)+");";
                var newclick=eval("(false||function (){"+js+"});");
                $("#DelRow"+s).unbind('click').removeAttr('onclick').click(newclick);
                $("#DelRow"+s).attr("id","DelRow"+(s-1));                   
                }
            $("#rowNumber").attr("value",rowNumber-1);
            --i;
            totalAccount=parseFloat(totalAccount)-parseFloat(account);
            $("#totalAccount").attr("value",totalAccount);
        }
        function submitClaimVoucher(action){
        if(!confirm("确定"+action+"报销单吗")) return;
        if (action == '保存'){
          document.claimForm.status.value = "新创建";
        }else{
          document.claimForm.status.value = "已提交";
        }
        
        document.claimForm.submit();
          
     }
    </script>

</body>
</html>
