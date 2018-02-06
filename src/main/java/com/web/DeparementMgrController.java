package com.web;

import java.util.List;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.entity.Dept;
import com.entity.MatterDept;
import com.entity.User;
import com.service.MatterService;

/**
 * 部门管理
 * 
 * @author Administrator
 *
 */
@Controller
public class DeparementMgrController {

	@Autowired
	private MatterService matterService;
	
	

	/** 展示页面测试用方法 */

	/** 跳转到部门管理页面 */
	@RequestMapping("/department.html")
	public ModelAndView toDepartment() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("rsmgr/department");
		modelAndView.addObject("list", matterService.getDeptMsg());
		List<Dept> list = matterService.getAllDept();
		modelAndView.addObject("deptList",list );
		return modelAndView;
	}

	/** 跳转到部门信息添加页面 */
	@RequestMapping("/todepartment_add.html")
	public String toDepartmentAdd() {

		return "rsmgr/department_add";
	}

	/**
	 * 完成部门的添加
	 */
	@RequestMapping("department_add.html")
	public String toDepartmentAddIntoDept(Dept dept) {
		Session session=SecurityUtils.getSubject().getSession();
		try {
			matterService.insertDept(dept);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("添加操作失败");
			session.setAttribute("msg_add", 2);
			e.printStackTrace();
		}
		session.setAttribute("msg_add", 1);
		return "redirect:department.html";
	}
	
	/**
	 * 返回到列表
	 * @return
	 */
	@RequestMapping("/back_department.html")
	public String back_department(){
		
	return "redirect:/department.html";	
	}
	
	
	
	/**
	 * 部门更新
	 * @param deptUser
	 * @return
	 */
	@RequestMapping("department_update.html")
	public String updateDepartment(User deptUser) {
		Session session=SecurityUtils.getSubject().getSession();
		try {
			matterService.addDeptManager(deptUser);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("更新操作失败");
			session.setAttribute("msg_update", 2);
			e.printStackTrace();
		}
		session.setAttribute("msg_update", 1);
		return "redirect:department.html";
	}
	/**
	 * 完成部门的删除
	 */
	@RequestMapping("dept_delete.html")
	public String delDept(Integer deptId){
		Session session=SecurityUtils.getSubject().getSession();
		try {
			matterService.delDept(deptId);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("删除操作失败");
			session.setAttribute("msg_del", 2);
			e.printStackTrace();
		}
		session.setAttribute("msg_del", 1);
		return "redirect:department.html";
	}
	
	

	

}
