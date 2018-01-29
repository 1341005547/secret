package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.Account_dispatchMapper;
import com.entity.Account_dispatch;
import com.service.Account_dispatchService;

@Service
public class Account_dispatchServiceImpl implements Account_dispatchService{
     @Autowired
	private Account_dispatchMapper account_dispatchMapper;
	@Override
	public int insert(Account_dispatch record) {
		// TODO Auto-generated method stub
		return account_dispatchMapper.insertSelective(record);
	}
	@Override
	public List<Account_dispatch> accountdispathDealByuId(Integer uId) {
		// TODO Auto-generated method stub
		return account_dispatchMapper.accountdispathDealByuId(uId);
	}
	@Override
	public Account_dispatch accountdispathDealByaId(Integer applyaId) {
		// TODO Auto-generated method stub
		return account_dispatchMapper.accountdispathDealByaId(applyaId);
	}

}
