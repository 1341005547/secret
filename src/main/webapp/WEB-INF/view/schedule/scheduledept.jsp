<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://shiro.apache.org/tags" prefix="shiro" %>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 2 | 日程</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet"
	href="<%=path%>/static/bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="<%=path%>/static/bower_components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="<%=path%>/static/bower_components/Ionicons/css/ionicons.min.css">
<!-- fullCalendar -->
<link rel="stylesheet"
	href="<%=path%>/static/bower_components/fullcalendar/dist/fullcalendar.min.css">
<link rel="stylesheet"
	href="<%=path%>/static/bower_components/fullcalendar/dist/fullcalendar.print.min.css"
	media="print">
<!-- Theme style -->
<link rel="stylesheet" href="<%=path%>/static/dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet"
	href="<%=path%>/static/dist/css/skins/_all-skins.min.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<!-- Google Font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

<jsp:include page="../head.jsp"></jsp:include>
</head>
<body class="hold-transition skin-blue sidebar-mini">

	<c:if test="${!empty error}">
		<script>
			alert("操作成功！");
		</script>
	</c:if>
	
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">
		<h1>
			部门 <small>日程</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> 主页</a></li>
			<li class="active">日程</li>
		</ol>
		</section>

		<!-- Main content -->
		<section class="content">
		<div class="row">
		
			<div class="col-md-3">
				<div class="box box-solid">
					<shiro:hasPermission name="部门经理权限">
						<div class="box-header with-border">
							<h4 class="box-title">新建日程</h4>
						</div>
					</shiro:hasPermission>
					<div class="box-body">
						<shiro:hasPermission name="部门经理权限">
						<form name="create_calender" id="create_calender" action=""
							method="post" onsubmit="return Check()">
							日程内容：<input type="text" style="height: 30px; width: 70%"
								name="scheduledeptContent" /><br><br> 
							时间范围：<input type="text" style="height: 30px; width: 70%"
								name="DateFrame" id="DateFrame" /><br><br>

							<center>
								<button type="reset" class="btn btn-primary btn-sm"
									data-toggle="modal">重置</button>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

								<button type="submit" class="btn btn-primary btn-sm"
									data-toggle="modal" onclick="return Check('save')" 
									name="save" id="save" >提交</button><br><br>
							</center>
						</form>
						</shiro:hasPermission>
							<center>
								 <a class="btn btn-primary btn-sm"
									href="showscheduledept">查看日程详情</a>
							</center>
					</div>
				</div>
			</div>
			<!-- /.col -->
			<div class="col-md-9">
				<div class="box box-primary">
					<div class="box-body no-padding">
						<!-- THE CALENDAR -->
						<div id="calendar"></div>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /. box -->
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row --> </section>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->

	<footer class="main-footer">
	<div class="pull-right hidden-xs">
		<b>Version</b> 2.4.0
	</div>
	<strong>Copyright &copy; 2014-2016 <a
		href="https://adminlte.io">Almsaeed Studio</a>.
	</strong> All rights reserved. </footer>

	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark"> <!-- Create the tabs -->
	<ul class="nav nav-tabs nav-justified control-sidebar-tabs">
		<li><a href="#control-sidebar-home-tab" data-toggle="tab"><i
				class="fa fa-home"></i></a></li>
		<li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i
				class="fa fa-gears"></i></a></li>
	</ul>
	<!-- Tab panes -->
	<div class="tab-content">
		<!-- Home tab content -->
		<div class="tab-pane" id="control-sidebar-home-tab">
			<h3 class="control-sidebar-heading">Recent Activity</h3>
			<ul class="control-sidebar-menu">
				<li><a href="javascript:void(0)"> <i
						class="menu-icon fa fa-birthday-cake bg-red"></i>

						<div class="menu-info">
							<h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

							<p>Will be 23 on April 24th</p>
						</div>
				</a></li>
				<li><a href="javascript:void(0)"> <i
						class="menu-icon fa fa-user bg-yellow"></i>

						<div class="menu-info">
							<h4 class="control-sidebar-subheading">Frodo Updated His
								Profile</h4>

							<p>New phone +1(800)555-1234</p>
						</div>
				</a></li>
				<li><a href="javascript:void(0)"> <i
						class="menu-icon fa fa-envelope-o bg-light-blue"></i>

						<div class="menu-info">
							<h4 class="control-sidebar-subheading">Nora Joined Mailing
								List</h4>

							<p>nora@example.com</p>
						</div>
				</a></li>
				<li><a href="javascript:void(0)"> <i
						class="menu-icon fa fa-file-code-o bg-green"></i>

						<div class="menu-info">
							<h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>

							<p>Execution time 5 seconds</p>
						</div>
				</a></li>
			</ul>
			<!-- /.control-sidebar-menu -->

			<h3 class="control-sidebar-heading">Tasks Progress</h3>
			<ul class="control-sidebar-menu">
				<li><a href="javascript:void(0)">
						<h4 class="control-sidebar-subheading">
							Custom Template Design <span
								class="label label-danger pull-right">70%</span>
						</h4>

						<div class="progress progress-xxs">
							<div class="progress-bar progress-bar-danger" style="width: 70%"></div>
						</div>
				</a></li>
				<li><a href="javascript:void(0)">
						<h4 class="control-sidebar-subheading">
							Update Resume <span class="label label-success pull-right">95%</span>
						</h4>

						<div class="progress progress-xxs">
							<div class="progress-bar progress-bar-success" style="width: 95%"></div>
						</div>
				</a></li>
				<li><a href="javascript:void(0)">
						<h4 class="control-sidebar-subheading">
							Laravel Integration <span class="label label-warning pull-right">50%</span>
						</h4>

						<div class="progress progress-xxs">
							<div class="progress-bar progress-bar-warning" style="width: 50%"></div>
						</div>
				</a></li>
				<li><a href="javascript:void(0)">
						<h4 class="control-sidebar-subheading">
							Back End Framework <span class="label label-primary pull-right">68%</span>
						</h4>

						<div class="progress progress-xxs">
							<div class="progress-bar progress-bar-primary" style="width: 68%"></div>
						</div>
				</a></li>
			</ul>
			<!-- /.control-sidebar-menu -->

		</div>
		<!-- /.tab-pane -->
		<!-- Stats tab content -->
		<div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab
			Content</div>
		<!-- /.tab-pane -->
		<!-- Settings tab content -->
		<div class="tab-pane" id="control-sidebar-settings-tab">
			<form method="post">
				<h3 class="control-sidebar-heading">General Settings</h3>

				<div class="form-group">
					<label class="control-sidebar-subheading"> Report panel
						usage <input type="checkbox" class="pull-right" checked>
					</label>

					<p>Some information about this general settings option</p>
				</div>
				<!-- /.form-group -->

				<div class="form-group">
					<label class="control-sidebar-subheading"> Allow mail
						redirect <input type="checkbox" class="pull-right" checked>
					</label>

					<p>Other sets of options are available</p>
				</div>
				<!-- /.form-group -->

				<div class="form-group">
					<label class="control-sidebar-subheading"> Expose author
						name in posts <input type="checkbox" class="pull-right" checked>
					</label>

					<p>Allow the user to show his name in blog posts</p>
				</div>
				<!-- /.form-group -->

				<h3 class="control-sidebar-heading">Chat Settings</h3>

				<div class="form-group">
					<label class="control-sidebar-subheading"> Show me as
						online <input type="checkbox" class="pull-right" checked>
					</label>
				</div>
				<!-- /.form-group -->

				<div class="form-group">
					<label class="control-sidebar-subheading"> Turn off
						notifications <input type="checkbox" class="pull-right">
					</label>
				</div>
				<!-- /.form-group -->

				<div class="form-group">
					<label class="control-sidebar-subheading"> Delete chat
						history <a href="javascript:void(0)" class="text-red pull-right"><i
							class="fa fa-trash-o"></i></a>
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

	<!-- ./wrapper -->

	<!-- jQuery 3 -->
	<script
		src="<%=path%>/static/bower_components/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script
		src="<%=path%>/static/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<script
		src="<%=path%>/static/bower_components/jquery-ui/jquery-ui.min.js"></script>
	<!-- Slimscroll -->
	<script
		src="<%=path%>/static/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script
		src="<%=path%>/static/bower_components/fastclick/lib/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="<%=path%>/static/dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="<%=path%>/static/dist/js/demo.js"></script>

	<!-- layDate -->
	<script
		src="<%=path%>/static/bower_components/layDate-v5.0.9/laydate/laydate.js"></script>
	<script>
	
	//日期时间范围
	laydate.render({
	  elem: '#DateFrame'
	  ,type: 'datetime'
	  ,range: true
	}); 
	
	//修改日期时间范围
	laydate.render({
	  elem: '#DateFrameEdit'
	  ,type: 'datetime'
	  ,range: true
	}); 
	
