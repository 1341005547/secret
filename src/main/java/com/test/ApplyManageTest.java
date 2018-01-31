package com.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.entity.Account_dispatch;
import com.service.Account_dispatchService;

@RunWith(SpringRunner.class)
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class ApplyManageTest {
	@Autowired
	private Account_dispatchService account_dispatchMapper;
	
	@Test
	public void test1(){
		List<Account_dispatch> applies = account_dispatchMapper.accountdispathDealByuId(5);
		for (Account_dispatch account_dispatch : applies) {
			System.out.println(account_dispatch.getaId());
		}
	}
	
	

}
