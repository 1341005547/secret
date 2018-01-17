package com.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ManageController {

	
	@RequestMapping("adver.html")
	public String showAdver(){
		
		return "xtmgr/adver";
	}
	
	@RequestMapping("loglogin.html")
	public String showLoglogin(){
		
		return "xtmgr/loglogin";
	}
	
	@RequestMapping("operate.html")
	public String showOperate(){
		
		return "xtmgr/operate";
	}
	
	@RequestMapping("rules.html")
	public String showRules(){
		
		return "xtmgr/rules";
	}
	
	/* <ul class="treeview-menu">
             <li><a href="adver.html">公告管理</a></li>
             <li><a href="loglogin.html">登录日志</a></li>
             <li><a href="operate.html">操作日志</a></li>
             <li><a href="rules.html">守则管理</a></li>
          </ul>
      */
	
	
	
}
