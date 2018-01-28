package com.web.statistics;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.dao.Oa_manual_signMapper;
import com.dao.UserMapper;
import com.entity.statistics.BaseStatisticsEntry;
import com.entity.statistics.CheckReg;
import com.entity.Login;
import com.entity.Oa_manual_sign;
import com.entity.User;
import com.service.Oa_manual_signService;
import com.util.StatisticsUtil;


@RestController
public class Oa_manual_signController {
@Autowired
private Oa_manual_signService oa_manualService;
@Autowired
private UserMapper userMapper;
@Autowired
private Oa_manual_signMapper oaMapper;

/**
 * 每日签到
 * @param
 * @return
 */
@RequestMapping(value="statisticsinreg",method=RequestMethod.POST)
public Map inreg(){
	//获取用户名和密码
			Session session=SecurityUtils.getSubject().getSession();
			Login login=(Login) session.getAttribute("login");
			Map map=new HashMap();
	//格式化
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
			Date date=new Date();
			String time=df.format(date);
			String oms_start_time=oa_manualService.selectStartTime(login.getuId(),time);
			
			//判断数据库中是否存在签到信息如果不存在执行添加
			if(oms_start_time==null||oms_start_time.equals("")){
				Oa_manual_sign manual=new Oa_manual_sign();
				manual.setuId(login.getuId());
				manual.setOmsStartTime(new Date());
				manual.setOmsState("1");//状态1已登录
				oa_manualService.insert(manual);
				session.setAttribute("outmasi",manual);			
				map.put("masi",manual);
				
				map.put("msg","未签到");
			}else{
				map.put("msg","已签到");
			}
	
		
		
	return map;
}


/**
 * 每日签退
 * @param
 * @return
 */
@RequestMapping(value="statisticsoutreg",method=RequestMethod.POST)
public  Map outreg(){
	//格式化
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		Map map=new HashMap();
		//获取当前日期并转换成字符串
		Date date=new Date();
		String time=df.format(date).substring(0, 10);
		Session session=SecurityUtils.getSubject().getSession();
		Login login=(Login) session.getAttribute("login");
		//通过登录信息获取用户信息
		User user=userMapper.selectByPrimaryKey(login.getuId());
		//签到日期
		String oms_start_time=oa_manualService.selectStartTime(login.getuId(),time);
		//查询今天的签到记录
		Oa_manual_sign oa_manual_sign=oa_manualService.selectEndTime(login.getuId(),time);
		
		if(oms_start_time==null||oms_start_time.equals("")){
			map.put("msg","未签到");
		}else if(oa_manual_sign.getOmsEndTime()==null||oa_manual_sign.getOmsEndTime().equals("")){
			oa_manual_sign.setOmsEndTime(new Date());
			oa_manual_sign.setOmsState("2");
			oa_manualService.updateByPrimaryKeySelective(oa_manual_sign);
			session.setAttribute("outmasi",oa_manual_sign);
			//当更新签退时间时，添加员工具体签到信息
			BaseStatisticsEntry baseStatisticsEntry = new BaseStatisticsEntry();
			//获取签到时间
			Date stime=oa_manual_sign.getOmsStartTime();
			//设置状态
    		try {
    			
    			if(stime.before(df.parse(time+" "+"08:00"))){
    				//正常签到
    				baseStatisticsEntry.setManualResult("正常");
    			}else if(stime.before(df.parse(time+" "+"12:00")) && stime.after(df.parse(time+" "+"08:00"))){
    				//迟到
    				baseStatisticsEntry.setManualResult("迟到");
    			}else if(stime.after(df.parse(time+" "+"12:00"))){
    				//旷工
    				baseStatisticsEntry.setManualResult("旷工");
    			}else if(new Date().before(df.parse(time+" "+"18:00"))){
    				//早退
    				baseStatisticsEntry.setManualResult("早退");
    			}
    			
    		} catch (Exception e) {
    			
    			e.printStackTrace();
    			
    		}
			
    		 	baseStatisticsEntry.setTime(date);
    	        baseStatisticsEntry.setDeptId(user.getdId());
    	        baseStatisticsEntry.setUid(login.getuId());
    	        oaMapper.insertBase(baseStatisticsEntry);
			
			
			
			
			
			
			map.put("msg","未签退");
		}else{
			map.put("msg","已签退");
		}
		
		
		
	return map;
}


//首次跳转到考勤记录页面
@RequestMapping("toinline.html")
public ModelAndView toOa_manual_sign(String search){
	//获取用户名和密码
	Session session=SecurityUtils.getSubject().getSession();
	Login login=(Login) session.getAttribute("login");
	 System.out.println(login.getuId());
	//获取当前年份
		Calendar now = Calendar.getInstance();
		int year=now.get(Calendar.YEAR);
		//获取当前时间
	 Date getTime=now.getTime();
	Map<String,Object> map = new HashMap<String,Object>();
	//判断如果第一次登陆默认查看当前时间的考勤
			if(search==null||search.equals("")){
				search=Integer.toString(year);
			}
	List<Oa_manual_sign> list=oa_manualService.listAllManual(search,login.getuId());
	//格式化
	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM");
	for (Oa_manual_sign sign : list) {
				//截取月份
		String month =sign.getMonth().substring(0, 7);
		System.out.println(month);
		//获取当前月出勤信息
		CheckReg checkreg = getcheck(month,login.getuId());
		sign.setPer(checkreg.getPer());
		System.out.println(sign.getPer()+"%");
	}
		

	
		//查询月份
				int month = 0;
				
	map.put("manualData",list);
	return new ModelAndView("attendance/inline",map);
}
//跳转到考勤详细页面
@RequestMapping("toinline-info.html")
public ModelAndView toinline_info(int u_id,String month){
	//获取用户名和密码
		Session session=SecurityUtils.getSubject().getSession();
		Login login=(Login) session.getAttribute("login");
	Map<String,Object> map = new HashMap<String,Object>();
	//获取个人一个月出勤天数
	Oa_manual_sign oaSign=oa_manualService.getMonthByPerson(month, u_id);
	List<BaseStatisticsEntry> list=oa_manualService.getMonthQuality(month);
	//截取年份-月份
	//String monthtime =month.substring(0, 7);
	//截取月份
	//int monthto =Integer.parseInt(month.substring(5,7));
	//获取当前月出勤信息
	CheckReg checkreg = getcheck(month,login.getuId());
	oaSign.setPer(checkreg.getShould());
	map.put("manualData",oaSign);
	map.put("monthSum",list);
	return new ModelAndView("attendance/inline-info",map);
}
/**
 * 根据时间获取当月用户的出勤信息
 */
public CheckReg getcheck(String monthtime,int uId){
		CheckReg checkreg=new CheckReg();
	
		//统计一个月中，请假次数
		BaseStatisticsEntry listEntry= oa_manualService.getMonthByPersonManual(monthtime,uId, "请假");
		int holidays=listEntry.getMonthQuality();
		checkreg.setHoliday(holidays);
		//获取个人一个月出勤天数,实际出勤天数
		Oa_manual_sign oaSign=oa_manualService.getMonthByPerson(monthtime,uId);
		int sq=oaSign.getQuantity();
		checkreg.setReality(sq);
		//用户应出勤天数
				int should=StatisticsUtil.MonthWorkingDay(StatisticsUtil.getWhiteList(), monthtime);
				//应签
				checkreg.setShould(should);
				//出勤率
				double d = (double)sq/should;
				checkreg.setPer((int)(d*100));
	return checkreg;
}

	
}
