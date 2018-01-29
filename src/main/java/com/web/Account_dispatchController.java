package com.web;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.common.DateUtil;
import com.entity.Account_dispatch;
import com.entity.Apply;
import com.entity.User;
import com.service.Account_dispatchService;
import com.service.ApplyService;

@Controller
public class Account_dispatchController {
	@Autowired
	private Account_dispatchService account_dispatchService;
	@Autowired
	private ApplyService applyService;
	
	@RequestMapping("account_dispatchAdd")
	public String insert(Account_dispatch account_dispatch,String aEven){
		
		User user =(User) SecurityUtils.getSubject().getSession().getAttribute("User");
		
		Apply apply = new Apply();
		
		apply.setaSubmit(1);   //已经提交
		apply.setaState("已提交");
		apply.setaCreateTime(DateUtil.parseDateTime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date())));
		apply.setaEven(aEven);		//申请时间具体原因
		apply.setuId(user.getuId());
		apply.settId("3");
		applyService.insertSelective(apply);
		
		
		Apply applyMaxId = applyService.showMaxApplyId();
		
		
		account_dispatch.setaDTime(DateUtil.parseDateTime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date())));
		account_dispatch.setaId(applyMaxId.getMaxAId());
		account_dispatch.setuId(user.getuId());
		account_dispatchService.insert(account_dispatch);

		return "apply/applymanage";
	}
	@RequestMapping("accountdispathDealByaId/{applyaId}" )
	@ResponseBody
	public Map accountdispathDealByaId(@PathVariable Integer applyaId){
		Account_dispatch account_dispatch = account_dispatchService.accountdispathDealByaId(applyaId);
		Map map=new HashMap();
		map.put("account_dispatch", account_dispatch);
		return map;
		
	}
	
	
}
