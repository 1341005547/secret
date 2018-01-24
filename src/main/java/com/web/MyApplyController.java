package com.web;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.assertj.core.error.ShouldBeInSameMinute;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.entity.Apply;
import com.entity.Login;
import com.entity.Type_apply;
import com.service.MyApplyService;
import com.service.Type_applyService;

/**
 * 我的申请页面
 * 
 * @author
 * 
 */
@Controller
public class MyApplyController {

	@Autowired
	private MyApplyService myApplyService;

	@Autowired
	private Type_applyService type_applyservice;

	/**
	 * 进入提交页面,添加
	 * 
	 * @param record
	 * @return
	 */
	@RequestMapping(value = "submitOrSava")
	public String submitOrSava(Apply record, Integer select, String apply,Integer id) {
		System.out.println("aaaaaaaa");
		
		Map<String, Object> map = new HashMap<String, Object>();
		record.setuId(id);
		record.setaCreateTime(new Date());
		record.settId(Integer.valueOf(select));
		record.setaEven(apply);
		record.setaState("未审核");
		record.setaSubmit(1);
		
		System.out.println("=====" + record.getaEven()+"\t"+select);
		boolean flag = false;
		try {
			flag = myApplyService.insertSelective(record);
		} catch (Exception e) {
			if (flag = true) {
				map.put("error", "成功！");
			} else {
				map.put("error", "失败！");
			}
		}
		return "redirect:applymanage";
	}

	/**
	 * 保存草稿箱,保存
	 * 
	 * @param record
	 * @return
	 */
	@RequestMapping("savaOrsubmit")
	public String savaOrsubmit(Apply record, Integer select, String apply,Integer id) {
		System.out.println("bbbbbbbbbbbb");
		Map<String, Object> map = new HashMap<String, Object>();
		record.setuId(id);
		record.setaCreateTime(new Date());
		record.settId(Integer.valueOf(select));
		record.setaEven(apply);
		record.setaState("未提交");
		record.setaSubmit(0);
		
		System.out.println("=====" + record.getaEven()+"\t"+select);
		boolean flag = false;
		try {
			flag = myApplyService.insertSelective(record);
		} catch (Exception e) {
			if (flag = true) {
				map.put("error", "成功！");
			} else {
				map.put("error", "失败！");
			}
		}
		return "redirect:myapply";
	}
	
	
	/**
	 * 进入编辑页面，完成后保存进草稿箱
	 * 
	 * @param record
	 * @return
	 */
	@RequestMapping("savaOrsubmit1")
	public String savaOrsubmit1(Apply record, Integer select, String apply,Integer id) {
		System.out.println("bbbbbbbbbbbb");
		Map<String, Object> map = new HashMap<String, Object>();
		record.setuId(id);
		record.setaCreateTime(new Date());
		record.settId(Integer.valueOf(select));
		record.setaEven(apply);
		record.setaState("未提交");
		record.setaSubmit(0);
		
		System.out.println("=====" + record.getaEven()+"\t"+select);
		int x=0;
		try {
			x= myApplyService.updateByPrimaryKeySelective(record);
		} catch (Exception e) {
			if (x>0) {
				map.put("error", "成功！");
			} else {
				map.put("error", "失败！");
			}
		}
		return "redirect:myapply";
	}
	

	/**
	 * 提交操作，从草稿箱到审核列表
	 * @param record
	 * @param map
	 * @return
	 */
	@RequestMapping("toSubmit")
	public String submit(Apply record,Integer aId) {
			
			myApplyService.updateSaveToSubmit(aId);
		
		return "redirect:applymanage";
	}

	/**
	 * 删除操作，从草稿箱删除
	 * @param record
	 * @param map
	 * @return
	 */
	@RequestMapping("toDelete")
	public String delete(Integer aId) {
		
			myApplyService.deleteByPrimaryKey(aId);
		
		return "redirect:myapply";
	}
	
	/**
	 * 去编辑
	 * @param record
	 * @param map
	 * @return
	 */
	@RequestMapping("toSave")
	public String save(Model model,Integer aId) {
		
			List<Type_apply> list2 = type_applyservice.listAll();
			model.addAttribute("list2", list2);
			Apply apply = myApplyService.getUName(aId);
			model.addAttribute("apply", apply);
		
		return "apply/applyedit";
	}
	
	
	/**
	 * 进入测试页面
	 */
	@RequestMapping("myapplytest")
	public String myapplytest() {
		return "apply/myapplytest";
	}

	/**
	 * 进入我的申请页面
	 * 
	 * @return
	 */
	@RequestMapping("myapply")
	public String myapply(Model model) {
		List<Apply> list = myApplyService.listGetASubmit();
		model.addAttribute("list", list);
		List<Type_apply> list2 = type_applyservice.listAll();
		model.addAttribute("list2", list2);
		return "apply/myapply";
	}

	/**
	 * 进入申请管理页面
	 * 
	 * @return
	 */
	@RequestMapping("applymanage")
	public String applymanage() {
		return "apply/applymanage";
	}

	/**
	 * 进入报销管理页面
	 * 
	 * @return
	 */
	@RequestMapping("reimburseapplymanage")
	public String reimburseapplymanage() {
		return "apply/reimburseapplymanage";
	}

	/**
	 * 进入编辑页面
	 * 
	 * @return
	 */
	@RequestMapping("applyedit")
	public String applyedit() {
		return "apply/applyedit";
	}

	/**
	 * 进入申请详情页面
	 * 
	 * @return
	 */
	@RequestMapping("applyexamine")
	public String applyexamine() {
		return "apply/applyexamine";
	}
}
