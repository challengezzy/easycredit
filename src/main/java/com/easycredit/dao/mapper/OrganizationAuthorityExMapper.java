package com.easycredit.dao.mapper;

import java.util.List;

import com.easycredit.dao.pojo.OrganizationAuthority;
import com.easycredit.dao.pojo.OrganizationAuthorityEx;

public interface OrganizationAuthorityExMapper {
	List<OrganizationAuthorityEx> getOrganizationAuthorityList(OrganizationAuthorityEx record);

	List<OrganizationAuthority> getAuthorityByOrganizationId(Integer oid);

	int delByOrganizationId(Integer organizationId);
}
