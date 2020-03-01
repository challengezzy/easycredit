package com.easycredit.dao.mapper;

import java.util.List;
import java.util.Map;

import com.easycredit.dao.pojo.OrganizationEx;

public interface OrganizationExMapper {
	List<OrganizationEx> queryOrganization(Map<String, Object> paramMap);

	int queryOrganizationCount(Map<String, Object> paramMap);

}