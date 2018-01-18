package com.web;

import java.util.List;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Login;
import com.entity.Role;
import com.entity.User_role;
import com.service.LoginService;
import com.service.RoleService;
import com.service.User_roleService;

@Controller
public class LeaveController {
   
	@Autowired
	private LoginService loginService; //用户登陆业务接口
	@Autowired
	private RoleService roleService;
	@Autowired
	private User_roleService userRoleService;

	


	
	/**
	 *  跳转假期查询 
	 */
	@RequestMapping("chartjs.html")
	public  String  gochartjs(){
		System.out.println("我去假期查询!");
		return "charts/chartjs";
	}
	/**
	 *  跳转假期申请
	 */
	@RequestMapping("morris.html")
	public  String  gomorris(){
		System.out.println("我去假期申请!");
		return "charts/morris";
	}
	/**
	 *  跳转假期审核
	 */
	@RequestMapping("flot.html")
	public  String  goflot(){
		System.out.println("假期审核!");
		return "charts/flot";
	}
	
	
	
	
	
	
	
}