</script>

	<!-- fullCalendar -->
	<script src="<%=path%>/static/bower_components/moment/moment.js"></script>
	<script
		src="<%=path%>/static/bower_components/fullcalendar/dist/fullcalendar.min.js"></script>

	<!-- Page specific script -->
	<script type="text/javascript">
    $(function () {
		//修改type类型post，delete,get,put
        htmlobj = $.ajax({
            type:"POST",
            url: "showDeptCalendarDate",
            async: true,
            success:function(myData){//后台数据
                function init_events(ele) {
                    ele.each(function () {
                        // create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
                        // it doesn't need to have a start or end
                        var eventObject = {
                            title: $.trim($(this).text()) // use the element's text as the event title
                        }
                        // store the Event Object in the DOM element so we can get to it later
                        $(this).data('eventObject', eventObject)
                        // make the event draggable using jQuery UI
                        $(this).draggable({
                            zIndex        : 1070,
                            revert        : true, // will cause the event to go back to its
                            revertDuration: 0  //  original position after the drag
                        })

                    })
                }

                init_events($('#external-events div.external-event'))

                /* initialize the calendar
                 -----------------------------------------------------------------*/
                //Date for the calendar events (dummy data)
                var date = new Date()
                var d    = date.getDate(),
                    m    = date.getMonth(),
                    y    = date.getFullYear()
                var eventDate = myData;

                $('#calendar').fullCalendar({
                    header    : {
                        left  : 'prev,next today',
                        center: 'title',
                        right : 'month,agendaWeek,agendaDay'
                    },
                    buttonText: {
                        today: '今天',
                        month: '月',
                        week : '周',
                        day  : '天',
                    },
                    //Random default events
                    events: eventDate,	//事件数据源                    
                    editable  : false,	//允许拖动
                    droppable : false, // this allows things to be dropped onto the calendar !!!
                    drop      : function (date, allDay) { // this function is called when something is dropped

                        // retrieve the dropped element's stored Event Object
                        var originalEventObject = $(this).data('eventObject')

                        // we need to copy it, so that multiple events don't have a reference to the same object
                        var copiedEventObject = $.extend({}, originalEventObject)

                        // assign it the date that was reported
                        copiedEventObject.start           = date
                        copiedEventObject.allDay          = allDay
                        copiedEventObject.backgroundColor = $(this).css('background-color')
                        copiedEventObject.borderColor     = $(this).css('border-color')

                        // render the event on the calendar
                        // the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
                        $('#calendar').fullCalendar('renderEvent', copiedEventObject, true)

                        // is the "remove after drop" checkbox checked?
                        if ($('#drop-remove').is(':checked')) {
                            // if so, remove the element from the "Draggable Events" list
                            $(this).remove()
                        }
                    }
                })

                /* ADDING EVENTS */
                var currColor = '#3c8dbc' //Red by default
                //Color chooser button
                var colorChooser = $('#color-chooser-btn')
                $('#color-chooser > li > a').click(function (e) {
                    e.preventDefault()
                    //Save color
                    currColor = $(this).css('color')
                    //Add color effect to button
                    $('#add-new-event').css({ 'background-color': currColor, 'border-color': currColor })
                })
                $('#add-new-event').click(function (e) {
                    e.preventDefault()
                    //Get value and make sure it is not null
                    var val = $('#new-event').val()
                    if (val.length == 0) {
                        return
                    }

                    //Create events
                    var event = $('<div />')
                    event.css({
                        'background-color': currColor,
                        'border-color'    : currColor,
                        'color'           : '#fff'
                    }).addClass('external-event')
                    event.html(val)
                    $('#external-events').prepend(event)

                    //Add draggable funtionality
                    init_events(event)

                    //Remove event from text input
                    $('#new-event').val('')
                })
            }
        });
    });
