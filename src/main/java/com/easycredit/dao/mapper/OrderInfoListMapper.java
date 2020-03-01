package com.easycredit.dao.mapper;

import com.easycredit.dao.pojo.OrderInfoList;
import com.easycredit.dao.pojo.OrderInfoListExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

public interface OrderInfoListMapper {
    int countByExample(OrderInfoListExample example);

    int deleteByExample(OrderInfoListExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(OrderInfoList record);

    int insertSelective(OrderInfoList record);

    List<OrderInfoList> selectByExampleWithRowbounds(OrderInfoListExample example, RowBounds rowBounds);

    List<OrderInfoList> selectByExample(OrderInfoListExample example);

    OrderInfoList selectByPrimaryKey(Integer id);
    OrderInfoList selectByOrderId(Integer OrderId);

    int updateByExampleSelective(@Param("record") OrderInfoList record, @Param("example") OrderInfoListExample example);

    int updateByExample(@Param("record") OrderInfoList record, @Param("example") OrderInfoListExample example);

    int updateByPrimaryKeySelective(OrderInfoList record);

    int updateByPrimaryKey(OrderInfoList record);
}