package com.easycredit.dao.mapper;

import com.easycredit.dao.pojo.OrderAssign;
import com.easycredit.dao.pojo.OrderAssignExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

public interface OrderAssignMapper {
    int countByExample(OrderAssignExample example);

    int deleteByExample(OrderAssignExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(OrderAssign record);

    int insertSelective(OrderAssign record);

    List<OrderAssign> selectByExampleWithRowbounds(OrderAssignExample example, RowBounds rowBounds);

    List<OrderAssign> selectByExample(OrderAssignExample example);

    OrderAssign selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") OrderAssign record, @Param("example") OrderAssignExample example);

    int updateByExample(@Param("record") OrderAssign record, @Param("example") OrderAssignExample example);

    int updateByPrimaryKeySelective(OrderAssign record);

    int updateByPrimaryKey(OrderAssign record);
}