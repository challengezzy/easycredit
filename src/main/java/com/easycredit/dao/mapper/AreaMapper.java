package com.easycredit.dao.mapper;

import com.easycredit.dao.pojo.Area;
import com.easycredit.dao.pojo.AreaExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

public interface AreaMapper {
    int countByExample(AreaExample example);

    int deleteByExample(AreaExample example);

    int deleteByPrimaryKey(Integer areaId);

    int insert(Area record);

    int insertSelective(Area record);

    List<Area> selectByExampleWithRowbounds(AreaExample example, RowBounds rowBounds);

    List<Area> selectByExample(AreaExample example);

    Area selectByPrimaryKey(Integer areaId);

    int updateByExampleSelective(@Param("record") Area record, @Param("example") AreaExample example);

    int updateByExample(@Param("record") Area record, @Param("example") AreaExample example);

    int updateByPrimaryKeySelective(Area record);

    int updateByPrimaryKey(Area record);
}