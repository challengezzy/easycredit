package com.easycredit.dao.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

import com.easycredit.dao.pojo.Organization;
import com.easycredit.dao.pojo.OrganizationExample;

public interface OrganizationMapper {

	int countByExample(OrganizationExample example);

	int deleteByExample(OrganizationExample example);

	int deleteByPrimaryKey(Integer id);

	int insert(Organization record);

	int insertSelective(Organization record);

	List<Organization> selectByExampleWithRowbounds(OrganizationExample example, RowBounds rowBounds);

	List<Organization> selectByExample(OrganizationExample example);

	Organization selectByPrimaryKey(Integer id);

	int updateByExampleSelective(@Param("record") Organization record, @Param("example") OrganizationExample example);

	int updateByExample(@Param("record") Organization record, @Param("example") OrganizationExample example);

	int updateByPrimaryKeySelective(Organization record);

	int updateByPrimaryKey(Organization record);

}