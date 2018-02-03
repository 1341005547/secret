package com.dao;


import java.util.List;
import com.entity.Dept;

public interface DeptMapper {
    int deleteByPrimaryKey(Integer dId);

    int insert(Dept record);

    int insertSelective(Dept record);

    Dept selectByPrimaryKey(Integer dId);

    int updateByPrimaryKeySelective(Dept record);

    int updateByPrimaryKey(Dept record);
	/**
	 * 通过用户id查找部门
	 * @param uId
	 * @return
	 */
	Dept getDeptPrimaryKey(Integer uId);
	/**
	 * 查询所有部门
	 */
	List<Dept> getAllDept();
	
	List<Dept> selectList();
}