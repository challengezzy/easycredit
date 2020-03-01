package com.easycredit.dao.mapper;

import com.easycredit.dao.pojo.MortgagorContact;
import com.easycredit.dao.pojo.MortgagorContactExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

public interface MortgagorContactMapper {
    int countByExample(MortgagorContactExample example);

    int deleteByExample(MortgagorContactExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(MortgagorContact record);

    int insertSelective(MortgagorContact record);

    List<MortgagorContact> selectByExampleWithRowbounds(MortgagorContactExample example, RowBounds rowBounds);

    List<MortgagorContact> selectByExample(MortgagorContactExample example);

    MortgagorContact selectByPrimaryKey(Integer id);
    
    MortgagorContact selectByMortgagorId(Integer id);

    int updateByExampleSelective(@Param("record") MortgagorContact record, @Param("example") MortgagorContactExample example);

    int updateByExample(@Param("record") MortgagorContact record, @Param("example") MortgagorContactExample example);

    int updateByPrimaryKeySelective(MortgagorContact record);

    int updateByPrimaryKey(MortgagorContact record);
}