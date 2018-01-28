package com.web;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Login;
import com.entity.Permission;
import com.entity.Role;
import com.entity.Role_permission;
import com.entity.User;
import com.entity.User_role;
import com.service.RoleService;

@Controller
public class PowerController {

	@Autowired
	private RoleService roleService;

	/**
	 * 权限分配
	 * 
	 * @return
	 */
	@RequestMapping("power_give.html")
	public String toPower_give(Model model) {
		// 获取登录对象的id
		Session session = SecurityUtils.getSubject().getSession();
		Login login = (Login) session.getAttribute("login");
		Integer uid = login.getuId();
		// 得到该用户所在部门下的所有员工
		List<User> user_list = roleService.getUserListByUid(uid);
		// 获得登陆用户创建的角色对象集合
		List<Role> role_list = roleService.getCreateRolesList(uid);
		// 获得用户角色中间表
		List<User_role> user_role_list = roleService.getUserRoleByUid(uid);

		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();

		/* if(role_list!=null && user_role_list.get(0)!=null){ */
		for (User i : user_list) {
			Map<String, Object> map = new HashMap<String, Object>();
			// 获得授权时间
			Date give_power_time = user_role_list.get(0).getGive_power_time();
			List<String> role_name_list = roleService.getRoleNameListByUid(i.getuId());
			map.put("give_power_time", give_power_time);
			map.put("role_name_list", role_name_list);
			map.put("user", i);
			list.add(map);
			/* } */
		}

		model.addAttribute("user_list", user_list);
		model.addAttribute("role_list", role_list);
		model.addAttribute("list", list);
		return "powermgr/power_give";
	}

	/**
	 * 权限分配--ajax判断传值----restful风格
	 * 
	 * @param userId
	 * @param selectRight
	 * @param model
	 * @return
	 */
	@RequestMapping("power_give/{select_user}")
	@ResponseBody
	public Map<String, List<Role>> giveAjax(@PathVariable Integer select_user) {

		Session session = SecurityUtils.getSubject().getSession();
		Login login = (Login) session.getAttribute("login");
		Integer uid = login.getuId();

		System.out.println(select_user);
		// 按uid查询的角色对象集合
		List<Role> uIdRole_list = roleService.getRoleListByUid(select_user);
		// roleService.getRoleListByUid(uid);
		// 按登陆用户id和按uid查询的角色对象的差集集合
		List<Role> different_Role_list = roleService.getRoleListByUidCreate_uid(select_user, uid);
		Map<String, List<Role>> map = new HashMap<String, List<Role>>();
		map.put("role_list", different_Role_list);
		map.put("uIdRole_list", uIdRole_list);
		/*
		 * Map map = new HashMap(); String m = "213"; map.put("123", m);
		 */
		return map;
	}

	/**
	 * 权限分配--接受前台传值
	 * 
	 * @param userId
	 * @param selectRight
	 * @param model
	 * @return
	 */
	@RequestMapping("/power_give_refer")
	public String giveRefer(Integer userId, String[] selectRight, Model model) {
		/*
		 * Session session = SecurityUtils.getSubject().getSession(); Login
		 * login = (Login) session.getAttribute("login"); Integer uid =
		 * login.getuId();
		 */

		User_role u_role = new User_role();

		roleService.deleteUserRoleByUid(userId);

		/*// 调用时间解析函数，格式化时间格式
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// 设置日期格式
		String date = df.format(new Date());// new Date()为获取当前系统时间，也可使用当前时间戳
		Date updateTime = String2Date(date);*/

		Date date = new Date();

		for (String i : selectRight) {
			u_role.setrId(Integer.valueOf(i));
			u_role.setuId(userId);
			u_role.setGive_power_time(date);
			roleService.addUserRole(u_role);
		}

		toPower_give(model);

		return "powermgr/power_give";

	}

