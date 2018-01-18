package com.web;

import java.util.List;

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
public class LoginController {
   
	@Autowired
	private LoginService loginService; //用户登陆业务接口
	@Autowired
	private RoleService roleService;
	@Autowired
	private User_roleService userRoleService;
	
	/**
	 * 用户登陆
	 */
	@RequestMapping("userlogin/{name}")
	@ResponseBody
	public Login userLogin(@PathVariable String name){
       System.out.println("我触发了");
	   Login login=loginService.login(name);
	   return login;
	}

	/**
	 * 测试
	 * ====================================================================
	 * @return
	 */
	@RequestMapping("main")
	public String toLogin(){
		System.out.println("我触发了");
		return "attendance/statistics_main";
	}
	@RequestMapping("excel")
	public String excel(){
		System.out.println("我触发了");
		return "attendance/statistics_excel";
	}
}
