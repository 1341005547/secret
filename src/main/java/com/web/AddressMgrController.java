package com.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Staff;
import com.entity.User;
import com.service.StaffService;
import com.service.UserService;


/**
 * 通讯录管理
 * @author Administrator
 *
 */
@Controller
public class AddressMgrController {
	
	@Resource
	private StaffService sService;
	@Resource
	private UserService uService;
	
	/**展示页面测试用方法*/
	
	/**跳转到通讯录管理页面*/
	/*@RequestMapping("/address.html")
	public String toAddress(){		
		return "rsmgr/address";		
	}*/
	/**跳转到通讯录添加页面*/
	@RequestMapping("/address_add.html")
	public String toAddressAdd(){		
		return "rsmgr/address_add";		
	}
	
	/**实际开发中使用方法*/
	
	/**展示通讯录列表*/
	@RequestMapping("/address.html")
	public String toAddress(Model model){
		List<Staff> list=sService.showAddressList();
		
		model.addAttribute("addresslist", list);
		return "rsmgr/address";		
	}
	
	@RequestMapping("address_toUpdate")
	@ResponseBody
	public Object toUpdateAddress(Integer id){
		
		Map map=new HashMap();
		map.put("uid", id);	
		System.out.println("ajax======="+id);
		return map;		
	}
	
	@RequestMapping("/address_doUpdate.html")
	public String doUpdateAddress(User user){
		
		int i=uService.updateUser(user);
		if(i>0){
			System.out.println("更新成功");
			return "redirect:/address.html";
		}else{
			System.out.println("更新失败");
			return "rsmgr/address";
		}
		
	}
	
	
	/**
	 * 后期需要使用弹框提示用户是否更新成功
	 */
	
}
