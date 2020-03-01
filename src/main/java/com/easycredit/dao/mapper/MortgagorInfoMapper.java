package com.easycredit.dao.mapper;

import com.easycredit.dao.pojo.MortgagorInfo;
import com.easycredit.dao.pojo.MortgagorInfoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

public interface MortgagorInfoMapper {
    int countByExample(MortgagorInfoExample example);

    int deleteByExample(MortgagorInfoExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(MortgagorInfo record);

    int insertSelective(MortgagorInfo record);

    List<MortgagorInfo> selectByExampleWithRowbounds(MortgagorInfoExample example, RowBounds rowBounds);

    List<MortgagorInfo> selectByExample(MortgagorInfoExample example);

    MortgagorInfo selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") MortgagorInfo record, @Param("example") MortgagorInfoExample example);

    int updateByExample(@Param("record") MortgagorInfo record, @Param("example") MortgagorInfoExample example);

    int updateByPrimaryKeySelective(MortgagorInfo record);

    int updateByPrimaryKey(MortgagorInfo record);
}