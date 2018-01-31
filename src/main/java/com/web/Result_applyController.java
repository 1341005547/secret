package com.web;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.common.Constants;
import com.common.DateUtil;
import com.entity.Apply;
import com.entity.Process;
import com.entity.Result_apply;
import com.entity.User;
import com.service.ApplyService;
import com.service.ProcessService;
import com.service.Result_applyService;

@Controller
public class Result_applyController {
	@Autowired
	private Result_applyService result_applyService;
	@Autowired
	private ApplyService applyService;
	@Autowired
	private ProcessService processService;
	
	@RequestMapping("result_applyAdd")
	public String insert(Result_apply record,Double aDPrice,
			String applytype,String applydName,String applydisdName,Integer processId ){	
		
		User user =(User) SecurityUtils.getSubject().getSession().getAttribute("user");
		Apply apply = new Apply();
		Process process = new Process();
		if(user.getProfessionalName().equals(Constants.POSITION_SM) | 
				user.getProfessionalName().equals(Constants.POSITION_RDM) |
				user.getProfessionalName().equals(Constants.POSITION_PM)){
			
		
			
			apply.setaId(record.getaId());
			apply.setaState("已审批"); //申请表的状态
			
			
			if(applytype.equals("调度")){
				if(applydName.equals(applydisdName)){
					apply.setaState("已审批"); //申请表的状态
				}else {
					apply.setaState("待审批");  //申请表的状态
					process.setProcessDealUId(record.getrADealUser());   //哪位经理处理的
					process.setProcessNextUId(5);	  //下一个处理人 5 总经理 
					process.setaId(record.getaId());	// 申请单id	
					process.setProcessState("待审批");	// 流程状态
					processService.insertSelective(process);
			
				}
	
				
			}
			
			if(aDPrice != null && aDPrice != 0){
				if(aDPrice>300){	
					apply.setaState("待审批");  //申请表的状态
					process.setProcessDealUId(record.getrADealUser());   //哪位经理处理的
					process.setProcessNextUId(5);	  //下一个处理人 5 总经理 
					process.setaId(record.getaId());	// 申请单id	
					process.setProcessState("待审批");	// 流程状态
					processService.insertSelective(process);
				
				} else {
					apply.setaState("已审批"); //申请表的状态
				}
				
				
			}
			
			
			
		}else if (user.getProfessionalName().equals(Constants.POSITION_GM)) {
			
			apply.setaId(record.getaId());
			apply.setaState("已审批");  //申请表的状态
			
			if(applytype.equals("调度")){
				if(!applydName.equals(applydisdName)){
					/**
					 * 流程
					 */
					
					process.setProcessId(processId); //流程表id
					process.setProcessNextUId(null);	  //下一个处理人 5 总经理 
					process.setaId(record.getaId());	// 申请单id	
					process.setProcessState("已审批");	// 流程状态
					processService.updateByPrimaryKeySelective(process);
				
			}
				
				if(aDPrice != null && aDPrice != 0){
						/**
						 * 流程
						 */
						
						process.setProcessId(processId); //流程表id
						process.setProcessNextUId(null);	  //下一个处理人 5 总经理 
						process.setaId(record.getaId());	// 申请单id	
						process.setProcessState("已审批");	// 流程状态
						processService.updateByPrimaryKeySelective(process);
						
				}
			
		}
		
}
		
		if(apply.getaId()!=null){
			applyService.updateByPrimaryKeySelective(apply);
		}	
		record.setrADealTime(DateUtil.doConvertToDate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date())));
		result_applyService.insert(record);	
		return "redirect:applymanage";	
	}
	
	@RequestMapping("result_applydelete")
	public String delete(Integer aaa){
		Apply apply = new Apply();
		apply.setaId(aaa);
		apply.setaState("已终止");	
		applyService.updateByPrimaryKeySelective(apply);
		return "redirect:applymanage";
		
	}
	
}
