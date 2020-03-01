package com.easycredit.dao.mapper;

import com.easycredit.dao.pojo.ProductEvidence;
import com.easycredit.dao.pojo.ProductEvidenceExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

public interface ProductEvidenceMapper {
    int countByExample(ProductEvidenceExample example);

    int deleteByExample(ProductEvidenceExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(ProductEvidence record);

    int insertSelective(ProductEvidence record);

    List<ProductEvidence> selectByExampleWithRowbounds(ProductEvidenceExample example, RowBounds rowBounds);

    List<ProductEvidence> selectByExample(ProductEvidenceExample example);

    ProductEvidence selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") ProductEvidence record, @Param("example") ProductEvidenceExample example);

    int updateByExample(@Param("record") ProductEvidence record, @Param("example") ProductEvidenceExample example);

    int updateByPrimaryKeySelective(ProductEvidence record);

    int updateByPrimaryKey(ProductEvidence record);
}