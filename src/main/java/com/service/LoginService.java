package com.service;

import com.entity.Login;

/**
 * 用户登陆接口
 * @author Administrator
 *
 */
public interface LoginService {
   
	/**
	 * 用户登录
	 * 
	 */
	public Login login(String usercode);
	/**
	 * 根据用户id得到用户信息
	 * @param loginId
	 * @return
	 */
	public Login selectByPrimaryKey(Integer loginId);
}
