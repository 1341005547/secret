package com.web;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.common.Constants;
import com.common.DateUtil;
import com.dao.Account_dispatchMapper;
import com.entity.Account_dispatch;
import com.entity.Apply;
import com.entity.Category_dispatch;
import com.entity.Dept;
import com.entity.Dispatch;
import com.entity.Login;
import com.entity.Professional;
import com.entity.Type_apply;
import com.entity.User;
import com.service.ApplyService;
import com.service.DeptService;
import com.service.DispatchService;
import com.service.MyApplyService;
import com.service.ProfessionalService;
import com.service.Type_applyService;
import com.service.UserService;

/**
 * 我的申请页面
 * 
 * @author 刘林春
 * Create Time 2018/1/22
 */
@Controller
public class MyApplyController {

	@Autowired
	private MyApplyService myApplyService;

	@Autowired
	private Type_applyService type_applyservice;
	
	@Autowired
	private DeptService deptService;
	
	@Autowired
	private ProfessionalService professionalservice;
	
	@Autowired
	private DispatchService dispatchservice;
	
	@Autowired
	private ApplyService applyService;
	@Autowired
	private UserService userService;
	@Autowired
	private Account_dispatchMapper account_dispatchMapper;

	/**
	 * 进入提交页面,添加
	 * 
	 * @param record
	 * @return
	 */
	@RequestMapping(value = "submitOrSava")
	public String submitOrSava(Apply record, Integer select, String apply,Integer id) {
		System.out.println("aaaaaaaa");
		
		Map<String, Object> map = new HashMap<String, Object>();
		record.setuId(id);
		record.setaCreateTime(new Date());
		record.settId(Integer.valueOf(select));
		record.setaEven(apply);
		record.setaState("未审核");
		record.setaSubmit(1);
		
		System.out.println("=====" + record.getaEven()+"\t"+select);
		boolean flag = false;
		try {
			flag = myApplyService.insertSelective(record);
		} catch (Exception e) {
			if (flag = true) {
				map.put("error", "成功！");
			} else {
				map.put("error", "失败！");
			}
		}
		return "redirect:applymanage";
	}

	/**
	 * 保存草稿箱,保存
	 * 
	 * @param record
	 * @return
	 */
	@RequestMapping("savaOrsubmit")
	public String savaOrsubmit(Apply record, Integer select, String apply,Integer id) {
		System.out.println("bbbbbbbbbbbb");
		Map<String, Object> map = new HashMap<String, Object>();
		record.setuId(id);
		record.setaCreateTime(new Date());
		record.settId(Integer.valueOf(select));
		record.setaEven(apply);
		record.setaState("未提交");
		record.setaSubmit(0);
		
		System.out.println("=====" + record.getaEven()+"\t"+select);
		boolean flag = false;
		try {
			flag = myApplyService.insertSelective(record);
		} catch (Exception e) {
			if (flag = true) {
				map.put("error", "成功！");
			} else {
				map.put("error", "失败！");
			}
		}
		return "redirect:myapply";
	}
	
	
	/**
	 * 进入编辑页面，完成后保存进草稿箱
	 * 
	 * @param record
	 * @return
	 */
	@RequestMapping("savaOrsubmit1")
	public String savaOrsubmit1(Apply record, Integer select, String apply,Integer id) {
		System.out.println("bbbbbbbbbbbb");
		Map<String, Object> map = new HashMap<String, Object>();
		record.setuId(id);
		record.setaCreateTime(new Date());
		record.settId(Integer.valueOf(select));
		record.setaEven(apply);
		record.setaState("未提交");
		record.setaSubmit(0);
		
		System.out.println("=====" + record.getaEven()+"\t"+select);
		int x=0;
		try {
			x= myApplyService.updateByPrimaryKeySelective(record);
		} catch (Exception e) {
			if (x>0) {
				map.put("error", "成功！");
			} else {
				map.put("error", "失败！");
			}
		}
		return "redirect:myapply";
	}
	
