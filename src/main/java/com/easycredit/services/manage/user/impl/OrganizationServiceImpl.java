package com.easycredit.services.manage.user.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.easycredit.dao.mapper.OrganizationExMapper;
import com.easycredit.dao.mapper.OrganizationMapper;
import com.easycredit.dao.pojo.Organization;
import com.easycredit.dao.pojo.OrganizationEx;
import com.easycredit.dao.pojo.OrganizationExample;
import com.easycredit.services.manage.user.OrganizationService;
import com.easycredit.utils.Page;

@Service("OrganizationService")
public class OrganizationServiceImpl implements OrganizationService {
	@Autowired
	OrganizationMapper organizationMapper;
	@Autowired
	OrganizationExMapper organizationExMapper;

	public Page<OrganizationEx> query(OrganizationEx organization, Integer pageNo, Integer pageSize) {

		Map<String, Object> paramMap = new HashMap<String, Object>();

		paramMap.put("Query", organization);

		if (pageNo != null) {
			paramMap.put("pageNo", (pageNo - 1) * pageSize);
		}
		if (pageSize != null) {
			paramMap.put("pageSize", pageSize);
		}

		List<OrganizationEx> list = organizationExMapper.queryOrganization(paramMap);

		int totalCount = organizationExMapper.queryOrganizationCount(paramMap);

		Page<OrganizationEx> page = new Page<OrganizationEx>();
		page.setResult(list);
		page.setPageNo(pageNo);
		page.setPageSize(pageSize);
		page.setTotalCount(totalCount);

		return page;
	}

	public List<Organization> list() {
		OrganizationExample example = new OrganizationExample();
		example.setOrderByClause("id desc");

		return organizationMapper.selectByExample(example);
	}

	public Organization selectByPrimaryKey(Integer id) {
		return organizationMapper.selectByPrimaryKey(id);
	}

	public int insert(Organization organization) {
		return organizationMapper.insert(organization);
	}

	public int updateByPrimaryKeySelective(Organization organization) {
		return organizationMapper.updateByPrimaryKeySelective(organization);
	}

	public int deleteByPrimaryKey(Integer id) {
		return organizationMapper.deleteByPrimaryKey(id);
	}

}
