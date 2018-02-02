package com.service;

import com.entity.Professional;

/**
 * 职位表
 * @author Administrator
 *
 */
public interface ProfessionalService {
   
	/**
	 * 通过职位id获取职位表
	 */
	public Professional getProfessionalById(Integer pid);
}
