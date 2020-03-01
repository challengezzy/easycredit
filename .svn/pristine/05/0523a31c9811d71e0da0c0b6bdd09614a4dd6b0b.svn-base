package com.easycredit.dao.mapper;

import com.easycredit.dao.pojo.OrganizationArea;
import com.easycredit.dao.pojo.OrganizationAreaExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

public interface OrganizationAreaMapper {
    int countByExample(OrganizationAreaExample example);

    int deleteByExample(OrganizationAreaExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(OrganizationArea record);

    int insertSelective(OrganizationArea record);

    List<OrganizationArea> selectByExampleWithRowbounds(OrganizationAreaExample example, RowBounds rowBounds);

    List<OrganizationArea> selectByExample(OrganizationAreaExample example);

    OrganizationArea selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") OrganizationArea record, @Param("example") OrganizationAreaExample example);

    int updateByExample(@Param("record") OrganizationArea record, @Param("example") OrganizationAreaExample example);

    int updateByPrimaryKeySelective(OrganizationArea record);

    int updateByPrimaryKey(OrganizationArea record);
}