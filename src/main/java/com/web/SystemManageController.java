package com.web;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.entity.Announcement;
import com.entity.Counduct;
import com.entity.Login;
import com.entity.Operation;
import com.entity.Thelog;
import com.service.xtmgr.AnnouncementService;
import com.service.xtmgr.CounductService;
import com.service.xtmgr.OperationService;
import com.service.xtmgr.ThelogService;

/**
 * 系统管理前端控制器
 * @author 巴士里
 *
 */
@Controller
public class SystemManageController {

	@Autowired
	AnnouncementService anService;// 系统管理业务类
	@Autowired
	ThelogService theService;//登录日志业务类
	@Autowired
	CounductService counService;//操作日志业务类
	@Autowired
	OperationService operService;//守则管理业务类
	
	
	// 跳转公告管理页面
	@RequestMapping("adver.html")
	public String showAdver(Map<String, Object> map) {
		List<Announcement> anList = anService.selectAdver();
		map.put("anList", anList);
//		System.out.println(map);
		return "xtmgr/adver";
	}

	// 添加公告
	@RequestMapping(value="/saveAdver.html")
	public Object saveAdver(Announcement announcement) {
		announcement.setAnnouncementCreateTime(new Date());
		// 获取session存储的login对象
		Login login = (Login) SecurityUtils.getSubject().getSession().getAttribute("login");
		announcement.setuId(Integer.valueOf(login.getuId()));
		announcement.setAnnouncementType(0);
		System.out.println("============" + announcement.getAnnouncementTitle());
		int i = 0;
		try {
			i = anService.insertAnnouncementSelective(announcement);
			//System.out.println(i);
		} catch (Exception e) {
			/*if (i > 0){
				map.put("error", "添加成功！");
			}
			else{
				map.put("error", "添加失败！");
			}*/
		}
		return "redirect:adver.html";
	}

	
		// 保存公告
		@RequestMapping(value="/saveAdverType.html")
		public String saveAdverType(Announcement announcement) {
			Map<String, String> resultMap = new HashMap<String, String>();
			announcement.setAnnouncementCreateTime(new Date());
			// 获取session存储的login对象
			Login login = (Login) SecurityUtils.getSubject().getSession().getAttribute("login");
			announcement.setuId(Integer.valueOf(login.getuId()));
			announcement.setAnnouncementType(1);
			//System.out.println("===========保存草稿");
			int i = 0;
			try {
				i = anService.insertAnnouncementSelective(announcement);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if (i > 0)
				resultMap.put("error", "添加成功！");
			else
				resultMap.put("error", "添加失败！");
			
			return "redirect:adver.html";
		}
	
	//根据id显示公告的详细信息
	@RequestMapping(value="adver_look",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> showAdverLook(Integer id) {
		Announcement announcement=anService.selectByPrimaryKey(id);
		Map<String, Object> map=new HashMap<>();
		map.put("announcement", announcement);
		
//		System.out.println(announcement.getAnnouncementTitle()+"===========");
		return map;
	}
	
	//删除公告
	@RequestMapping("/deladver/{id}")
	public String delAdverLook(@PathVariable Integer id) {
		int i=anService.deleteByAnnouncementPrimaryKey(id);
		return "redirect:../adver.html";
	}
	
	//点击发布
	@RequestMapping("/updAteadver/{id}")
	public String updAteadver(@PathVariable Integer id) {
		Announcement announcement=new Announcement();
		announcement=anService.selectByPrimaryKey(id);
		announcement.setAnnouncementType(0);
		int i=anService.updateByAnnouncementPrimaryKey(announcement);
		if(i>0)
			System.out.println("修改成功！");
		else
			System.out.println("修改失败！");
		return "redirect:../adver.html";
	}
	
	//去修改页面
	@RequestMapping("upAdver/{id}")
	public String toUpdate(@PathVariable Integer id,Map<String, Object> map) {
		Announcement announcement=anService.selectByPrimaryKey(id);
		map.put("announcement", announcement);
		return "xtmgr/adver_update";
	}
	
	//保存修改页面
	@RequestMapping("/saveAdver")
	public String saveUpdate(Announcement announcement,Map<String, Object> map) {
		int i=anService.updateByAnnouncementPrimaryKey(announcement);
		List<Announcement> anList = anService.selectAdver();
		map.put("anList", anList);
		System.out.println("======="+i);
		return "xtmgr/adver";
	}
	
	//显示登录日志
	@RequestMapping("loglogin.html")
	public String showLoglogin(Map<String, Object> map) {
		List<Thelog> theList=theService.selectLog();
		map.put("theList", theList);
		System.out.println("进入登录管理。。。。。。");
		return "xtmgr/loglogin";
	}

	//根据id显示登录日志的详细信息
	@RequestMapping("/log_look/{id}")
	public String showLogLook(@PathVariable Integer id,Model model) {
		Thelog log=theService.selectByPrimaryKey(id);
		model.addAttribute("log", log);
		System.out.println(log.getThelogLoginTime()+"=========");
		return "xtmgr/log_look";
	}
	
	//根据id删除登录日志
	@RequestMapping("/delLog/{id}")
	public String delLog(@PathVariable Integer id,Model model) {
		int i=theService.deleteByThelogPrimaryKey(id);
		
		System.out.println(i+"=========");
		return "redirect:../loglogin.html";
	}
	
	@RequestMapping("operate.html")
	public String showOperate(Model model) {
		List<Operation> operList=operService.selectOperation();
		model.addAttribute("operList", operList);
		return "xtmgr/operate";
	}

	//根据id删除操作日志
	@RequestMapping("/deloper/{id}")
	public String delOper(@PathVariable Integer id) {
		int i=operService.deleteByOperationPrimaryKey(id);
		System.out.println(i+"操作日志删了=========");
		return "redirect:../operate.html";
	}
	
	//根据id查看操作日志
	@RequestMapping("/operate_look")
	@ResponseBody
	public Map<String, Object> operlook(Integer id) {
		Operation operation=operService.selectByPrimaryKey(id);
		Map<String, Object> map=new HashMap<>();
		map.put("operation", operation);
		System.out.println(operation.getOperationEven());
		return map;
	}
	
	//显示守则管理
	@RequestMapping("rules.html")
	public String showRules(Model model) {
		List<Counduct> counList=counService.selectCounduct();
		model.addAttribute("counList", counList);
		
		return "xtmgr/rules";
	}

	//显示守则管理详细
	@RequestMapping("rules_look")
	@ResponseBody
	public Map<String,Object> showRules_look(Integer id) {
		Counduct counduct=counService.selectByPrimaryKey(id);
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("counduct", counduct);
		return map;
	}
	
	//根据id删除守则管理
	@RequestMapping("/delrule/{id}")
	public String delRule(@PathVariable Integer id) {
		int i=counService.deleteByCounductPrimaryKey(id);
		System.out.println(i+"守则管理删了=========");
		return "redirect:../rules.html";
	}
	
	//去修改守则页面
	@RequestMapping("update_rules")
	@ResponseBody
	public Map<String, Object> toUpdateRules(Integer id) {
		Counduct counduct=counService.selectByPrimaryKey(id);
		Map<String, Object> map=new HashMap<>();
		map.put("counduct", counduct);
		return map;
	}
	
	//保存修改
	@RequestMapping("saveRule")
	public String saveRules(Counduct counduct,BindingResult bin) {
		int i=counService.updateByCounductPrimaryKey(counduct);
		System.out.println(i+"======时间少了八小时");
		return "redirect:rules.html";
	}
	
	//添加守则
	@RequestMapping("insertRule.html")
	public String insertRules(Counduct counduct) {
		Login login = (Login) SecurityUtils.getSubject().getSession().getAttribute("login");
		counduct.setuId(login.getuId());
		counduct.setCounductCreateTime(new Date());
		int i=counService.insertCounductSelective(counduct);
		
		System.out.println(counduct.getCounductId()+"======添加守则");
		return "redirect:rules.html";
	}
	
	//退出时添加个时间
	@RequestMapping("outTo")
	@ResponseBody
	public int logout() {
		RequestAttributes ra = RequestContextHolder.getRequestAttributes();  
    	ServletRequestAttributes sra = (ServletRequestAttributes) ra;  
    	HttpServletRequest request = sra.getRequest();  
    	Thelog log=(Thelog) request.getSession().getAttribute("thelog");
    	
    	log.setThelogOutTime(new Date());
    	int i=theService.updateByPrimaryKeySelective(log);
    	System.out.println(i+"--------------");
		return i;
	}
	
	public static int updateTime(){
		int i=0;
//		Session session=SecurityUtils.getSubject().getSession();
//		Thelog log=(Thelog) session.getAttribute("thelog");
		RequestAttributes ra = RequestContextHolder.getRequestAttributes();  
    	ServletRequestAttributes sra = (ServletRequestAttributes) ra;  
    	HttpServletRequest request = sra.getRequest();  
    	Thelog log=(Thelog) request.getSession().getAttribute("thelog");
		
		return i;
	}
	
	
}
