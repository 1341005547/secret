package com.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ApplyController {
	
	/**
	 * 进入测试页面
	 */
	@RequestMapping("myapplytest")
	public String myapplytest(){
		return "apply/myapplytest";
	}
	
	/**
	 * 进入我的申请页面
	 * @return
	 */
	@RequestMapping("myapply")
	public String myapply(){
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
