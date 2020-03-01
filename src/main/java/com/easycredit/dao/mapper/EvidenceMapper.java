package com.easycredit.dao.mapper;

import com.easycredit.dao.pojo.Evidence;
import com.easycredit.dao.pojo.EvidenceExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

public interface EvidenceMapper {
    int countByExample(EvidenceExample example);

    int deleteByExample(EvidenceExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Evidence record);

    int insertSelective(Evidence record);

    List<Evidence> selectByExampleWithRowbounds(EvidenceExample example, RowBounds rowBounds);

    List<Evidence> selectByExample(EvidenceExample example);

    Evidence selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Evidence record, @Param("example") EvidenceExample example);

    int updateByExample(@Param("record") Evidence record, @Param("example") EvidenceExample example);

    int updateByPrimaryKeySelective(Evidence record);

    int updateByPrimaryKey(Evidence record);
}