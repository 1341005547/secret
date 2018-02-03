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
	
	/**添加Login信息*/
	public int addLogin(Login login);
	/**根据用户编码获得登陆信息*/
	public Login getLoginByUsercode(String usercode);
	/**根据用户Id修改login表信息*/
	public int updateLoginByUid(Login login);
}
