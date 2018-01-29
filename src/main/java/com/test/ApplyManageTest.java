package com.test;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.common.DateUtil;
import com.entity.Account_dispatch;
import com.entity.Apply;
import com.entity.Process;
import com.entity.Type_apply;
import com.entity.User;
import com.service.Account_dispatchService;
import com.service.ApplyService;
import com.service.ProcessService;
import com.service.UserService;


/**
 * 
 * @author 霍云平
 *
 * 创建时间：2018年1月19日
 */
@RunWith(SpringRunner.class)
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class ApplyManageTest {
	
	@Autowired
	private ApplyService applyService;
	@Autowired
	private UserService userService;
	@Autowired
	private Account_dispatchService account_dispatchService;
	@Autowired
	private ProcessService processService;
	
	@Test
	public void test(){
		List<Type_apply> list = applyService.getAllApplyType();
		for (Type_apply type_apply : list) {
			System.out.println(type_apply.gettName()+"---->"+type_apply.gettId());
		}	
	}
	@Test
	public void test2(){
		List<Apply> applies = applyService.selectAllApplyBydId(2);
		for (Apply apply : applies) {
			System.out.println(apply.getaEven());
		}
	}
	@Test
	public void Test3(){
		User record = new User();
		record.setdId(1);
		record.setProfessionalId(1);
		record.setuImg("/img/2.jpg");
		record.setuSex("女");
		record.setuName("郑爽");
		record.setuPhone("13562324578");
		record.setuState("在职");
		if(userService.insert(record)>0){
			System.out.println("保存成功");
		}
	}
	@Test
	public void Test4(){
		List<Apply> applies = applyService.selectApplyGMDeal();
		for (Apply apply : applies) {
			System.out.println(apply.getaEven());
		}
			
	}
	@Test
	public void Test5(){
		Apply apply = new Apply();
		
		apply.setaSubmit(1);   //已经提交
		apply.setaState("qqqqq");
		apply.setaCreateTime(DateUtil.parseDateTime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date())));
		apply.setaEven("qqqqq");		//申请时间具体原因
		apply.setuId(5);
		apply.settId("3");
		System.out.println(applyService.insertSelective(apply));
		
	}
	
	@Test
	public void Test7(){
		System.out.println(applyService.showMaxApplyId().getMaxAId());
	}
	
	@Test
	public void Test9(){
		Process process = new Process();
		process.setaId(100);
		process.setProcessDealUId(100);
		process.setProcessNextUId(100);
		process.setProcessState("积分噶时间的李开复");
		System.out.println(processService.insertSelective(process));
		
	}
	
	@Test
	public void Test6(){
		Account_dispatch account_dispatch = new Account_dispatch();

		account_dispatch.setaDExplain("看了看");
		account_dispatch.setaDPrice(20.0);
		account_dispatch.setuId(5);
	    System.out.println(account_dispatch.getaDExplain());
		account_dispatchService.insert(account_dispatch);	
		
	}
	@Test
	public void Test8(){
			Account_dispatch list = account_dispatchService.accountdispathDealByaId(23);
					
						System.out.println(list.getuName());			
	
	}
	
}
