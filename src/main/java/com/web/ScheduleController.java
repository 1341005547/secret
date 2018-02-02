package com.web;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.entity.Login;
import com.entity.Scheduledept;
import com.entity.Scheduleemployees;
import com.entity.User;
import com.service.ScheduledeptService;
import com.service.ScheduleemployeesService;

@Controller
public class ScheduleController {
	
	@Autowired
	private ScheduleemployeesService scheduleemployeesService;
	@Autowired
	private ScheduledeptService scheduledeptService;
	
	/**
	 * 我的日程
	 * @return
	 */
	@RequestMapping("scheduleempl")
	public String toscheduleempl(){
		return "schedule/scheduleempl";
	}
	
	/**
	 * 字符串转时间解析函数
	 */
	public Date String2Date(String time){
		Date date = null;
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			date = simpleDateFormat.parse(time);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return date;
	}
	
	/**
	 * 时间转字符串解析函数
	 */
	public String Date2String(Date time){
		String stringDate = null;
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		stringDate = simpleDateFormat.format(time);
		return stringDate;
	}
	
	/**
	 * 新建我的日程
	 * @param record
	 * @return
	 */
	@RequestMapping("/addscheduleempl")
	public String addscheduleempl(Scheduleemployees record,String DateFrame,Model model){
		Date startTime = null;
		Date endTime = null;
		
		//解析时间
		if(DateFrame != null){
			String[] times = DateFrame.split(" - ");
			//时间函数完成时间解析
			startTime = String2Date(times[0]);
			endTime = String2Date(times[1]);
		}

		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String date = df.format(new Date());// new Date()为获取当前系统时间，也可使用当前时间戳
		Date createTime = String2Date(date);
		
		Session session=SecurityUtils.getSubject().getSession();
		Login login = (Login)session.getAttribute("login");
		
		record.setScheduleStartTime(startTime);
		record.setScheduleEndTime(endTime);
		record.setScheduleCreateTime(createTime);
		record.setU_id(login.getuId());
		
		int i = scheduleemployeesService.addScheduleEmployees(record);
		if (i > 0) {
			model.addAttribute("error", 1);
		}else{
			model.addAttribute("error", "");
		}
		return "schedule/scheduleempl";
	}
	
	/**
	 * 查看我的日程
	 * @return
	 */
	@RequestMapping("/showscheduleempl")
	public String showscheduleempl(Map map){
		Session session=SecurityUtils.getSubject().getSession();
		Login login = (Login)session.getAttribute("login");
		
		List slist = scheduleemployeesService.showscheduleempl(login.getuId());

		Session sessionList=SecurityUtils.getSubject().getSession();
		sessionList.setAttribute("slist", slist);
		map.put("slist", slist);
		return "schedule/scheduleemplShow";
	}
	
	/**
	 * 查看日历
	 * @return
	 */
	@RequestMapping("showCalendarDate")
	@ResponseBody
	public List showcalendar(){
		Session session=SecurityUtils.getSubject().getSession();
		Login login = (Login)session.getAttribute("login");
		
		List list = scheduleemployeesService.showcalendar(login.getuId());
		return list;
	}
	
	/**
	 * 根据u_id获取当天日程
	 * @return
	 */
	@RequestMapping("getTodayScheduleempl")
	@ResponseBody
	public String getTodayScheduleempl(){
		Session session=SecurityUtils.getSubject().getSession();
		Login login = (Login)session.getAttribute("login");
		
		List<Scheduleemployees> todaylist = scheduleemployeesService.getTodayScheduleempl(login.getuId());
		List<Map> listMap = new ArrayList<Map>();
		for (Scheduleemployees scheduleemployees : todaylist) {
			Map map  = new HashMap();
			map.put("scheduleContent", scheduleemployees.getScheduleContent());
			map.put("startTime", scheduleemployees.getScheduleStartTime());
			listMap.add(map);
		}
		String json = JSON.toJSONString(listMap);
		return json;
	}
	
