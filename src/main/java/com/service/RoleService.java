package com.service;

import java.util.List;

import com.entity.Permission;
import com.entity.Role;
import com.entity.Role_permission;
import com.entity.User;
import com.entity.User_role;

/**
 * 角色业务层
 * @author Administrator
 *
 */
public interface RoleService {
    /**
     * 通过rid,获取角色
     * @param Rid
     * @return
     */
	   Role getRoles(Integer Rid);
	
		//通过rid，获取权限对象集合
		List<Permission > getPermissionList(Integer rId);
		//通过Uid，获取用户对象
		User getUser(Integer uId);
		//通过Uid，获取用户创建的角色对象集合
		List<Role> getCreateRolesList(Integer uId);
		//通过uid，获得所有(已经去重)权限对象集合
		List<Permission> getPerNameListByUid(Integer uId);
		//通过uid和r_name，获得角色对象
		Role getRoleByRnameUid(String rName,Integer uId);
		//通过uid，获得对应角色名jihe 
		List<String> getRoleNameListByUid(Integer uId);
		//通过uid，获得用户角色中间表
		List<User_role> getUserRoleByUid(Integer uId);
		
		//通过uid，获得该用户所在部门下的员工对象集合
		List<User> getUserListByUid(Integer uId);
		//通过uid，获得uid对应的角色
		List<Role> getRoleListByUid(Integer uId);
		
		//根据uid和创建人id得到role对象集合差集
		List<Role> getRoleListByUidCreate_uid(Integer uId,Integer createUid);
		
		//添加角色
		int addRole(Role role);
		//添加角色权限中间表
		int addRolePermission(Role_permission role_per);
		//添加用户角色中间表
		int addUserRole(User_role u_role);
		//按uid删除uid对应的所有用户角色关系
		int deleteUserRoleByUid(Integer uId);
		
		/*//按rid删除角色对象信息
		int deleteRoleByRid(Integer rId);
		//按rid删除角色权限信息
		int deleteRolePermissionByRid(Integer rId);*/
		//按rid删除角色相关信息（role,role_permission,user_role)
		int deleteRoleByRid(Integer rId);

}
