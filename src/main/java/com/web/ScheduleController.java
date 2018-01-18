package com.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ScheduleController {
	
	/**
	 * 我的日程
	 * @return
	 */
	@RequestMapping("scheduleemployees.html")
	public String toscheduleempl(){
		return "schedule/scheduleempl";
	}
	
	/**
	 * 部门日程
	 * @return
	 */
	@RequestMapping("scheduledept.html")
	public String toscheduledept(){
		return "schedule/scheduledept";
	}
}
