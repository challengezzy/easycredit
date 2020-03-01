package com.easycredit.services.manage.product.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.easycredit.dao.mapper.ProductEvidenceExMapper;
import com.easycredit.dao.mapper.ProductEvidenceMapper;
import com.easycredit.dao.mapper.ProductInfoExMapper;
import com.easycredit.dao.mapper.ProductInfoMapper;
import com.easycredit.dao.mapper.ProductorGanizationMapper;
import com.easycredit.dao.pojo.ProductEvidence;
import com.easycredit.dao.pojo.ProductInfo;
import com.easycredit.dao.pojo.ProductInfoEx;
import com.easycredit.dao.pojo.ProductorGanization;
import com.easycredit.services.manage.product.ProductService;
import com.easycredit.utils.UserUtils;

@Service
@Transactional
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductInfoExMapper mapper;
	@Autowired
	private ProductInfoMapper productInfoMapper;
	@Autowired
	private ProductorGanizationMapper productorGanizationMapper;
	
	@Autowired
	private ProductEvidenceExMapper productEvidenceExMapper;
	
	@Autowired
	private ProductEvidenceMapper productEvidenceMapper;

	@Override
	public List<ProductInfoEx> getProductInfo(ProductInfoEx record) {

		return mapper.getProductInfo(record);
	}

	@Override
	public int insertProduct(ProductInfo record) {
		record.setUserid(UserUtils.getCreateOprt());
		record.setCreatetime(new Date());
		return productInfoMapper.insertSelective(record);
	}

	@Override
	public int insertProductorGanization(ProductorGanization record) {
		return productorGanizationMapper.insert(record);
	}

	@Override
	public int updateByPrimaryKeySelective(ProductInfo record) {
		return productInfoMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKeySelective(ProductorGanization record) {
		return productorGanizationMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int deleteProductByid(Integer id) {
		return productInfoMapper.deleteByPrimaryKey(id);
	}

	@Override
	public List<ProductEvidence> getProductEvidenceList(Integer productid) {
		//查询产品说明信息
		return productEvidenceExMapper.getProductEvidenceList(productid);
	}

	@Override
	public int deleteProductorGanizationByProductId(Integer pid) {
		return productorGanizationMapper.deleteByProductId(pid);
	}
	
	@Override
	public int deleteProductEvidenceByid(Integer id){
		return productEvidenceMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insertProductEvidence(ProductEvidence record) {
		record.setOperatorid(UserUtils.getCreateOprt());
		record.setCreatedate(new Date());
		return productEvidenceMapper.insert(record);
	}
	
	@Override
	public ProductEvidence getProductEvidenceById(Integer id){
		return productEvidenceMapper.selectByPrimaryKey(id);
	}
	
}
