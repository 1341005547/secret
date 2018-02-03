package com.dao;

import java.util.List;

import com.entity.Permission;

public interface PermissionMapper {
    int deleteByPrimaryKey(Integer permissionId);

    int insert(Permission record);

    int insertSelective(Permission record);

    Permission selectByPrimaryKey(Integer permissionId);

    int updateByPrimaryKeySelective(Permission record);

    int updateByPrimaryKey(Permission record);
    
    //通过uid，获得所有(已经去重)权限id集合
    List<Integer> selectPermissionByUid(Integer uId);
}