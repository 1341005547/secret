package com.web;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.common.Constants;
import com.dao.Account_dispatchMapper;
import com.entity.Account_dispatch;
import com.entity.Apply;
import com.entity.Category_dispatch;
import com.entity.Professional;
import com.entity.User;
import com.service.ApplyService;
import com.service.UserService;

@Controller
public class ApplyController {
	@Autowired
	private ApplyService applyService;
	@Autowired
	private UserService userService;
	@Autowired
	private Account_dispatchMapper account_dispatchMapper;
	
	

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
