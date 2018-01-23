package com.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.dao.UserMapper;

@Controller
public class UserController {
	@Autowired
	private UserMapper userMapper;
	
	

}
