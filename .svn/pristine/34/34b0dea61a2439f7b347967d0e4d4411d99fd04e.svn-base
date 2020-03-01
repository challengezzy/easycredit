package com.easycredit.services.manage.user.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.easycredit.dao.mapper.OrganizationAuthorityExMapper;
import com.easycredit.dao.mapper.OrganizationAuthorityMapper;
import com.easycredit.dao.pojo.OrganizationAuthority;
import com.easycredit.dao.pojo.OrganizationAuthorityEx;
import com.easycredit.services.manage.user.OrganizationAuthorityService;

@Service("OrganizationAuthorityService")
public class OrganizationAuthorityServiceImpl implements OrganizationAuthorityService {
	@Autowired
	OrganizationAuthorityExMapper organizationAuthorityExMapper;
	@Autowired
	OrganizationAuthorityMapper organizationAuthorityMapper;

	@Override
	public List<OrganizationAuthorityEx> getOrganizationAuthorityList(OrganizationAuthorityEx record) {
		return organizationAuthorityExMapper.getOrganizationAuthorityList(record);
	}

	@Override
	public List<OrganizationAuthority> getAuthorityByOrganizationId(Integer oid) {
		return organizationAuthorityExMapper.getAuthorityByOrganizationId(oid);
	}

	@Override
	public int insertOrganizationAuthority(OrganizationAuthority record) {
		return organizationAuthorityMapper.insertSelective(record);
	}

	@Override
	public int delByOrganizationId(Integer organizationId) {
		return organizationAuthorityExMapper.delByOrganizationId(organizationId);
	}

}