	/**
	 * 点击调度，并进行提交跳转的路径
	 * @return
	 */
	@RequestMapping("dispatchToSubmit")
	public String dispatchToSubmit(Dispatch record,Integer dept,Integer pro,Integer deptid,Integer profess){
		Apply apply = new Apply();
		Login login=(Login) SecurityUtils.getSubject().getSession().getAttribute("login");
		apply.setaSubmit(1);   //已经提交
		apply.setaState("未审核");
		apply.setaEven("申请调任");
		apply.setaCreateTime(DateUtil.parseDateTime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date())));
		apply.setuId(login.getuId());
		apply.settId(1);
		myApplyService.insertSelective(apply);

		int x=myApplyService.showMaxApplyId();
		
		record.setuId(login.getuId());
		record.setDispatchCreateTime(DateUtil.parseDateTime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date())));
		//调动前的职位
		record.setpId(pro);
		//调动后的职位
		record.setDispatchPId(profess);
		//调动前的部门
		record.setdId(dept);
		//调动后的部门
		record.setDispatchDId(deptid);
		//获取最大申报id
		record.setaId(x);
		
		dispatchservice.insertSelective(record);
		
		return "redirect:myapply";
	}
	
	

	/**
	 * 提交操作，从草稿箱到审核列表
	 * @param record
	 * @param map
	 * @return
	 */
	@RequestMapping("toSubmit")
	public String submit(Apply record,Integer aId) {
			
			myApplyService.updateSaveToSubmit(aId);
		
		return "redirect:applymanage";
	}

	/**
	 * 删除操作，从草稿箱删除
	 * @param record
	 * @param map
	 * @return
	 */
	@RequestMapping("toDelete")
	public String delete(Integer aId) {
		
			myApplyService.deleteByPrimaryKey(aId);
		
		return "redirect:myapply";
	}
	
	/**
	 * 去编辑
	 * @param record
	 * @param map
	 * @return
	 */
	@RequestMapping("toSave")
	public String save(Model model,Integer aId) {
		
			List<Type_apply> list2 = type_applyservice.listAll();
			model.addAttribute("list2", list2);
			Apply apply = myApplyService.getUName(aId);
			model.addAttribute("apply", apply);
		
		return "apply/applyedit";
	}
	
	/**
	 * 去查看
	 * @param record
	 * @param map
	 * @return
	 */
	@RequestMapping("toLook")
	public String look(Model model,Integer aId) {
		
			List<Type_apply> list2 = type_applyservice.listAll();
			model.addAttribute("list2", list2);
			Apply apply = myApplyService.getUName(aId);
			model.addAttribute("apply", apply);
		
		return "apply/applylook";
	}
	
	


	/**
	 * 进入我的申请页面
	 * 
	 * @return
	 */
	@RequestMapping("myapply")
	public String myapply(Model model) {
		Login login=(Login) SecurityUtils.getSubject().getSession().getAttribute("login");
		//获取登陆用户所有草稿
		Integer uId=login.getuId();
		List<Apply> list = myApplyService.listGetASubmit(uId);
		model.addAttribute("list", list);
		//获取所有申报类别
		List<Type_apply> list2 = type_applyservice.listAll();
		model.addAttribute("list2", list2);
		//获取用户当前部门
		Dept dept=deptService.getDeptPrimaryKey(uId);
		model.addAttribute("dept", dept);
		//获取用户当前职位
		Professional professional=professionalservice.getProfessionalByUId(uId);
		model.addAttribute("professional", professional);
		//获取所有部门
		List<Dept> list3=deptService.getAllDept();
		model.addAttribute("list3", list3);
		//获取所有职位
		List<Professional> list4=professionalservice.getAllPro();
		model.addAttribute("list4", list4);
		return "apply/myapply";
	}


	
	
	
	
	
	
	/**
	 * 进入申请管理页面
	 * @return
	 */
	@RequestMapping("applymanage")
	public String applymanage(HttpServletRequest request,HttpSession session) {
		List<Apply> applies = null;
		Professional Professional =(Professional) SecurityUtils.getSubject().getSession().getAttribute("professional");
		System.out.println(Professional.getProfessionalName());
		User user =(User) SecurityUtils.getSubject().getSession().getAttribute("user");
		if(!Professional.getProfessionalName().equals(Constants.POSITION_GM)&&!Professional.getProfessionalName().equals(Constants.POSITION_STAFF)){
			applies = applyService.selectAllApplyBydId(user.getdId());
			List<Apply> applies3 = applyService.selectAlldispatchBytId(user.getdId());
			session.setAttribute("applies3", applies3);
		}
		if(user.getProfessionalName().equals(Constants.POSITION_GM)){
			applies = applyService.selectApplyGMDeal();
			List<Apply> applies2 = applyService.selectNeetGMDeal();
			session.setAttribute("applies2", applies2);
			List<Apply> applies3 = applyService.selectNeetGMdispatchDeal();
			session.setAttribute("applies3", applies3);
		}
		session.setAttribute("applies", applies);
		return "apply/applymanage";
	}
	/**
	 * 进入报销管理页面
	 * @return
	 */
	@RequestMapping("reimburseapplymanage")
	public String reimburseapplymanage(HttpServletRequest request,HttpSession session) {
		List<Account_dispatch> applies = null;
		List<Category_dispatch> category_dispatchs = applyService.getAllCategotyDispatch();
		request.setAttribute("category_dispatchs", category_dispatchs);
		Professional Professional =(Professional) SecurityUtils.getSubject().getSession().getAttribute("professional");
		User user =(User) SecurityUtils.getSubject().getSession().getAttribute("user");
		System.out.println(user.getuId());
		if(Professional.getProfessionalName().equals(Constants.POSITION_STAFF)){
			applies = account_dispatchMapper.accountdispathDealByuId(user.getuId());
		}
		
		session.setAttribute("reimburseapplies", applies);
		
		return "apply/reimburseapplymanage";
	}
	/**
	 * 进入申请详情页面
	 * @return
	 */
	@RequestMapping("applyexamine")
	public String applyexamine(Integer uId, Integer aId,HttpServletRequest request,HttpSession session) {
		User UUser = userService.selectByPrimaryKey(uId);
		request.setAttribute("UUser", UUser);
		@SuppressWarnings("unchecked")
		List<Apply> applies =(List<Apply>) session.getAttribute("applies");
		@SuppressWarnings("unchecked")
		List<Apply> applies2 =  (List<Apply>)   session.getAttribute("applies2");
		@SuppressWarnings("unchecked")
		List<Apply> applies3 =  (List<Apply>)   session.getAttribute("applies3");
		
		if(applies!=null){
			for (Apply apply : applies) {
				if(apply.getaId()==aId){
					request.setAttribute("APPLY", apply);
					return "apply/applyexamine";
				}
			}
		}
		if(applies3!=null){
			for (Apply apply3 : applies3) {
				if(apply3.getaId()==aId){
					request.setAttribute("APPLY", apply3);
					return "apply/applyexamine";
				}
			}
		}
		if(applies2 !=null){
			for (Apply apply2 : applies2) {
				if(apply2.getaId()==aId){
					request.setAttribute("APPLY", apply2);
					return "apply/applyexamine";
				}
			}
		}
			
		
		return "apply/applyexamine";
	}
	





}
