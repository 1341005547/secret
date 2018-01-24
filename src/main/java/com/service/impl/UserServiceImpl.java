package com.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.UserMapper;
import com.entity.User;
import com.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	
	@Autowired
	private UserMapper usermapper;
	
	
	@Override
	public User selectByPrimaryKey(Integer uId) {
		// TODO Auto-generated method stub
		return usermapper.selectByPrimaryKey(uId);
	}

}
