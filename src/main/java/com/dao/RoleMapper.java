package com.dao;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.Role;

public interface RoleMapper {
    int deleteByPrimaryKey(Integer rId);

    int insert(Role record);

    int insertSelective(Role record);

    Role selectByPrimaryKey(Integer rId);

    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKey(Role record);
    
    Role selectByRoleNameUid(@Param("rName")String rName,@Param("rUser")Integer rUser);
 
    List<Role> selectCreateRoleListByUid(Integer uId);
    
    //根据uid和创建人id得到role对象差集集合
    List<Role> selectRoleListByUidCreate_uid(@Param("uId")Integer uId,@Param("rUser")Integer rUser);
    
    
}