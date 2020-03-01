package com.easycredit.services.manage.order.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.easycredit.dao.mapper.OrderAssignExMapper;
import com.easycredit.dao.mapper.OrderAssignMapper;
import com.easycredit.dao.mapper.OrderInfoExMapper;
import com.easycredit.dao.mapper.OrderInfoMapper;
import com.easycredit.dao.mapper.OrderRetrunListMapper;
import com.easycredit.dao.pojo.OrderAssign;
import com.easycredit.dao.pojo.OrderAssignEx;
import com.easycredit.dao.pojo.OrderInfo;
import com.easycredit.dao.pojo.OrderInfoEx;
import com.easycredit.dao.pojo.OrderRetrunList;
import com.easycredit.services.manage.order.ApplyApprovalService;
import com.easycredit.utils.BeanUtil;
import com.easycredit.utils.UserUtils;

@Service
@Transactional
public class ApplyApprovalServiceImpl implements ApplyApprovalService {
	@Autowired
	private OrderInfoExMapper mapper;
	@Autowired
	private OrderInfoMapper orderInfoMapper;
	@Autowired
	private OrderAssignExMapper orderAssignExMapper;
	@Autowired
	private OrderAssignMapper orderAssignMapper;
	@Autowired
	private OrderRetrunListMapper orderRetrunListMapper;

	@Override
	public List<OrderInfoEx> getApplyApprovalList(OrderInfoEx record) {
		record.setUserid(UserUtils.getCreateOprt());

		return mapper.getApplyApprovals(record);
	}

	@Override
	public int updateApplyApproval(OrderAssignEx record) {
		// TODO Auto-generated method stub
		Integer orderid=record.getOrderid();
		
		OrderInfo orderinfo  =orderInfoMapper.selectByPrimaryKey(orderid);

		Integer orderstauts=orderinfo.getStatus();//取得当前业务申请单的状态，业务单状态字典，-1，第一步（借款人信息）暂存，-2，第二步（企业信息）暂存，-3，第三步（借款信息）暂存，-4，第四步（资料上传）暂存，0，初审中，1，复审中，2，合作商审批中，3，审批通过，4，审批拒绝，5，退回
		
		Integer resultflag=record.getResultflag();
		System.out.println("当前执行的审批操作为:"+resultflag);
		if(orderstauts<3){
			if(resultflag==0)//判断审批结果状态，审批结果字典，0，否决，1，同意，2，退回
			{
			List<OrderAssignEx> list=	orderAssignExMapper.getOrderAssignByOrderId(orderid);
			for(OrderAssignEx orderass:list){
				if(orderass.getSubmittime()==null)
				{
					OrderAssign orderAssign=BeanUtil.getOrderAssign(orderass, orderid);
					orderAssign.setSubmittime(new Date());
					orderAssign.setResultflag(0);
					orderAssign.setComments(record.getComments());
					orderAssign.setOperatorid(UserUtils.getCreateOprt());
					int result=orderAssignMapper.updateByPrimaryKeySelective(orderAssign);//拒绝的情况下，不需要重新插入一条数据
					orderinfo.setStatus(4);//审批拒绝，更新order信息
					orderInfoMapper.updateByPrimaryKey(orderinfo);
					return result;
					
					
				}
			}
				
			}else if (resultflag==1)//审批通过
			{
				List<OrderAssignEx> list=	orderAssignExMapper.getOrderAssignByOrderId(orderid);
				for(OrderAssignEx orderass:list){
					if(orderass.getSubmittime()==null)
					{
						OrderAssign orderAssign=BeanUtil.getOrderAssign(orderass, orderid);
						orderAssign.setSubmittime(new Date());
						orderAssign.setResultflag(1);
						orderAssign.setComments(record.getComments());
						orderAssign.setOperatorid(UserUtils.getCreateOprt());
						int result=orderAssignMapper.updateByPrimaryKeySelective(orderAssign);
						orderinfo.setStatus(orderstauts+1);//审批拒绝，更新order信息
						orderInfoMapper.updateByPrimaryKey(orderinfo);
						if(orderstauts+1!=3){
						OrderAssign orderAssignnextVal=new OrderAssign();
						orderAssignnextVal.setOrderid(orderid);
						orderAssignnextVal.setAssigntime(new Date());
						int insertresult=orderAssignMapper.insertSelective(orderAssignnextVal);}
						return result;
						
						
					}
				}
				
			}
			else if (resultflag==2)//审批被退回
			{
				List<OrderAssignEx> list=	orderAssignExMapper.getOrderAssignByOrderId(orderid);
				for(OrderAssignEx orderass:list){
					if(orderass.getSubmittime()==null)
					{
						OrderAssign orderAssign=BeanUtil.getOrderAssign(orderass, orderid);
						orderAssign.setSubmittime(new Date());
						orderAssign.setResultflag(2);
						orderAssign.setComments(record.getComments());
						orderAssign.setOperatorid(UserUtils.getCreateOprt());
						int result=orderAssignMapper.updateByPrimaryKeySelective(orderAssign);//拒绝的情况下，不需要重新插入一条数据
						orderinfo.setStatus(5);//审批被退回，更新order信息
						orderInfoMapper.updateByPrimaryKey(orderinfo);
						return result;
						
						
					}
				}
			}
			
		}
		
		return 0;
	}
	
	/**
	 * 现在合作审核走这个方法，add by jingqi
	 */

	@Override
	public int addreturnlist(OrderRetrunList record) {
		// TODO Auto-generated method stub
		int result= orderRetrunListMapper.insertSelective(record);
//		int orderid=record.getOrderid();
//		OrderInfo orderInfo=  orderInfoMapper.selectByPrimaryKey(orderid);
//		orderInfo.setStatus(6);//状态更新为已放款
//		orderInfoMapper.updateByPrimaryKeySelective(orderInfo);//更新order信息
		
		return result;
	}

	/**
	 * 现在放款走这个方法，add by jinqi
	 */
	@Override
	public int updatereturnlist(OrderRetrunList record) {
		// TODO Auto-generated method stub
		int result=orderRetrunListMapper.updateByPrimaryKeySelective(record);
		int orderid=record.getOrderid();
		OrderInfo orderInfo=  orderInfoMapper.selectByPrimaryKey(orderid);
		orderInfo.setStatus(6);//状态更新为已放款
		orderInfoMapper.updateByPrimaryKeySelective(orderInfo);//更新order信息
		return result;
	}
	
	

}