	/**
	 * 权限分配--Ajax表格查看
	 * 
	 * @param uId
	 * @return
	 */
	@RequestMapping("power_give_lookAjax")
	@ResponseBody
	public Map<String, Object> power_giveLookAjax(Integer uId) {

		User user = roleService.getUser(uId);
		List<User_role> u_r_list = roleService.getUserRoleByUid(uId);
		List<Role> role_list = roleService.getRoleListByUid(uId);
		// 部门’职位
		List<String> r_name_list = new ArrayList();
		for (Role i : role_list) {
			r_name_list.add(i.getrName());
			
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("user", user);
		map.put("r_name_list", r_name_list);
		Date give_Time = u_r_list.get(0).getGive_power_time();
		map.put("give_Time", give_Time);

		return map;
	}

	/**
	 * 角色设定
	 * 
	 * @return
	 */
	@RequestMapping("power_set.html")
	public String toPower_set(Model model) {
		// role\permission\及他们的中间表---user
		// ModelAndView mav = new ModelAndView("powermgr/power_set");
		// 获取登录对象的id
		Session session = SecurityUtils.getSubject().getSession();
		Login login = (Login) session.getAttribute("login");
		Integer uid = login.getuId();
		// 获得登陆用户的权限对象集合
		List<Permission> per_list = roleService.getPerNameListByUid(uid);
		// 获得登陆用户创建的角色对象集合
		List<Role> r_list = roleService.getCreateRolesList(uid);
		// 放入model，供前端调取
		model.addAttribute("per_list", per_list);
		model.addAttribute("r_list", r_list);

		return "powermgr/power_set";
	}

	/**
	 * 角色设定--ajax表格删除
	 * 
	 * @param role_rId
	 * @return
	 */
	@RequestMapping("power_set_delAjax{rId}")
	// @ResponseBody
	public String power_setAjax(@PathVariable Integer rId, Model model) {

		Session session = SecurityUtils.getSubject().getSession();
		Login login = (Login) session.getAttribute("login");
		Integer uid = login.getuId();

		roleService.deleteRoleByRid(rId);

		// 获得登陆用户创建的角色对象集合
		List<Role> r_list = roleService.getCreateRolesList(uid);
		// 获得登陆用户的权限对象集合
		List<Permission> per_list = roleService.getPerNameListByUid(uid);
		
		model.addAttribute("r_list", r_list);
		model.addAttribute("per_list", per_list);
		return "powermgr/power_set";

	}

	/**
	 * 角色设定--Ajax表格查看
	 * 
	 * @param role_rId
	 */
	@RequestMapping("power_set_lookAjax")
	@ResponseBody
	public Map<String, Object> power_setLookAjax(Integer role_rId) {

		Role role = roleService.getRoles(role_rId);
		Session session = SecurityUtils.getSubject().getSession();
		session.removeAttribute("map");
		// session.setAttribute("qqq","qqq");
		List<Permission> perList = roleService.getPermissionList(role_rId);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("role", role);
		map.put("perList", perList);
		// session.setAttribute("map", map);
		return map;
	}

	/**
	 * 角色设定--接受前台提交角色信息
	 * 
	 * @param selectCon
	 * @param author
	 * @param text
	 */
	@RequestMapping(value = "/power_set_refer", method = RequestMethod.POST)
	public String setRefer(String author, String text, String[] selectRight, Model model)
			throws ServletException, IOException {

		Session session = SecurityUtils.getSubject().getSession();
		Login login = (Login) session.getAttribute("login");
		Integer uid = login.getuId();

		Role role = new Role();
		// 角色描述
		role.setR_Content(text);
		// 角色名
		role.setrName(author);
		// 调用时间解析函数，格式化时间格式
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// 设置日期格式
		String date = df.format(new Date());// new Date()为获取当前系统时间，也可使用当前时间戳
		Date updateTime = String2Date(date);

		// Date date = new Date();
		// 角色创建时间
		role.setR_Create_Time(updateTime);
		// 角色创建人
		role.setrUser(uid);
		// 同步Role角色表
		roleService.addRole(role);
		Role_permission role_per = new Role_permission();
		// 权限id集合
		// List<Integer> per_list = Arrays.asList(selectCon);
		// 得到新加入的角色对象
		Role newRole = roleService.getRoleByRnameUid(author, uid);
		// 遍历id数组，并同步到角色权限中间表

		for (String i : selectRight) {
			role_per.setrId(newRole.getrId());
			int ii = Integer.valueOf(i);
			role_per.setPermissionId(ii);
			// 同步role_permission表
			roleService.addRolePermission(role_per);
		}

		// toPower_set(model);

		// Map<String, List<Role>> map = new HashMap<String, List<Role>>(); //
		// 获得登陆用户的角色对象集合
		List<Role> r_list = roleService.getCreateRolesList(uid);
		// 获得登陆用户的权限对象集合
		List<Permission> per_list = roleService.getPerNameListByUid(uid);

		// map.put("r_list", r_list);
		model.addAttribute("r_list", r_list);
		model.addAttribute("per_list", per_list);

		return "powermgr/power_set";

	}

	/**
	 * 权限查看
	 * 
	 * @return
	 */
	@RequestMapping("power_look.html")
	public String toPower_look(Map<String, Object> mmap) {

		// 获取登录对象的id
		Session session = SecurityUtils.getSubject().getSession();
		Login login = (Login) session.getAttribute("login");
		Integer uid = login.getuId();

		// 通过Uid，获取用户对应的角色集合
		List<Role> roleList = roleService.getRoleListByUid(uid);
		mmap.put("roleList", roleList);
		mmap.put("givePowerTime", roleList.get(0).getR_Create_Time());
		// 获取创建人
		Integer create_id = roleList.get(0).getrUser();
		User create_user = roleService.getUser(create_id);
		mmap.put("create_Name", create_user.getuName());

		// 通过Uid，获取用户对象
		User user = roleService.getUser(uid);
		mmap.put("user", user);
		user.getuId();

		return "powermgr/power_look";
	}

	/**
	 * 时间解析函数
	 */
	public Date String2Date(String time) {
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

}
