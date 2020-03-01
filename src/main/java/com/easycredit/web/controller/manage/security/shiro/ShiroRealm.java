package com.easycredit.web.controller.manage.security.shiro;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.commons.lang.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.cache.Cache;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.SimplePrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.easycredit.dao.mapper.OrganizationAuthorityMapper;
import com.easycredit.dao.mapper.OrganizationMapper;
import com.easycredit.dao.mapper.UserInfoMapper;
import com.easycredit.dao.pojo.Organization;
import com.easycredit.dao.pojo.OrganizationAuthority;
import com.easycredit.dao.pojo.OrganizationAuthorityExample;
import com.easycredit.dao.pojo.UserInfo;
import com.easycredit.dao.pojo.UserInfoExample;

@Component
public class ShiroRealm extends AuthorizingRealm {
	@Autowired
	private UserInfoMapper userInfoMapper;
	@Autowired
	private OrganizationMapper organizationMapper;
	@Autowired
	private OrganizationAuthorityMapper organizationAuthorityMapper;

	/**
	 * 给ShiroDbRealm提供编码信息，用于密码密码比对 描述
	 */
	public ShiroRealm() {
		super();
	}

	/**
	 * 认证回调函数, 登录时调用.
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authcToken) throws AuthenticationException {
		UsernamePasswordToken token = (UsernamePasswordToken) authcToken;

		UserInfoExample example = new UserInfoExample();

		List<Integer> list = new ArrayList<Integer>();
		list.add(1);
		list.add(2);
		example.createCriteria().andUsernameEqualTo(token.getUsername()).andUsertypeIn(list);

		List<UserInfo> userInfo = userInfoMapper.selectByExample(example);

		if (userInfo == null || userInfo.size() < 1) {
			throw new UserNotExistException("用户无登陆权限！");
		}
		if (!StringUtils.equals(userInfo.get(0).getPassword(), String.valueOf(token.getPassword()))) {
			throw new UserNotExistException("用户账号/密码错误!");
		}

		// 把用户信息放在session里
		Session session = SecurityUtils.getSubject().getSession();
		session.setAttribute("sessionUser", userInfo.get(0));

		ShiroUser shiroUser = new ShiroUser(userInfo.get(0).getId(), userInfo.get(0).getUsername(), userInfo.get(0));
		return new SimpleAuthenticationInfo(shiroUser, token.getPassword(), getName());
	}

	/**
	 * 授权查询回调函数, 进行鉴权但缓存中无用户的授权信息时调用.
	 */
	@SuppressWarnings("null")
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		ShiroUser shiroUser = (ShiroUser) principals.fromRealm(getName()).iterator().next();

		UserInfoExample example = new UserInfoExample();
		example.createCriteria().andUsernameEqualTo(shiroUser.getLoginName());

		List<UserInfo> userInfo = userInfoMapper.selectByExample(example);
		if (userInfo != null || userInfo.size() > 0) {
			int organizationid = userInfo.get(0).getOrganizationid();
			Organization organization = organizationMapper.selectByPrimaryKey(organizationid);

			int organizationId = organization.getId();

			OrganizationAuthorityExample example2 = new OrganizationAuthorityExample();
			example2.createCriteria().andOrganizationidEqualTo(organizationId);

			List<OrganizationAuthority> organizationAuthoritys = organizationAuthorityMapper.selectByExample(example2);

			SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();

			Set<String> permissionList = new HashSet<String>();
			for (OrganizationAuthority organizationAuthority : organizationAuthoritys) {
				permissionList.add(organizationAuthority.getAuthoritytypeflag().toString());
			}

			info.addStringPermissions(permissionList);

			return info;
		}
		return null;
	}

	/**
	 * 更新用户授权信息缓存.
	 */
	public void clearCachedAuthorizationInfo(String principal) {
		SimplePrincipalCollection principals = new SimplePrincipalCollection(principal, getName());
		clearCachedAuthorizationInfo(principals);
	}

	/**
	 * 清除所有用户授权信息缓存.
	 */
	public void clearAllCachedAuthorizationInfo() {
		Cache<Object, AuthorizationInfo> cache = getAuthorizationCache();
		if (cache != null) {
			for (Object key : cache.keys()) {
				cache.remove(key);
			}
		}
	}

	/**
	 * 自定义Authentication对象，使得Subject除了携带用户的登录名外还可以携带更多信息.
	 */
	public static class ShiroUser implements Serializable {
		private static final long serialVersionUID = -1748602382963711884L;
		private Integer id;
		private String loginName;
		private UserInfo user;

		public ShiroUser() {

		}

		/**
		 * 构造函数
		 * 
		 * @param id
		 * @param loginName
		 * @param email
		 * @param createTime
		 * @param status
		 */
		public ShiroUser(Integer id, String loginName, UserInfo user) {
			this.id = id;
			this.loginName = loginName;
			this.user = user;
		}

		/**
		 * 返回 id 的值
		 * 
		 * @return id
		 */
		public Integer getId() {
			return id;
		}

		/**
		 * 返回 loginName 的值
		 * 
		 * @return loginName
		 */
		public String getLoginName() {
			return loginName;
		}

		/**
		 * 返回 user 的值
		 * 
		 * @return user
		 */
		public UserInfo getUser() {
			return user;
		}

		/**
		 * 本函数输出将作为默认的<shiro:principal/>输出.
		 */
		@Override
		public String toString() {
			return loginName;
		}
	}
}
