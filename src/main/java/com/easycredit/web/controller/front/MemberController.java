package com.easycredit.web.controller.front;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.easycredit.dao.mapper.ProductInfoExMapper;
import com.easycredit.dao.pojo.OrderAssignEx;
import com.easycredit.dao.pojo.OrderInfoEx;
import com.easycredit.dao.pojo.ProductEvidence;
import com.easycredit.dao.pojo.ProductInfoEx;
import com.easycredit.dao.pojo.UserInfo;
import com.easycredit.services.front.MemberService;
import com.easycredit.services.front.MortgagorContactService;
import com.easycredit.services.front.OrderInfoService;
import com.easycredit.services.manage.orderassign.OrderAssignService;
import com.easycredit.utils.Page;
import com.easycredit.utils.SHA256EncryptUtil;
import com.easycredit.utils.UserUtils;
import com.easycredit.web.controller.BaseController;

@Controller
@RequestMapping("/member")
public class MemberController extends BaseController {
	private static final String myBusiness = "/front/myBusiness";
	private static final String orderList = "/front/orderList";
	private static final String productList = "/front/productList";
	private static final String USER_SESSION = "UserInfo";
	private static final String orderassignlist_dlag = "/front/orderassignlist_dlag";

	@Autowired
	private MemberService memberService;
	@Autowired
	private OrderInfoService orderInfoService;
	@Autowired
	private OrderAssignService orderAssignService;
	@Autowired
	ProductInfoExMapper productInfoExMapper;
	@Autowired
	MortgagorContactService mortgagorContactService;

	@RequestMapping(value = {"getOrderAssignByOrderId"})
	public String getOrderAssignByOrderId(Integer orderid, Model model, HttpServletRequest request,
			HttpServletResponse response) {

		List<OrderAssignEx> list = orderAssignService.getOrderAssignByOrderId(orderid);

		Page<OrderAssignEx> page = new Page<OrderAssignEx>();
		page.setPageNo(1);
		page.setPageSize(10);
		page.setTotalCount(list.size());
		page.setResult(list);

		model.addAttribute("page", page);

		return orderassignlist_dlag;
	}

	@RequestMapping(value = "/myBusiness")
	public String myBusiness(@RequestParam(defaultValue = "1") Integer pageNum,
			@RequestParam(defaultValue = "10") Integer pageSize, HttpServletRequest request, Model model,
			OrderInfoEx orderInfoEx) {
		int userId = UserUtils.getUserId(request);

		Page<OrderInfoEx> page = orderInfoService.queryMyBusiness(orderInfoEx, pageNum, pageSize, userId);

		model.addAttribute("page", page);

		return myBusiness;
	}

	@RequestMapping(value = "/orderList")
	public String orderList(@RequestParam(defaultValue = "1") Integer pageNum,
			@RequestParam(defaultValue = "10") Integer pageSize, HttpServletRequest request, OrderInfoEx orderInfoEx,
			Model model) {

		int userId = UserUtils.getUserId(request);
		Page<OrderInfoEx> page = orderInfoService.queryOrderList(orderInfoEx, pageNum, pageSize, userId);

		model.addAttribute("page", page);

		return orderList;
	}

	@RequestMapping(value = "/productList")
	public String save(HttpServletRequest request, Model model) {
		List<ProductInfoEx> list = productInfoExMapper.getProductList();
		List<ProductInfoEx> listfinal = new ArrayList<>();
		Iterator it = list.iterator();
		// while(it.hasNext()){
		// ProductInfoEx productInfoEx=(ProductInfoEx)it.next();
		// it.
		// }

		for (ProductInfoEx productInfoEx : list) {
			Integer productid = productInfoEx.getId();
			List<ProductEvidence> list1 = productInfoExMapper.getProductEvidenceByPid(productid);
			ProductInfoEx productInfoExFinal = new ProductInfoEx();
			productInfoExFinal.setId(productInfoEx.getId());
			productInfoExFinal.setProductname(productInfoEx.getProductname());
			productInfoExFinal.setProductno(productInfoEx.getProductno());
			productInfoExFinal.setUserid(productInfoEx.getUserid());
			productInfoExFinal.setComments(productInfoEx.getComments());
			productInfoExFinal.setCreatetime(productInfoEx.getCreatetime());
			productInfoExFinal.setProductEvidencelist(list1);
			listfinal.add(productInfoExFinal);

		}

		model.addAttribute("list", listfinal);

		return productList;
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	@ResponseBody
	public String login(HttpServletRequest request, Model model) {
		String userName = request.getParameter("userName");// 账号
		String password = SHA256EncryptUtil.Encrypt(request.getParameter("password"));// 密码
		String rand = request.getParameter("captcha");// 验证码

		// 帐号是否为空
		if (StringUtils.isEmpty(userName) || StringUtils.isEmpty(password)) {
			return "-1";
		}
		if (!request.getSession().getAttribute("validateCode").equals(rand)) {
			return "-2";
		}

		UserInfo userInfo = memberService.getMemberByLoginName(userName);
		// 核对帐号和密码
		if (userInfo != null) {
			// if (StringUtils.equals(password, userInfo.getPassword())) {
			HttpSession session = request.getSession();

			session.setAttribute(USER_SESSION, userInfo);
			session.setAttribute("userNameSession", userInfo.getUsername());
			return "0";
			// }
		}
		return "-1";
	}

	@RequestMapping(value = "/loginOut")
	@ResponseBody
	public String logout(HttpServletRequest request, Model model) {
		request.getSession().setAttribute(USER_SESSION, null);
		request.getSession().setAttribute("userNameSession", null);
		return "1";
	}

	@RequestMapping(value = "/getVistorSum")
	@ResponseBody
	public String getVistorSum(HttpServletRequest request, Model model) {
		return mortgagorContactService.getMortgagorSum() + "";
	}
}
