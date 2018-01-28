package com.web;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.entity.Login;
import com.entity.Oa_manual_sign;
import com.entity.Role;
import com.entity.User_role;
import com.service.LoginService;
import com.service.Oa_manual_signService;
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
	@Autowired
	private Oa_manual_signService oa_manualService;
	
	/**
	 * 用户登陆
	 */
	@RequestMapping("tologin")
	public String userLogin(String loginUsercode,String loginPassword){
		UsernamePasswordToken usernamePasswordToken=new UsernamePasswordToken(loginUsercode,loginPassword);//把账户和密码存到令牌中
		Subject currentUser=SecurityUtils.getSubject();
		if(!currentUser.isAuthenticated()){
			try {
				currentUser.login(usernamePasswordToken);//进行认证
			} catch (Exception e) {
				//e.printStackTrace();
				return "index";
			}
		}
		Login login=loginService.login(loginUsercode);
		//格式化
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		Map map=new HashMap();
		Date date=new Date();
		String time=df.format(date);
		Oa_manual_sign oa_manual_sign=oa_manualService.selectEndTime(login.getuId(),time);
		Session session=SecurityUtils.getSubject().getSession();
		session.setAttribute("login", login);
		session.setAttribute("outmasi",oa_manual_sign);

	    return "home";
	}
	
	/**
	 * 用户角色查询
	 */
	@RequestMapping("getroles/{name}")
	@ResponseBody
	public List getRoles(@PathVariable String name){
       System.out.println("我触发了");
       Login login=loginService.login(name);
	   Integer uid= login.getuId();
	   Role role=null;
	   List<User_role>  userRoles=userRoleService.getUserRoles(uid);
	   if(userRoles.size()>0){
		   for (User_role user_role : userRoles) {
			    role= roleService.getRoles(user_role.getrId());
			
			}  
	   }
	   return userRoles ;
	 
	}
	/**
	 * 去登陆
	 * @return
	 */
	@RequestMapping("login.html")
	public String toLogin(){
		System.out.println("我触发了");
		return "index";
	}
	

	
	@RequestMapping(value="updatemsgstate",produces = {"application/json;charset=UTF-8"})
	@ResponseBody
	public Map getMap(){
		Map map=new HashMap();
		map.put("name", "zhangsan");
		map.put("sex", "aaaaaaa");
		map.put("date", new Date());
		return map;
		
	}
	
}
