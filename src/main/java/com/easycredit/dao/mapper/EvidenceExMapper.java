package com.easycredit.dao.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.easycredit.dao.pojo.Evidence;

public interface EvidenceExMapper {

	List<Evidence> selectByOrderIdAndImageType(@Param("orderid") Integer orderid, @Param("imageType") Integer imageType);

}