package com.dao;

import java.util.List;

import com.entity.Professional;

public interface ProfessionalMapper {
    int deleteByPrimaryKey(Integer professionalId);

    int insert(Professional record);

    int insertSelective(Professional record);

    Professional selectByPrimaryKey(Integer professionalId);

    int updateByPrimaryKeySelective(Professional record);

    int updateByPrimaryKey(Professional record);
    
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