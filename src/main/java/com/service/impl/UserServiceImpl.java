package com.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.UserMapper;
import com.entity.User;
import com.service.UserService;
@Service
public class UserServiceImpl implements UserService {
    
	@Autowired
	private UserMapper usermapper;//用户表dao接口
	
	/**
	 * 通过uid获取用户
	 */
	@Override
	public User getUserByUid(Integer uid) {
		// TODO Auto-generated method stub
		return usermapper.selectByPrimaryKey(uid);
	}

	@Override
	public User getUserByUemal(String uEmail) {
		// TODO Auto-generated method stub
		return usermapper.getUserByUemal(uEmail);
	}

	@Override
	public int insert(User record) {
		// TODO Auto-generated method stub
		return usermapper.insert(record);
	}

	@Override
	public int insertSelective(User record) {
		// TODO Auto-generated method stub
		return usermapper.insertSelective(record);
	}

	@Override
	public User selectByPrimaryKey(Integer uId) {
		// TODO Auto-generated method stub
		return usermapper.selectByPrimaryKey(uId);
	}
	
	@Override
	public int addUser(User user) {
		// TODO Auto-generated method stub
		return usermapper.insert(user);
	}

	@Override
	public User getUserByPhone(String uPhone) {
		// TODO Auto-generated method stub
		return usermapper.selectUserByPhone(uPhone);
	}

	@Override
	public int delUserByid(Integer uid) {
		// TODO Auto-generated method stub
		return usermapper.deleteByPrimaryKey(uid);
	}

	@Override
	public int delUserAndLoginByid(Integer uid) {
		// TODO Auto-generated method stub
		return usermapper.deleteUserAndLoginByUid(uid);
	}

	@Override
	public int updateUser(User user) {
		// TODO Auto-generated method stub
		return usermapper.updateByPrimaryKeySelective(user);
	}


}
