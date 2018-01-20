package com.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Type_apply;
import com.service.ApplyService;

@Controller
public class ApplyController {
	@Autowired
	private ApplyService applyService;
	
	
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
	public String applymanage() {
		return "apply/applymanage";
	}
	/**
	 * 进入报销管理页面
	 * @return
	 */
	@RequestMapping("reimburseapplymanage")
	public String reimburseapplymanage() {
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
	public String applyexamine() {
		return "apply/applyexamine";
	}
	
	
	
	
}
