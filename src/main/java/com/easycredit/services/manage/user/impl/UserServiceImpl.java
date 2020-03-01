package com.easycredit.services.manage.user.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.easycredit.dao.mapper.UserInfoExMapper;
import com.easycredit.dao.mapper.UserInfoMapper;
import com.easycredit.dao.pojo.UserInfo;
import com.easycredit.dao.pojo.UserInfoEx;
import com.easycredit.dao.pojo.UserInfoExample;
import com.easycredit.dao.pojo.UserInfoExample.Criteria;
import com.easycredit.services.manage.user.UserService;
import com.easycredit.utils.Page;

@Service("UserService")
public class UserServiceImpl implements UserService {
	@Autowired
	UserInfoMapper userInfoMapper;
	@Autowired
	UserInfoExMapper userInfoExMapper;

	public Page<UserInfoEx> query(UserInfoEx userInfo, Integer pageNo, Integer pageSize) {
		Map<String, Object> paramMap = new HashMap<String, Object>();

		paramMap.put("Query", userInfo);

		if (pageNo != null) {
			paramMap.put("pageNo", (pageNo - 1) * pageSize);
		}
		if (pageSize != null) {
			paramMap.put("pageSize", pageSize);
		}

		List<UserInfoEx> list = userInfoExMapper.queryUserinfo(paramMap);

		int totalCount = userInfoExMapper.queryUserinfoCount(paramMap);

		Page<UserInfoEx> page = new Page<UserInfoEx>();
		page.setResult(list);
		page.setPageNo(pageNo);
		page.setPageSize(pageSize);
		page.setTotalCount(totalCount);

		return page;
	}

	public UserInfo getUserByUserName(String userName) {
		UserInfoExample example = new UserInfoExample();
		example.setOrderByClause("id desc");
		Criteria ca = example.createCriteria();
		ca.andUsernameEqualTo(userName);

		List<UserInfo> userInfos = userInfoMapper.selectByExample(example);
		if (!userInfos.isEmpty()) {
			return userInfos.get(0);
		}
		return null;
	}

	public int insert(UserInfo record) {
		return userInfoMapper.insert(record);
	}

	public int updateByPrimaryKey(UserInfo record) {
		return userInfoMapper.updateByPrimaryKey(record);
	}

	public UserInfo selectByPrimaryKey(Integer id) {
		return userInfoMapper.selectByPrimaryKey(id);
	}

	public int deleteByPrimaryKey(Integer id) {
		return userInfoMapper.deleteByPrimaryKey(id);
	}

}
