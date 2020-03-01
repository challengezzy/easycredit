package com.easycredit.dao.mapper;

import com.easycredit.dao.pojo.OrderRetrunList;
import com.easycredit.dao.pojo.OrderRetrunListExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

public interface OrderRetrunListMapper {
    int countByExample(OrderRetrunListExample example);

    int deleteByExample(OrderRetrunListExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(OrderRetrunList record);

    int insertSelective(OrderRetrunList record);

    List<OrderRetrunList> selectByExampleWithRowbounds(OrderRetrunListExample example, RowBounds rowBounds);

    List<OrderRetrunList> selectByExample(OrderRetrunListExample example);

    OrderRetrunList selectByPrimaryKey(Integer id);
    OrderRetrunList selectByOrderId(Integer OrderId);

    int updateByExampleSelective(@Param("record") OrderRetrunList record, @Param("example") OrderRetrunListExample example);

    int updateByExample(@Param("record") OrderRetrunList record, @Param("example") OrderRetrunListExample example);

    int updateByPrimaryKeySelective(OrderRetrunList record);

    int updateByPrimaryKey(OrderRetrunList record);
}