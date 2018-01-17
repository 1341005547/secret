<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>[OA] 办公自动化 - 系统管理 - 操作日志页</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="../css/templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="../css/ddsmoothmenu.css" />

<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/ddsmoothmenu.js"></script>
<script type="text/javascript" src="../scripts/function.js"></script>

<script type="text/javascript" src="../js/select.js"></script>
<script type="text/javascript">

ddsmoothmenu.init({
	mainmenuid: "templatemo_menu", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

</script>
<script language="javascript" type="text/javascript">
function clearText(field)
{
	if (field.defaultValue == field.value) field.value = '';
	else if (field.value == '') field.value = field.defaultValue;
}
</script>

<link href="../css/stylesheets.css" rel="stylesheet" type="text/css" />
	
    <script type='text/javascript' src='../js/plugins/jquery/jquery-1.9.1.min.js'></script>
    <script type='text/javascript' src='../js/plugins/jquery/jquery-ui-1.10.1.custom.min.js'></script>
    <script type='text/javascript' src='../js/plugins/jquery/jquery-migrate-1.1.1.min.js'></script>

    <script type='text/javascript' src='../js/plugins/bootstrap/bootstrap.min.js'></script>   
    
     <script type='text/javascript' src="../js/plugins/uniform/jquery.uniform.min.js"></script>         
	
    <script type='text/javascript' src="js/plugins/select/select2.min.js"></script>
    <script type='text/javascript' src='js/plugins/tagsinput/jquery.tagsinput.min.js'></script>
    <script type='text/javascript' src='js/plugins/maskedinput/jquery.maskedinput-1.3.min.js'></script>
    <script type='text/javascript' src='js/plugins/multiselect/jquery.multi-select.min.js'></script>
    
    <script type='text/javascript' src='../js/plugins.js'></script>
    
</head>

<body id="subpage">
<div id="templatemo_wrapper">
	<div id="templatemo_header">
    	<div id="site_title"><h1></h1></div>
        
        <div id="header_right">
           <div id="templatemo_search">
                <form action="#" method="get">
                  <input type="text" value="搜索关键字" name="keyword" id="keyword" title="请输入搜索的关键字" onfocus="clearText(this)" onblur="clearText(this)" class="txt_field" />
                  <input type="submit" name="Search" value="" alt="Search" id="searchbutton" title="Search" class="sub_btn"  />
                </form>
            </div>
         </div> <!-- END -->
    </div> <!-- END of header -->
    
    <div id="templatemo_menu" class="ddsmoothmenu">
    <script type="text/javascript">
            function toolbar(el){
                el = typeof el == 'string' ? document.getElementById(el) : el;
                var elTop = el.offsetTop;
                var sTop = 0;
                window.onscroll = function(){
                    sTop = document.body.scrollTop || document.documentElement.scrollTop;
                    if( sTop > elTop ){
                        el.style.top = sTop + 'px';
                    }else{
                        el.style.top = elTop + 'px';
                    }
                }
            }
            toolbar('templatemo_menu');
        </script>
           <ul>
            <li><a href="../main.html"  >首页</a></li>
            
            <li><a>人事管理</a>
                <ul>
                    <li><a href="../rsmgr/pers_company.html">机构管理</a></li>
                    <li><a href="../rsmgr/pers_department.html">部门管理</a></li>
                    <li><a href="../rsmgr/pers_staff.html">员工管理</a></li>
                    <li><a href="../rsmgr/pers_post.html">调动管理</a></li>
                    <li><a href="../rsmgr/pers_address.html">通讯录管理</a></li>
              </ul>
            </li>
            <li><a>日程管理</a>
                <ul>
                    <li><a href="../rcmgr/sch_personal.html">我的日程</a></li>
                    <li><a href="../rcmgr/sch_section.html">部门日程</a></li>
                    <li><a href="../rcmgr/sch_node.html">我的便签</a></li>
              </ul>
            </li>
             <li><a>申报管理</a>
                <ul>
               		 <li><a href="../sbmgr/sb_apply.html">我的申请</a></li>
                     <li><a href="../sbmgr/sb_apply_list.html">申请管理</a></li>
              </ul>
             <li><a>文档管理</a>
                <ul> 
                    <li><a href="../wdmgr/doc_settle.html">文档整理</a></li>
                    <li><a href="../wdmgr/doc_recover.html">回收站</a></li>
                    <li><a href="../wdmgr/doc_search.html">文件搜索</a></li>
              </ul>
            </li>
             <li><a>考勤管理</a>
                <ul>
                	<li><a href="../kqmgr/cw_add.">我要请假</a></li>
                	<li><a href="../kqmgr/cw_info.html">假期管理</a></li>
                    <li><a href="../kqmgr/cw_count.html">考勤统计</a></li>
                    <li><a href="../kqmgr/cw_personal.html">出勤记录</a></li>
              </ul>
            </li>
            <li><a>邮件传递</a>
                <ul>
               		 <li><a href="../xxmgr/message_mail.html">我的信箱</a></li>
                    <li><a href="../xxmgr/message_mgr.html">邮件管理</a></li>
              </ul>
            </li>  
            
            <li><a>授权管理</a>
                <ul>
                	<li><a href="../sqmgr/power_look.html">我的权限</a></li>
                    <li><a href="../sqmgr/power_mgr.html">权限设定</a></li>
                    <li><a href="../sqmgr/power_give.html">权限分配</a></li>
              </ul>
            </li>
            <li><a class="selected">系统管理</a>
                <ul>
                	<li><a href="adver_mgr.html">公告管理</a></li>
                    <li><a href="log_login.html">登录日志</a></li>
                    <li><a href="log_operate.html">操作日志</a></li>
                    <li><a href="rules_mgr.html">守则管理</a></li>
              </ul>
            </li>
            <li><a href="../about.html">关于</a> </li>
           
        </ul>
        <br style="clear: left" />
    </div> <!-- end of templatemo_menu -->
    <div class="cleaner h20"></div>
    <div id="templatemo_main_top"></div>
    <div id="templatemo_main">
    	
        <div id="sidebar">
        	<br/>
         	<h3><strong>公司公告</strong></h3>
              <div id="dome" onMouseOver="over()" onMouseOut="may()">
            <div id="dome1">
             <ul class="sidebar_menu">
			    <li><a href="#">1.为什么</a></li>
                <li><a href="#">2.怎么做</a></li>
                <li><a href="#">3.</a></li>
                <li><a href="#">4.</a></li>
                <li><a href="#">5.</a></li>
                <li><a href="#">6.</a></li>
			</ul>
            </div>
            <div id="dome2"></div>
            </div>
            <br/><br/>
            
        	<h3><strong>个人信息</strong></h3>
            <div>
            	<img src="../../../资源文件/页面模板/images/default.png" style="float:left; border:#666 solid 2px; margin-right:10px;" />
                <p>-<strong>工号</strong>： 20130001</p>
                <p>-<strong>用户名</strong>：张三</p>
                <p>-<strong>角色</strong>：管理员</p>
                
                <p>-<strong>部门职位</strong>：项目部 | 项目经理</p>
                <p>-<strong>收信箱</strong>: <a href="#">20</a> , 未读信息: <a href="#">10</a></p>
                <p>-<strong>个人资料信息</strong>： [<a href="#">查看</a>]  [<a href="#">修改</a>]</p>
                <p>-<strong>状态</strong>： [<a href="#">已签到</a>]  [<a href="#">未签退</a>]</p>
                 <div id="newsletter" style=" float:left">
                  <input type="submit" name="subscribe" value="注销" alt="Subscribe" id="subscribebtn" title="Subscribe" class="subscribebtn" style="border-right:#FFF solid 2px;" />
                  <input type="submit" name="subscribe" value="安全" alt="Subscribe" id="subscribebtn" title="Subscribe" class="subscribebtn" style="border-right:#FFF solid 2px;" />
                   <input type="submit" name="subscribe" value="签退" alt="Subscribe" id="subscribebtn" title="Subscribe" class="subscribebtn"  style="border-right:#FFF solid 2px;"/>
                <input type="submit" name="subscribe" value="签到" alt="Subscribe" id="subscribebtn" title="Subscribe" class="subscribebtn more" style="border-right:#FFF solid 2px;" />
                        
                </div>
    			<div class="cleaner"></div>
            </div>
            
            <h3><strong>技术支持</strong></h3>
            <p>技术支持 QQ:</p>
            <p>--435433902</p>
            <p>--2263163423</p>
            <p>*现在有问题,联系我..</p>
            <div id="newsletter">
                <form action="#" method="get">
                  <input type="text" value="客服QQ" name="email_newsletter" id="email_newsletter" title="请输入客服的QQ" onfocus="clearText(this)" onblur="clearText(this)" class="txt_field" />
                  <input type="submit" name="subscribe" value="开始交谈" alt="Subscribe" id="subscribebtn" title="Subscribe" class="subscribebtn"  />
                </form>
                <div class="cleaner"></div>
            </div>
            
           	<h3>管理规定</h3>
            <p>--非管理员请勿对数据删除操作</p>
            <p>--按照公司规定对数据操作</p>
            <p>--不得随意更改敏感数据</p>
            
        </div> <!-- END of sidebar -->
       
        <div id="content">
        
        <h2>操作日志</h2>
        <h5><strong>操作说明</strong></h5>
        <div class="accordion">

                <h3>模块说明</h3>
                <div>
                	<p>系统管理模块-操作日志-该页面管理操作日志信息</p>
                </div>
                
                <h3>操作介绍</h3>
                <div>
                	<p>[我要提交] -该方案用来提交用户的表单信息</p>
                  	<p>[重置] -该方案用来重置用户的表单信息</p>
                    <p>[查看] -该方案用来查看登陆日志详细信息</p>
                    <p>[删除] -该方案用来删除日志信息</p>
                </div>                           

 			</div>
         <div class="cleaner"></div>
         <br/> <br/> <br/>
         
        <h5><strong>操作日志搜索操作</strong></h5>
        <div id="contact_form">
               <form method="post" name="contact" action="#">
						
                    <label for="email">搜索日期的上限  ?</label> <input type="text" id="email" name="email" class="validate-email required input_field datepicker" />
                    <div class="cleaner h10"></div>
                        
                    <label for="subject">搜索日期的下限 ?</label> <input type="text" name="subject" id="subject" class="input_field datepicker" />
                    <div class="cleaner h10"></div>
                      				
					<input type="submit" value="我要提交" id="submit" name="submit" class="submit_btn float_l" />
					<input type="reset" value="重置" id="reset" name="reset" class="submit_btn float_r" />
					
                </form>
                </div>
                <div class="cleaner"></div>
            <br/> <br/> <br/>
        
        <h5><strong>操作日志搜索结果</strong></h5>
        <table width="700px" cellspacing="0" cellpadding="5">
                   	  <tr bgcolor="#CCCCCC">
                     		<th width="60" align="left"><input id="chk_SelectALL" type="checkbox"  />全选</th>
                            <th width="40" align="left">编号</th> 
                       		<th width="130" align="left">操作用户</th> 
                        	<th width="125" align="left">事件</th> 
                            <th width="133" align="left">操作时间</th>
                            <th width="150" align="left">操作</th>
                      </tr>
                    	<tr>
                        	<td>
                       	    <input name="selectSub" type="checkbox"  /></td> 
                        	<td><a href="#">1</a></td> 
                            <td>系统管理员</td>
                            <td>添加新员工</td> 
                            <td>2013-09-23 0:0:0</td>
                             <td><a href="log_look.html" class="more">查看</a>&nbsp;<a href="#" class="more">删除</a></td>
						</tr>
                        <tr>
                        	<td><input name="selectSub" type="checkbox" /></td> 
                        	<td><a href="#">1</a></td> 
                            <td>系统管理员</td>
                            <td>添加</td> 
                            <td>2013-09-23</td>
                             <td><a href="log_look.html" class="more">查看</a>&nbsp;<a href="#" class="more">删除</a></td>
						</tr>
                        <tr>
                        	<td><input name="selectSub" type="checkbox" /></td> 
                        	<td><a href="#">1</a></td> 
                            <td>系统管理员</td>
                            <td>添加</td> 
                            <td>2013-09-23</td>
                             <td><a href="log_look.html" class="more">查看</a>&nbsp;<a href="#" class="more">删除</a></td>
						</tr>
                        <tr>
                        	<td><input name="selectSub" type="checkbox" /></td> 
                        	<td><a href="#">1</a></td> 
                            <td>系统管理员</td>
                            <td>添加</td> 
                            <td>2013-09-23</td>
                             <td><a href="log_look.html" class="more">查看</a>&nbsp;<a href="#" class="more">删除</a></td>
						</tr>
                        <tr>
                        	<td colspan="6" align="right"  height="40px">
                            	<a href="#" class="more float_l">删除选中</a>
                            	<a href="#" class="more">首页</a>&nbsp;<a href="#" class="more">上一页</a>&nbsp;【1/15】&nbsp;<a href="#" class="more">下一页</a>&nbsp;<a href="#" class="more">末页</a>
                            </td>
    
						</tr>
		  </table>
                
	  </div>
        <div class="cleaner"></div>
    </div> <!-- END of main -->
    
   <div id="templatemo_footer">
        <div class="col col_13 no_margin_right">
        	<p>- [<strong>OneMax</strong>]</p>
            <p>- [<strong>细节</strong>]决定成败 | 个人小胜,[<strong>团队</strong>]大胜</p>
            <p>- 无[<strong>规范</strong>],不成方圆 | 成功的合作在于[<strong>沟通</strong>]</p>
        </div>
        
        <div class="cleaner h40"></div>
		<center>
			Copyright © 2048 OneMax | <a href="#" target="_parent">OfficeAuto [OA] </a> by <a href="#" target="_parent">旭阳科技</a>
		</center>
    </div> <!-- END of footer -->   
    </div>
    
    <div class="data" style="position:fixed; bottom:10px; right:20px; z-index:10;" >
         <button class="btn tip" title="该方案用于返回该页面顶部">顶部</button> 
         <button class="btn tip" title="该方案用于快速查看公告">公告</button> 
         <button class="btn tip" title="该方案用于快速查看信箱">邮箱</button> 

     </div>
     
     <div class="data " style="position:fixed; bottom:10px; left:20px; z-index:10;" >
         <button class="btn tip" title="当前时间: 2013-02-20 14:24 星期五">当前时间</button> 
         <button class="btn tip" title="该方案用于快速查看通讯录" id="jDialog_default_button">通讯录</button> 
     </div>
    
     <div class="dialog" id="jDialog_default" style="display: none; z-index:5;" title="公司通讯录">
     		<p><em>*&nbsp; [部门] 职位-姓名-联系电话</em></p>
            <ul class="sidebar_menu">
			    <li><strong>[项目部]</strong> 部门经理-张三-13213052102</li>
                <li><strong>[项目部]</strong> 部门经理-张三-13213052102</li>
                <li><strong>[项目部]</strong> 部门经理-张三-13213052102</li>
                <li><strong>[项目部]</strong> 部门经理-张三-13213052102</li>
                <li><strong>[项目部]</strong> 部门经理-张三-13213052102</li>
                <li><strong>[项目部]</strong> 部门经理-张三-13213052102</li>
                <li><strong>[项目部]</strong> 部门经理-张三-13213052102</li>
                <li><strong>[项目部]</strong> 部门经理-张三-13213052102</li>
                <li><strong>[项目部]</strong> 部门经理-张三-13213052102</li>
                <li><strong>[项目部]</strong> 部门经理-张三-13213052102</li>  
			</ul>
        </div>
    
    </body>
</html>