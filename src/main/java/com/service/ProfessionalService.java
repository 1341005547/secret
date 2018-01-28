package com.service;

import java.util.List;

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
	/**
     * 通过uId查找职位
     * @param uId
     * @return
     */
    Professional getProfessionalByUId(Integer uId);
    /**
     * 查询所有
     * @return
     */
    List<Professional> getAllPro();
}
