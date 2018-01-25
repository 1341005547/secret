package com.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.entity.Apply;
import com.entity.Dept;
import com.service.DeptService;
import com.service.MyApplyService;



/**
 * 测试类
 * @author 刘林春
 * create time:2018/1/22
 */
@RunWith(SpringJUnit4ClassRunner.class)
//指定SpringBoot工程的Application启动类
//支持web项目
@WebAppConfiguration
@SpringBootTest(classes = SpringBootDemo.class, webEnvironment = SpringBootTest.WebEnvironment.MOCK)
public class Text {
	
	@Autowired
	private MyApplyService applyservice;
	@Autowired
	private DeptService deptservice;
	
	@Test
	public void test() {
		Apply apply=applyservice.getApplyId(1);
		System.out.println(apply.getaEven());
		List<Apply> aList=applyservice.listGetASubmit(1);
		for (Apply apply2 : aList) {
			System.out.println(apply2.gettId()+"\t"+apply2.getaEven()+"\t"+apply2.getaSubmit());
		}
	}
	
	@Test
	public void test1() {
		List<Apply> list=applyservice.listGetASubmit(1);
		
		for (Apply apply : list) {
			System.out.println(apply.getaEven()+"\t"+apply.getaState()+"\t"+apply.getuId());
		}
		
	}

	
	@Test
	public void test2() {
		Dept dept=deptservice.getDeptPrimaryKey(1);
		System.out.println(dept.getdName()+"\t"+dept.getdId());
	}
}
