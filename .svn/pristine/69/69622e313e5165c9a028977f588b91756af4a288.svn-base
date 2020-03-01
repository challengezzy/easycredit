package com.easycredit.services.manage.user;

import java.util.List;

import com.easycredit.dao.pojo.Organization;
import com.easycredit.dao.pojo.OrganizationEx;
import com.easycredit.utils.Page;

public interface OrganizationService {

	public List<Organization> list();

	Page<OrganizationEx> query(OrganizationEx organization, Integer pageNo, Integer pageSize);

	Organization selectByPrimaryKey(Integer id);

	int insert(Organization organization);

	int updateByPrimaryKeySelective(Organization organization);

	int deleteByPrimaryKey(Integer id);

}
