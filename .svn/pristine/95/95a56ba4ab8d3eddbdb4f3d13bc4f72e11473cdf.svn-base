package com.easycredit.services.manage.user;

import com.easycredit.dao.pojo.UserInfo;
import com.easycredit.dao.pojo.UserInfoEx;
import com.easycredit.utils.Page;

public interface UserService {

	Page<UserInfoEx> query(UserInfoEx userInfoEx, Integer pageNo, Integer pageSize);

	int insert(UserInfo userInfo);

	int updateByPrimaryKey(UserInfo userInfo);

	int deleteByPrimaryKey(Integer id);

	UserInfo getUserByUserName(String userName);

	UserInfo selectByPrimaryKey(Integer id);

}
