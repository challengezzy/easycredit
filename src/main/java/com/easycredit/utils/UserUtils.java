package com.easycredit.utils;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;

import com.easycredit.dao.pojo.UserInfo;
import com.easycredit.web.controller.manage.security.shiro.ShiroRealm;

public class UserUtils {

	public static int getCreateOprt() {
		Subject subject = SecurityUtils.getSubject();
		ShiroRealm.ShiroUser user = (ShiroRealm.ShiroUser) subject.getPrincipal();
		if (user == null) {
			throw new IllegalArgumentException("请重新登陆!");
		}
		return user.getId().intValue();
	}

	// 获取前台登录的用户Id
	public static int getUserId(HttpServletRequest request) {
		UserInfo userInfo = (UserInfo) request.getSession().getAttribute("UserInfo");
		if (userInfo != null) {
			return userInfo.getId();
		}
		return 0;
	}

}
