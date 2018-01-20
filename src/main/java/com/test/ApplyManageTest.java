package com.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.entity.Type_apply;
import com.service.ApplyService;


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
	
	@Test
	public void test(){
		List<Type_apply> list = applyService.getAllApplyType();
		for (Type_apply type_apply : list) {
			System.out.println(type_apply.gettName()+"---->"+type_apply.gettId());
		}
		
	}
	
}
