package com.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.LoginMapper;
import com.entity.Login;
import com.service.LoginService;

/**
 * 用户登录接口实现
 * @author Administrator
 *
 */
@Service
public class LoginServiceImpl implements LoginService {
   
	/**
	 * 登录业务现实
	 */
	@Autowired
	private  LoginMapper mapper;
	
	@Override
	public Login login(String usercode) {
		// TODO Auto-generated method stub
		return mapper.selectByloginUsercode(usercode);
	}

	@Override
	public Login selectByPrimaryKey(Integer loginId) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(loginId);
	}

	
	@Override
	public int addLogin(Login login) {
		// TODO Auto-generated method stub
		return mapper.insert(login);
	}

	@Override
	public Login getLoginByUsercode(String usercode) {
		// TODO Auto-generated method stub
		return mapper.selectByloginUsercode(usercode);
	}

	@Override
	public int updateLoginByUid(Login login) {
		// TODO Auto-generated method stub
		return mapper.updateByPrimaryKeySelective(login);
	}
}
