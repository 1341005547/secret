package com.service;

import com.entity.User;

/**
 * 用户表
 * @author Administrator
 *
 */
public interface UserService {

	/**
	 * 通过uid获取用户
	 */
	public User getUserByUid(Integer uid);
	/**
	 * 通过邮箱查询用户
	 * 
	 */
	public User getUserByUemal(String uEmail);
	/**
	 * 通过对象添加
	 * @param record
	 * @return
	 */
	int insert(User record);
    /**
     * 添加
     * @param record
     * @return
     */
    int insertSelective(User record);
    User selectByPrimaryKey(Integer uId);
	/**添加用户*/
	public int addUser(User user);
	/**根据手机号获得用户信息*/
	public User getUserByPhone(String uPhone);
	/**根据选中的用户id删除用户信息*/
	public int delUserByid(Integer uid);
	/**根据用户id删除用户和登陆信息表*/
	public int delUserAndLoginByid(Integer uid);
	/**根据用户更新用户信息*/
	public int updateUser(User user);
}
