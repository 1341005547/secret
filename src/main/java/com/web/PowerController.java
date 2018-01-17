package com.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PowerController {

	@RequestMapping("power_give.html")
	public String toPower_give(){
		
		return "powermgr/power_give";
	}
	
	
	@RequestMapping("power_set.html")
	public String toPower_set(){
		
		return "powermgr/power_set";
	}
	
	
	@RequestMapping("power_look.html")
	public String toPower_look(){
		
		return "powermgr/power_look";
	}
	
}
