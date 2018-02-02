package com.dao;

import java.util.List;

import com.entity.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer uId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer uId);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    /**
     * 通过邮箱查询用户
     */
    User getUserByUemal(String uEmail);
    
    //通过部门号，得到部门成员集合
    List<User> selectByDept_id(Integer dId);
    
    /**获得所有员工信息*/
    List<User> selectUser();
    
    /**根据联系方式获得用户信息*/
    User selectUserByPhone(String uPhone);
    
    /**根据用户id删除用户和登陆表*/
    int deleteUserAndLoginByUid(Integer uid);
}