package com.dao;

import java.util.List;

import com.entity.User_role;

public interface User_roleMapper {
    int deleteByPrimaryKey(Integer uRId);

    int insert(User_role record);

    int insertSelective(User_role record);

    User_role selectByPrimaryKey(Integer uRId);

    int updateByPrimaryKeySelective(User_role record);

    int updateByPrimaryKey(User_role record);
    /**
     * 通过用户id 获取角色
     */
    List<User_role> getUserRoles(Integer uId);
    //按uid删除uid对应的所有用户角色关系
    int deleteUserRoleByUid(Integer uId);
    //按rid删除用户角色关系
    int deleteUserRoleByRid(Integer rId);
 
}