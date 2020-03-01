package com.easycredit.dao.mapper;

import com.easycredit.dao.pojo.OrganizationAuthority;
import com.easycredit.dao.pojo.OrganizationAuthorityExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

public interface OrganizationAuthorityMapper {
    int countByExample(OrganizationAuthorityExample example);

    int deleteByExample(OrganizationAuthorityExample example);

    int deleteByPrimaryKey(Integer id);
    int deleteByOid(Integer oid);

    int insert(OrganizationAuthority record);

    int insertSelective(OrganizationAuthority record);

    List<OrganizationAuthority> selectByExampleWithRowbounds(OrganizationAuthorityExample example, RowBounds rowBounds);

    List<OrganizationAuthority> selectByExample(OrganizationAuthorityExample example);

    OrganizationAuthority selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") OrganizationAuthority record, @Param("example") OrganizationAuthorityExample example);

    int updateByExample(@Param("record") OrganizationAuthority record, @Param("example") OrganizationAuthorityExample example);

    int updateByPrimaryKeySelective(OrganizationAuthority record);

    int updateByPrimaryKey(OrganizationAuthority record);
}