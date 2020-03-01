package com.easycredit.web.controller.manage.order;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.easycredit.dao.mapper.EvidenceExMapper;
import com.easycredit.dao.mapper.EvidenceMapper;
import com.easycredit.dao.mapper.OrderRetrunListMapper;
import com.easycredit.dao.mapper.ProductInfoMapper;
import com.easycredit.dao.pojo.CompanyInfo;
import com.easycredit.dao.pojo.Evidence;
import com.easycredit.dao.pojo.MortgagorContact;
import com.easycredit.dao.pojo.MortgagorInfo;
import com.easycredit.dao.pojo.MortgagorResidential;
import com.easycredit.dao.pojo.OrderAssignEx;
import com.easycredit.dao.pojo.OrderInfo;
import com.easycredit.dao.pojo.OrderInfoEx;
import com.easycredit.dao.pojo.OrderInfoList;
import com.easycredit.dao.pojo.OrderRetrunList;
import com.easycredit.dao.pojo.ProductInfo;
import com.easycredit.services.common.UploadFileService;
import com.easycredit.services.front.OrderInfoService;
import com.easycredit.services.front.ProductService;
import com.easycredit.services.manage.company.CompanyInfoService;
import com.easycredit.services.manage.mortgagor.MortgagorService;
import com.easycredit.services.manage.order.ApplyApprovalService;
import com.easycredit.utils.NoGeneratorUtil;
import com.easycredit.utils.Page;
import com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException;

/**
 * 
 * @author Jq 产品管理控制器
 */
@Controller
@RequestMapping("/manage/applyApproval")
public class ApplyApprovalController {
	@Autowired
	 ApplyApprovalService applyApprovalService;
	@Autowired
	ProductService productService;
	@Autowired
	MortgagorService mortgagorService;
	@Autowired
	UploadFileService uploadFileService;
	@Autowired
	OrderInfoService orderInfoService;
	@Autowired
	CompanyInfoService companyInfoService;
	@Autowired
	EvidenceMapper evidenceMapper;
	@Autowired
	EvidenceExMapper evidenceExMapper;
	@Autowired
	ProductInfoMapper productInfoMapper;
	@Autowired
	OrderRetrunListMapper orderRetrunListMapper;

	private static final String LIST = "/manage/applyApproval_list";
	private static final String PREUPDATE = "/manage/applyApproval_update";// 流程审批填写审批意见的页面
	private static final String UPDATE = "redirect:/manage/applyApproval/getApplyApprovalList.html";// 流程审批填写审批意见的页面
	private static final String RETURNLIST = "/manage/applyApproval_returnlist";// 放款信息填写页面
	private static final String productReview = "/manage/product-review";

