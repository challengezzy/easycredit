package com.easycredit.dao.mapper;

import com.easycredit.dao.pojo.MortgagorResidential;
import com.easycredit.dao.pojo.MortgagorResidentialExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

public interface MortgagorResidentialMapper {
    int countByExample(MortgagorResidentialExample example);

    int deleteByExample(MortgagorResidentialExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(MortgagorResidential record);

    int insertSelective(MortgagorResidential record);

    List<MortgagorResidential> selectByExampleWithRowbounds(MortgagorResidentialExample example, RowBounds rowBounds);

    List<MortgagorResidential> selectByExample(MortgagorResidentialExample example);

    MortgagorResidential selectByPrimaryKey(Integer id);

    MortgagorResidential selectByMortgagorId(Integer id);
    
    int updateByExampleSelective(@Param("record") MortgagorResidential record, @Param("example") MortgagorResidentialExample example);

    int updateByExample(@Param("record") MortgagorResidential record, @Param("example") MortgagorResidentialExample example);

    int updateByPrimaryKeySelective(MortgagorResidential record);

    int updateByPrimaryKey(MortgagorResidential record);
}