	/**
	 * 删除我的日程
	 * @param id
	 * @return
	 */
	@RequestMapping("/delScheduleempl/{s_id}")
	public String delScheduleempl(@PathVariable Integer s_id) {
		int i=scheduleemployeesService.deleteByPrimaryKey(s_id);
		if(i>0){
			System.out.println("删除成功！");
		}
		else{
			System.out.println("删除失败！");
		}
		return "redirect:/showscheduleempl";
	}
	
	/**
	 * 去修改我的日程弹窗
	 * @return
	 */
	@RequestMapping("editScheduleempl")
	@ResponseBody
	public Map<String, Object> editScheduleempl(Integer s_id){
		Scheduleemployees scheduleempl = scheduleemployeesService.selectByPrimaryKey(s_id);
		Map<String, Object> map=new HashMap<>();
		
		String startTime = Date2String(scheduleempl.getScheduleStartTime());
		String endTime = Date2String(scheduleempl.getScheduleEndTime());
		String createTime = Date2String(scheduleempl.getScheduleCreateTime());
		String updateTime;
		if (scheduleempl.getScheduleUpdateTime() != null) {
			updateTime = Date2String(scheduleempl.getScheduleUpdateTime());
		}else{
			updateTime = "未修改";
		}

		map.put("scheduleempl", scheduleempl);
		map.put("startDateString", startTime);
		map.put("endDateString", endTime);
		map.put("createDateString", createTime);
		map.put("updateDateString", updateTime);
		return map;
	}
	
	/**
	 * 提交弹窗修改内容
	 * @param record
	 * @return
	 */
	@RequestMapping("/saveEditScheduleempl")
	public String saveEdit(Scheduleemployees scheduleempl,BindingResult bin,
			String scheduleStartTime,String scheduleEndTime,String scheduleCreateTime){
		
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String date = df.format(new Date());// new Date()为获取当前系统时间，也可使用当前时间戳
		Date updateTime = String2Date(date);
		
		scheduleempl.setScheduleUpdateTime(updateTime);
		scheduleempl.setScheduleStartTime(String2Date(scheduleStartTime));
		scheduleempl.setScheduleEndTime(String2Date(scheduleEndTime));
		scheduleempl.setScheduleCreateTime(String2Date(scheduleCreateTime));

		int i = scheduleemployeesService.updateByPrimaryKey(scheduleempl);
		
		System.out.println("更新了"+i+"条信息");
		
		return "redirect:/showscheduleempl";
	}
	
	
	
	
	
/*===============================部门日程=================================*/	
	
	
	
	
	
	/**
	 * 部门日程
	 * @return
	 */
	@RequestMapping("/scheduledept")
	public String toscheduledept(){
		return "schedule/scheduledept";
	}
	
	/**
	 * 新建部门日程
	 * @param record
	 * @return
	 */
	@RequestMapping("/addscheduledept")
	public String addscheduledept(Scheduledept record,String DateFrame,Model model){
		Date startTime = null;
		Date endTime = null;
		
		//解析时间
		if(DateFrame != null){
			String[] times = DateFrame.split(" - ");
			//时间函数完成时间解析
			startTime = String2Date(times[0]);
			endTime = String2Date(times[1]);
		}

		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String date = df.format(new Date());// new Date()为获取当前系统时间，也可使用当前时间戳
		Date createTime = String2Date(date);
		
		Session session=SecurityUtils.getSubject().getSession();
		User user = (User)session.getAttribute("user");
		
		record.setScheduledeptStartTime(startTime);
		record.setScheduledeptEndTime(endTime);
		record.setScheduledeptCreateTime(createTime);
		record.setD_id(user.getdId());
		
		int i = scheduledeptService.addScheduleDept(record);
		
		if (i > 0) {
			model.addAttribute("error", 1);
		}else{
			model.addAttribute("error", "");
		}
		return "schedule/scheduledept";
	}
	
