package com.service;

import com.entity.Staff_Info;

public interface Staff_InfoService {
	
	/**获得用户详情*/
	public Staff_Info getStaff_InfoById(Integer uid);

}
