package com.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.entity.Apply;
import com.entity.Type_apply;
import com.entity.User;
import com.service.ApplyService;
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
	
}
