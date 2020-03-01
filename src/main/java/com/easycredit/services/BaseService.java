package com.easycredit.services;

public interface BaseService {
	public static final String FUNCTION_RE_LIST = "redirect:/security/function/query.html";
	public static final String function_LIST = "/security/function/function_list";
	public static final String function_VIEW = "/security/function/function_view";

	public static final String module_RE_LIST = "redirect:/security/module/query.html";
	public static final String module_LIST = "/security/module/module_list";
	public static final String module_VIEW = "/security/module/module_view";

	public static final String role_RE_LIST = "redirect:/security/role/query.html";
	public static final String role_LIST = "/security/role/role_list";
	public static final String role_VIEW = "/security/role/role_create";
	public static final String role_UPDATE = "/security/role/role_update";

	public static final String USER_RE_LIST = "redirect:/manage/security/user/query.html";
	public static final String USER_LIST = "/security/user/user_list";
	public static final String USER_CREATE = "/security/user/user_handle";
	public static final String USER_MYINFO = "/security/user/user_myInfo";

	public static final String ORGANIZATION_RE_LIST = "redirect:/manage/security/organization/query.html";
	public static final String ORGANIZATION_LIST = "/security/organization/organization_list";
	public static final String ORGANIZATION_CREATE = "/security/organization/user_create";

}
