package com.easycredit.services.front.impl;

import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.easycredit.dao.mapper.UserInfoMapper;
import com.easycredit.dao.pojo.UserInfo;
import com.easycredit.dao.pojo.UserInfoExample;
import com.easycredit.dao.pojo.UserInfoExample.Criteria;
import com.easycredit.services.front.MemberService;
import com.simpleframe.util.ValidateUtil;

@Service
@Transactional
public class MemberServiceImpl implements MemberService {
	@Autowired
	private UserInfoMapper userInfoMapper;

	@Override
	public UserInfo getMemberByLoginName(String userName) {
		UserInfoExample example = new UserInfoExample();
		Criteria ca = example.createCriteria();
		ca.andUsertypeEqualTo(0);// 0:会员客户，1:系统用户，2:管理员
		if (StringUtils.isNotEmpty(userName)) {
			ca.andUsernameEqualTo(userName);
		}
		if (ValidateUtil.isMobile(userName)) {
			ca.andCellphoneEqualTo(userName);
		}
		List<UserInfo> userInfos = userInfoMapper.selectByExample(example);
		if (!userInfos.isEmpty()) {
			return userInfos.get(0);
		}
		return null;
	}

}
