package com.web;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.session.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Login;
import com.entity.Staff;
import com.entity.Staff_Info;
import com.entity.User;
import com.service.LoginService;
import com.service.StaffService;
import com.service.Staff_InfoService;
import com.service.UserService;

/**
 * 员工管理
 * @author Administrator
 *
 */
@Controller
public class StaffMgrController {
	
	@Resource
	private StaffService sService;
	@Resource
	private UserService uService;
	@Resource
	private LoginService lService;
	@Resource
	private Staff_InfoService s_infoService;
	
	
	
	
	/**================展示页面测试用方法=============*/
	
	
	/**跳转到员工管理页面*/
	/*@RequestMapping("/staff.html")
	public String toStaff(){
		return "rsmgr/staff";
		
	}*/
	
	/**跳转到添加员工信息页面*/
	/*@RequestMapping("/staff_add.html")
	public String toStaffAdd(){
		return "rsmgr/staff_add";
		
	}*/
	
	/**跳转到员工信息详情页面*/
	/*@RequestMapping("/staff_info.html")
	public String toStaffInfo(){
		return "rsmgr/staff_info";
		
	}*/
	
	/** ==============具体实现方法===============*/
	
	/**跳转到员工管理页面并将员工信息列表显示出来*/
	@RequestMapping("/staff.html")
	public String toStaff(Model model){
		List<Staff> staffList=sService.showStaffList();
		model.addAttribute("staffList", staffList);
		return "rsmgr/staff";		
	}
	
	/**跳转到添加员工信息页面*/
	@RequestMapping("/staff_toAdd.html")
	public String toStaffAdd(){
		return "rsmgr/staff_add";		
	}
	
	/**添加员工信息*/
	@RequestMapping("/staff_doAdd.html")
	public String doStaffAdd(User user,Login login){
//		必须保证电话号码的唯一
//		向user添加用户信息	
		user.setuStartTime(new Date());
		int i=uService.addUser(user);
//		向Login表添加信息
		User u=uService.getUserByPhone(user.getuPhone());		
		login.setuId(u.getuId());
//		加密		
		String credentials =login.getLoginPassword();//对密码进行加密
        String  usercode=login.getLoginUsercode();//使用usercode对密码进行加盐
		login.setLoginPassword(new SimpleHash("MD5", credentials, usercode).toString());//密码
		try {
			lService.addLogin(login);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "rsmgr/staff_add";
		}
		return "redirect:/staff.html";
			
		/**
		 * tip:后期补充使用ajax传输数据，保证usrecode和phone的唯一
		 * 保证员工编号的格式规范
		 * 部门下拉列表和职位下拉列表需要保持一致，比如选择部门下来列表后职位的下来列表只能出现属于该部门的职位。
		 * 或者将下拉框改为用户手动输入。
		 * 后期弹窗提示用户添加是否成功
		 * 
		 * 
		 * */
	}
	
	/**删除选中用户的信息*/
	@RequestMapping("/staff_delete.html")
	public String doDelete(Integer uid){
		/*通过uid对用户和登录信息进行删除*/	
		int i=uService.delUserAndLoginByid(uid);
		if(i>0){
			System.out.println("删除成功");
			return "redirect:/staff.html";
		}else{
			System.out.println("删除失败");
			return "rsmgr/staff";
		}
	
		/**
		 * tip:删除成功的时候刷新页面，并通过弹窗提示删除成
		 * 删除失败的时候留在原页面即部刷新，并通过弹窗提示删除失败
		 * 
		 * */
	}
	
	/**跳转到用户详情页面并查看*/
	@RequestMapping("staff_info")
	@ResponseBody
	public Map toStaffInfo(Integer id){
		Staff_Info staff_info=s_infoService.getStaff_InfoById(id);
//		model.addAttribute("staff_info", staff_info);	
		Map map=new HashMap();
		map.put("staff_info", staff_info);
		System.out.println("========我进来了========");
		return map;	
		
		/**
		 * tip:前段模态框没有接收到信息
		 * 方法都是正确的
		 */
	}
	
	
	@RequestMapping("staff_toUpdate")
	@ResponseBody
	public Object toUpdateStaff(Integer id){	
		System.out.println(id);
		Map map=new HashMap();
		map.put("uid", id);	
		return map;
		
		/**
		 * 上面和下面均是修改的方法，经过测试无法使用模态框的形式弹出想要的数据。
		 * 以及模态框中有form提交的方式。
		 * 所以修改和添加方法还是用跳转到一个页面的方法去写比较方便
		 */		
	}
	/**
	 * 王楠杰
	 * 修改
	 * @param uid
	 * @param user
	 * @param login
	 * @return
	 */
	@RequestMapping("/staff_doUpdate.html")
	public String doUpdateStaff(Integer uid,User user,Login login){
		/*Session session=SecurityUtils.getSubject().getSession();
		Integer uid=(Integer) session.getAttribute("updateId");*/
		System.out.println("==========="+uid);
		user.setuId(uid);
		login.setuId(uid);	
		int i=uService.updateUser(user);
		//王楠杰，检查更新登录信息
		int j=lService.updateLoginByUid(login);	
		/**
		 * 通过返回的值判断操作是否完成
		 */
		if(i>0 && j>0){
			System.out.println("更新成功");
			return "redirect:/staff.html";
		}else{
			System.out.println("更新失败");
			return "rsmgr/staff";
		}
		
		/**
		 * 因为邮箱这个字段不确定，在用户表中添加一个邮箱的字段，本软件发送邮件并不是用的Email字段
		 * 需要在注册的时候也添加一个邮箱字段。
		 * 修改的时候应该将选择的当前信息展示出来
		 * 
		 */
	}
	
	 
	
	/**
	 * 总结：只完成了查看和删除的功能
	 * 	修改和员工详情查看方法已经写好了，但是无法将数据传到前段。
	 */
	
}
