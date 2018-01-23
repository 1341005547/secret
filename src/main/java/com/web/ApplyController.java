package com.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.common.Constants;
import com.entity.Apply;
import com.entity.Category_dispatch;
import com.entity.Type_apply;
import com.entity.User;
import com.service.ApplyService;
import com.service.UserService;

@Controller
public class ApplyController {
	@Autowired
	private ApplyService applyService;
	@Autowired
	private UserService userService;
	
	
	/**
	 * 进入我的申请页面
	 * @return
	 */
	@RequestMapping("myapply")
	public String myapply(HttpServletRequest request){
		List<Type_apply> type_applies = applyService.getAllApplyType();
		
		request.setAttribute("type_applies", type_applies);

		return "apply/myapply";
	}
	/**
	 * 进入申请管理页面
	 * @return
	 */
	@RequestMapping("applymanage")
	public String applymanage(HttpServletRequest request,HttpSession session) {
		List<Apply> applies = null;
		User user =(User) SecurityUtils.getSubject().getSession().getAttribute("User");
		if(user.getProfessionalName()!=Constants.POSITION_GM&&user.getProfessionalName()!=Constants.POSITION_STAFF){
			applies = applyService.selectAllApplyBydId(user.getdId());
		}
		session.setAttribute("applies", applies);
		return "apply/applymanage";
	}
	/**
	 * 进入报销管理页面
	 * @return
	 */
	@RequestMapping("reimburseapplymanage")
	public String reimburseapplymanage(HttpServletRequest request) {
		List<Category_dispatch> category_dispatchs = applyService.getAllCategotyDispatch();
		request.setAttribute("category_dispatchs", category_dispatchs);
		
		return "apply/reimburseapplymanage";
	}
	/**
	 * 进入编辑页面
	 * @return
	 */
	@RequestMapping("applyedit")
	public String applyedit() {
		return "apply/applyedit";
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
		for (Apply apply : applies) {
			if(apply.getaId()==aId){
				request.setAttribute("APPLY", apply);
				return "apply/applyexamine";
			}
		}	
		return "apply/applyexamine";
	}
	
	
	
	
}
