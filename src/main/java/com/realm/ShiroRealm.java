package com.realm;

import java.util.ArrayList;
import java.util.List;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.Dept;
import com.entity.Login;
import com.entity.Permission;
import com.entity.Professional;
import com.entity.Role;
import com.entity.User;
import com.entity.User_role;
import com.service.DeptService;
import com.service.LoginService;
import com.service.ProfessionalService;
import com.service.RoleService;
import com.service.UserService;
import com.service.User_roleService;

/**
 * shiro realm 认证授权
 * @author Administrator
 *
 */
public class ShiroRealm extends AuthorizingRealm {
	//使用类型注解匹配调取业务接口
    @Autowired
	private LoginService ls;//用户登陆表
    @Autowired
    private User_roleService urs;//用户角色中间表
    @Autowired
	private RoleService roleService;//角色表
    @Autowired
    private UserService us;//用户表
    @Autowired
    private DeptService ds;//部门表
    @Autowired
    private ProfessionalService ps;//职位表
    
    
	//授权
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		// TODO Auto-generated method stub
		SimpleAuthorizationInfo info=new SimpleAuthorizationInfo();
		String usercode= (String) principals.getPrimaryPrincipal();
		Login login=ls.login(usercode);
		Integer uid= login.getuId();
		//System.out.println(uid);
		List<String> per_name_list =new ArrayList<String>();
		
		List<Permission> per_list = roleService.getPerNameListByUid(uid);
		/*for (User_role user_role : userRoles) {
			Role role= rs.getRoles(user_role.getrId());
			System.out.println(role.getrName());
			roles.add(role.getrName());
		}*/
	    /*Session session=SecurityUtils.getSubject().getSession();
		session.setAttribute("roles", roles);*/
		//SimpleAuthorizationInfo info=new SimpleAuthorizationInfo();
		for (Permission i : per_list) {
			per_name_list.add(i.getPermissionName());
		}
		info.addStringPermissions(per_name_list);
		return info;
	}
    
	//登陆 认证
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		// TODO Auto-generated method stub
		UsernamePasswordToken utoken=(UsernamePasswordToken) token;
		String usercode=utoken.getUsername();
	    Session session=SecurityUtils.getSubject().getSession();
		
		Login login=ls.login(usercode);
		if(login==null){
			throw new NullPointerException("账户或密码不正确，请重试");
		}
		session.setAttribute("usercode", usercode);
		User user=us.getUserByUid(login.getuId());
		session.setAttribute("user", user);//用户存到session中
		Dept dept=ds.getDeptById(user.getdId());
		session.setAttribute("dept", dept);
		Professional professional=ps.getProfessionalById(user.getProfessionalId());
		session.setAttribute("professional", professional);
		ByteSource salt=ByteSource.Util.bytes(usercode);//加密盐
		//使用实现 方法创建对象，构造方法参数使用（用户名、密码、加密盐、当前方法名）
		AuthenticationInfo authenticationInfo =new SimpleAuthenticationInfo(usercode,login.getLoginPassword(),salt,this.getName()); 
		return authenticationInfo;
	}

}
