package com.service;

import com.entity.User;

public interface UserService {
	User selectByPrimaryKey(Integer uId);
	
	int insert(User record);

    int insertSelective(User record);
}