</script>
<script type="text/javascript">
	function Check(name){
		if(create_calender.scheduledeptContent.value==''){
			alert("日程内容不能为空！");
			return false;
		}
		if(create_calender.DateFrame.value==''){
			alert("时间范围不能为空！");
			return false;
		}
		if(name=='save'){
			if(confirm("是否提交？"))
				document.create_calender.action = "addscheduledept";
			else
				return false;
		} 
		return true;
	}
</script>


<!-- 定时器 -->
<script type="text/javascript">
	$.ajax({
		url:"getTodayScheduledept",
		type:"post",
		dataType:"json",
		success:function(data){
			var list = data;
			
			$.each(list, function(index,time) {
		        var timeTask=setInterval(function(){
			        
			        var startdate = new Date(time.startTime);
			        
			        var starttimestamp = Date.parse(startdate);
			        var nowtimestamp = Date.parse(new Date());
			        
			        var event = time.scheduleContent;   
			        if(starttimestamp == nowtimestamp){
			        	callFunction(event); 
			        }
		    },1000);
		});
		}
	})	  
	
	function callFunction(task){
		var myDate = new Date();
		var nowdate = myDate.toLocaleTimeString();
		alert(nowdate+"       "+"[部门日程]"+task);
	}
</script>
<!-- /定时器 -->

</body>
</html>