	@RequestMapping(value = {"getApplyApprovalList"})
	public String getApplyApprovalList(OrderInfoEx record, String datepicker, Model model, HttpServletRequest request,
			HttpServletResponse response) {
		try {
			System.out.println("&&&&&&&&&&" + record.getStatus());
			if (datepicker != "" && datepicker != null) {
				String a[] = datepicker.split(" - ");

				try {
					SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
					Date datestart = sdf.parse(a[0]);
					Date dateend = sdf.parse(a[1]);
					record.setStarttime(datestart);
					record.setEndtime(dateend);
				} catch (ParseException | java.text.ParseException e) {
					System.out.println(e.getMessage());
				}
			}
			List<OrderInfoEx> list = applyApprovalService.getApplyApprovalList(record);

			Page<OrderInfoEx> page = new Page<OrderInfoEx>();
			page.setPageNo(1);
			page.setPageSize(10);
			page.setTotalCount(list.size());
			page.setResult(list);

			model.addAttribute("page", page);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return LIST;
	}

	@RequestMapping(value = {"preupdate"})
	public String preupdate(Integer id, Integer resultflag, Integer status, Model model, HttpServletRequest request,
			HttpServletResponse response) {
		model.addAttribute("orderid", id);
		model.addAttribute("resultflag", resultflag);
		model.addAttribute("status", status);
		if (status == 2&&resultflag==1) {//合作审批的特殊处理
			return "/manage/applyApproval_updatefinal";
		}
		return PREUPDATE;
	}

	@RequestMapping(value = {"update"})
	public String update(OrderAssignEx record, Model model,Integer resultflag,Integer status,Double loanamountpre,Double loanratepre,Integer loantimelimitpre, HttpServletRequest request, HttpServletResponse response) {

		applyApprovalService.updateApplyApproval(record);
		if (status == 2) {
			OrderRetrunList record1=new OrderRetrunList();
			record1.setOrderid(record.getOrderid());
			record1.setLoanamountpre(loanamountpre);
			record1.setLoanratepre(loanratepre);
			record1.setLoantimelimitpre(loantimelimitpre);
			applyApprovalService.addreturnlist(record1);
		}

		return UPDATE;

	}

	@RequestMapping(value = {"prereturnlist"})
	public String prereturnlist(Integer id, Model model, HttpServletRequest request, HttpServletResponse response) {
		
		OrderRetrunList list= orderRetrunListMapper.selectByOrderId(id);

		model.addAttribute("orderid", id);
		model.addAttribute("list", list);

		return RETURNLIST;

	}

	@RequestMapping(value = {"returnUpdate"})
	public String returnUpdate(Integer orderid ,String loanamount,String loanrate,String loantimelimit,String comments,String loanlimittime,String loantime,Model model, HttpServletRequest request,
			HttpServletResponse response) {
//		System.out.println("record=****************" + record.getComments());
		OrderRetrunList record=orderRetrunListMapper.selectByOrderId(orderid);
		System.out.println("record=****************" + record.getOrderid());
		record.setLoanamount(Double.valueOf(loanamount));
		record.setLoanrate(Double.valueOf(loanrate));
		record.setLoantimelimit(Integer.valueOf(loantimelimit));
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			record.setLoantime(sdf.parse(loantime));
		} catch (java.text.ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			record.setLoanlimittime(sdf.parse(loanlimittime));
		} catch (java.text.ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		record.setComments(comments);
		
		record.setLoanstatus(0);
		record.setNorepaymentamount(record.getLoanamount());
		record.setLoanno(NoGeneratorUtil.getLoanNo());
		applyApprovalService.updatereturnlist(record);
		System.out.println("record=" + record);

		return "redirect:/manage/applyApproval/getApplyApprovalList.html";
		//

	}

	@RequestMapping(value = "/product_review")
	public String productReview(HttpServletRequest request, Model model, Integer orderId, Integer productId,
			RedirectAttributes attrs) {
		if (orderId != null) {
			OrderInfo orderInfo = orderInfoService.getOrderInfoByOrderId(orderId);

			productId = orderInfo.getProductid();

			int mortgagorid = orderInfo.getMortgagorid();

			MortgagorInfo mortgagorInfo = mortgagorService.selectByPrimaryKey(mortgagorid);

			MortgagorResidential mortgagorResidential = mortgagorService.getMortgagorResidentialById(mortgagorid);

			MortgagorContact mortgagorContact = mortgagorService.getMortgagorContactById(mortgagorid);

			CompanyInfo companyInfo = companyInfoService.selectByMortgagorId(mortgagorid);

			OrderInfoList orderInfoList = orderInfoService.getOrderInfoListByOrderId(orderId);

			ProductInfo productInfo = productInfoMapper.selectByPrimaryKey(productId);

			model.addAttribute("productName", productInfo.getProductname());
			model.addAttribute("orderInfoList", orderInfoList);
			model.addAttribute("orderInfo", orderInfo);
			model.addAttribute("mortgagorInfo", mortgagorInfo);
			model.addAttribute("mortgagorResidential", mortgagorResidential);
			model.addAttribute("mortgagorContact", mortgagorContact);
			model.addAttribute("companyInfo", companyInfo);

			List<Evidence> s0 = evidenceExMapper.selectByOrderIdAndImageType(orderId, 0);
			List<Evidence> s1 = evidenceExMapper.selectByOrderIdAndImageType(orderId, 1);
			List<Evidence> s2 = evidenceExMapper.selectByOrderIdAndImageType(orderId, 2);
			List<Evidence> s3 = evidenceExMapper.selectByOrderIdAndImageType(orderId, 3);
			List<Evidence> s4 = evidenceExMapper.selectByOrderIdAndImageType(orderId, 4);
			List<Evidence> s5 = evidenceExMapper.selectByOrderIdAndImageType(orderId, 5);
			List<Evidence> s6 = evidenceExMapper.selectByOrderIdAndImageType(orderId, 6);
			List<Evidence> s7 = evidenceExMapper.selectByOrderIdAndImageType(orderId, 7);
			List<Evidence> s8 = evidenceExMapper.selectByOrderIdAndImageType(orderId, 8);
			List<Evidence> s9 = evidenceExMapper.selectByOrderIdAndImageType(orderId, 9);
			List<Evidence> s10 = evidenceExMapper.selectByOrderIdAndImageType(orderId, 10);
			List<Evidence> s11 = evidenceExMapper.selectByOrderIdAndImageType(orderId, 11);
			List<Evidence> s12 = evidenceExMapper.selectByOrderIdAndImageType(orderId, 12);
			List<Evidence> s13 = evidenceExMapper.selectByOrderIdAndImageType(orderId, 13);
			List<Evidence> s14 = evidenceExMapper.selectByOrderIdAndImageType(orderId, 14);

			model.addAttribute("s0", s0);
			model.addAttribute("s1", s1);
			model.addAttribute("s2", s2);
			model.addAttribute("s3", s3);
			model.addAttribute("s4", s4);
			model.addAttribute("s5", s5);
			model.addAttribute("s6", s6);
			model.addAttribute("s7", s7);
			model.addAttribute("s8", s8);
			model.addAttribute("s9", s9);
			model.addAttribute("s10", s10);
			model.addAttribute("s11", s11);
			model.addAttribute("s12", s12);
			model.addAttribute("s13", s13);
			model.addAttribute("s14", s14);

			model.addAttribute("productId", productId);
			model.addAttribute("orderId", orderId);
		}
		return productReview;
	}

}