	/**
	 * 查看部门日程
	 * @return
	 */
	@RequestMapping("/showscheduledept")
	public String showscheduledept(Map map){
		Session session=SecurityUtils.getSubject().getSession();
		User user = (User)session.getAttribute("user");
		
		List slist = scheduledeptService.showscheduledept(user.getdId());

		Session sessionList=SecurityUtils.getSubject().getSession();
		sessionList.setAttribute("slist", slist);
		map.put("slist", slist);
		return "schedule/scheduledeptShow";
	}
	
	/**
	 * 查看日历
	 * @return
	 */
	@RequestMapping("showDeptCalendarDate")
	@ResponseBody
	public List showdeptcalendar(){
		Session session=SecurityUtils.getSubject().getSession();
		User user = (User)session.getAttribute("user");
		
		List list = scheduledeptService.showdeptcalendar(user.getdId());
		return list;
	}
	
	/**
	 * 根据d_id获取当天部门日程
	 * @return
	 */
	@RequestMapping("getTodayScheduledept")
	@ResponseBody
	public String getTodayScheduledept(){
		Session session=SecurityUtils.getSubject().getSession();
		User user = (User)session.getAttribute("user");
		
		List<Scheduledept> todaylist = scheduledeptService.getTodayScheduledept(user.getdId());
		List<Map> listMap = new ArrayList<Map>();
		for (Scheduledept scheduledept : todaylist) {
			Map map  = new HashMap();
			map.put("scheduleContent", scheduledept.getScheduledeptContent());
			map.put("startTime", scheduledept.getScheduledeptStartTime());
			listMap.add(map);
		}
		String json = JSON.toJSONString(listMap);
		return json;
	}
	
	/**
	 * 删除部门日程
	 * @param id
	 * @return
	 */
	@RequestMapping("/delScheduledept/{scheduledeptId}")
	public String delScheduledept(@PathVariable Integer scheduledeptId) {
		int i=scheduledeptService.deleteByPrimaryKey(scheduledeptId);
		if(i>0){
			System.out.println("删除成功！");
		}
		else{
			System.out.println("删除失败！");
		}
		return "redirect:/showscheduledept";
	}
	
	/**
	 * 去修改部门日程弹窗
	 * @return
	 */
	@RequestMapping("editScheduledept")
	@ResponseBody
	public Map<String, Object> editScheduledept(Integer scheduledeptId){
		Scheduledept scheduledept = scheduledeptService.selectByPrimaryKey(scheduledeptId);
		Map<String, Object> map=new HashMap<>();
		
		String startTime = Date2String(scheduledept.getScheduledeptStartTime());
		String endTime = Date2String(scheduledept.getScheduledeptEndTime());
		String createTime = Date2String(scheduledept.getScheduledeptCreateTime());
		String updateTime;
		if (scheduledept.getScheduledeptUpdateTime() != null) {
			updateTime = Date2String(scheduledept.getScheduledeptUpdateTime());
		}else{
			updateTime = "未修改";
		}

		map.put("scheduledept", scheduledept);
		map.put("startDateString", startTime);
		map.put("endDateString", endTime);
		map.put("createDateString", createTime);
		map.put("updateDateString", updateTime);
		return map;
	}
	
	/**
	 * 提交弹窗修改内容
	 * @param record
	 * @return
	 */
	@RequestMapping("/saveEditScheduledept")
	public String saveEdit(Scheduledept scheduledept,BindingResult bin,
			String scheduledeptStartTime,String scheduledeptEndTime,String scheduledeptCreateTime){
		
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String date = df.format(new Date());// new Date()为获取当前系统时间，也可使用当前时间戳
		Date updateTime = String2Date(date);
		
		scheduledept.setScheduledeptUpdateTime(updateTime);
		scheduledept.setScheduledeptStartTime(String2Date(scheduledeptStartTime));
		scheduledept.setScheduledeptEndTime(String2Date(scheduledeptEndTime));
		scheduledept.setScheduledeptCreateTime(String2Date(scheduledeptCreateTime));

		int i = scheduledeptService.updateByPrimaryKey(scheduledept);
		
		System.out.println("更新了"+i+"条信息");
		
		return "redirect:/showscheduledept";
	}
}
