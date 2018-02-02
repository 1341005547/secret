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

}
