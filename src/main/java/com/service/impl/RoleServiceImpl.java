package com.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.PermissionMapper;
import com.dao.RoleMapper;
import com.dao.Role_permissionMapper;
import com.dao.UserMapper;
import com.dao.User_roleMapper;
import com.entity.Permission;
import com.entity.Role;
import com.entity.Role_permission;
import com.entity.User;
import com.entity.User_role;
import com.service.RoleService;
@Service
public class RoleServiceImpl implements RoleService {
    @Autowired
	private RoleMapper rMapper;
	@Autowired
	private Role_permissionMapper r_Per_Mapper;
	@Autowired
	private PermissionMapper per_Mapper;
	@Autowired
	private UserMapper user_Mapper;
	@Autowired
	private User_roleMapper u_r_Mapper;
	@Override
	public Role getRoles(Integer rId) {
		// TODO Auto-generated method stub
		return rMapper.selectByPrimaryKey(rId);
	}

	@Override
	// 通过rid，获取权限对象集合
	public List<Permission> getPermissionList(Integer Rid) {
		// TODO Auto-generated method stub
		List<Permission> per_list = new ArrayList<Permission>();
		List<Role_permission> r_per_list = r_Per_Mapper.sesectByRid(Rid);
		for (Role_permission i : r_per_list) {
			Integer per_id = i.getPermissionId();
			Permission permission = per_Mapper.selectByPrimaryKey(per_id);
			per_list.add(permission);
		}

		return per_list;
	}

	@Override
	// 通过Uid，获取用户对象
	public User getUser(Integer Uid) {
		// TODO Auto-generated method stub
		return user_Mapper.selectByPrimaryKey(Uid);
	}

	// 通过Uid，获取该用户创建的角色对象集合
	@Override
	public List<Role> getCreateRolesList(Integer Uid) {
		// TODO Auto-generated method stub

		List<Role> roleList = rMapper.selectCreateRoleListByUid(Uid);

		return roleList;
	}

	@Override
	public List<Permission> getPerNameListByUid(Integer uId) {
		// TODO Auto-generated method stub
		List<Integer> per_id_list = per_Mapper.selectPermissionByUid(uId);
		List<Permission> per_list = new ArrayList();
		for (Integer i : per_id_list) {
			Permission permission = per_Mapper.selectByPrimaryKey(i);
			per_list.add(permission);
		}

		return per_list;
	}

	// 添加角色
	@Override
	public int addRole(Role role) {
		// TODO Auto-generated method stub

		return rMapper.insert(role);
	}

	// 添加角色权限中间表
	@Override
	public int addRolePermission(Role_permission role_per) {
		// TODO Auto-generated method stub
		return r_Per_Mapper.insert(role_per);
	}

	@Override
	public Role getRoleByRnameUid(String rName, Integer uId) {
		// TODO Auto-generated method stub
		return rMapper.selectByRoleNameUid(rName, uId);
	}

	// 通过uid，获得该用户所在部门下的员工对象集合
	@Override
	public List<User> getUserListByUid(Integer uId) {
		// TODO Auto-generated method stub
		User user = user_Mapper.selectByPrimaryKey(uId);
		Integer dId = user.getdId();
		List<User> user_list = user_Mapper.selectByDept_id(dId);
		return user_list;
	}

	// 添加用户角色中间表
	@Override
	public int addUserRole(User_role u_role) {
		// TODO Auto-generated method stub

		return u_r_Mapper.insert(u_role);
	}

	// 通过uid，获得uid对应的角色集合
	@Override
	public List<Role> getRoleListByUid(Integer uId) {
		// TODO Auto-generated method stub
		List<Role> role_list = new ArrayList<Role>();
		List<User_role> u_r_list = u_r_Mapper.getUserRoles(uId);
		for (User_role i : u_r_list) {
			Integer rId = i.getrId();
			role_list.add(rMapper.selectByPrimaryKey(rId));
		}

		return role_list;
	}

	// 通过uid，获得对应角色名
	@Override
	public List<String> getRoleNameListByUid(Integer uId) {
		List<User_role> u_r_list = u_r_Mapper.getUserRoles(uId);
		List<String> r_name_list = new ArrayList<String>();
		for (User_role i : u_r_list) {
			Role role = rMapper.selectByPrimaryKey(i.getrId());
			r_name_list.add(role.getrName());
		}

		return r_name_list;
	}

	// 通过uid，获得用户角色中间表
	@Override
	public List<User_role> getUserRoleByUid(Integer uId) {

		return u_r_Mapper.getUserRoles(uId);
	}

	//根据uid和创建人id得到role对象集合差集
	@Override
	public List<Role> getRoleListByUidCreate_uid(Integer uId,Integer createUid){
		
		return rMapper.selectRoleListByUidCreate_uid( uId, createUid);
	}
	
	
	//按uid删除uid对应的所有用户角色关系
	@Override
	public int deleteUserRoleByUid(Integer uId){
		return u_r_Mapper.deleteUserRoleByUid(uId);
	}
	/*//按rid删除角色对象信息
	public int deleteRoleByRid(Integer rId){
		return rMapper.deleteByPrimaryKey(rId);
	}
	//按rid删除角色权限信息
	public int deleteRolePermissionByRid(Integer rId){
		return r_Per_Mapper.deleteRolePermissionByRid(rId);
	}*/
	//按rid删除角色相关信息（role,role_permission,user_role)
	public int deleteRoleByRid(Integer rId){
		rMapper.deleteByPrimaryKey(rId);
		r_Per_Mapper.deleteRolePermissionByRid(rId);
		u_r_Mapper.deleteUserRoleByRid(rId);
		return 1;
	}

}
