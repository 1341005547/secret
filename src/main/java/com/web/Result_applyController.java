package com.web;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.common.DateUtil;
import com.entity.Apply;
import com.entity.Result_apply;
import com.service.ApplyService;
import com.service.Result_applyService;

@Controller
public class Result_applyController {
	@Autowired
	private Result_applyService result_applyService;
	@Autowired
	private ApplyService applyService;
	
	@RequestMapping("result_applyAdd")
	public String insert(Result_apply record){
		
		Apply apply = new Apply();
		apply.setaId(record.getaId());
		apply.setaState("已终止");
		
		applyService.updateByPrimaryKeySelective(apply);
		
		record.setrADealTime(DateUtil.doConvertToDate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date())));
		result_applyService.insert(record);
		
		return "redirect:applymanage";
		
	}
}
