package com.easycredit.web.controller.manage.security;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.easycredit.dao.pojo.OrganizationAuthority;
import com.easycredit.dao.pojo.OrganizationAuthorityEx;
import com.easycredit.services.manage.user.OrganizationAuthorityService;
import com.easycredit.utils.Page;

@Controller
@RequestMapping("/manage/security/organizationauthority")
public class OrganizationAuthorityController {
	@Autowired
	OrganizationAuthorityService organizationAuthorityService;
	private static final String RE_LIST = "redirect:/manage/security/organizationauthority/getOrganizationauthoritys.html";
	private static final String LIST = "/security/organization/organization_list_auth";// 数据返回到page
	private static final String AUTHLIST = "/security/organization/auth_dlag";// 数据返回到page

	@RequestMapping(value = "/getOrganizationauthoritys")
	public String getOrganizationauthoritys(HttpServletRequest request, Model model, OrganizationAuthorityEx record) {
		try {
			List<OrganizationAuthorityEx> list = organizationAuthorityService.getOrganizationAuthorityList(record);

			Page<OrganizationAuthorityEx> page = new Page<OrganizationAuthorityEx>();
			page.setPageNo(1);
			page.setPageSize(10);
			page.setTotalCount(list.size());
			page.setResult(list);

			model.addAttribute("page", page);
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("message", e.getMessage());
		}
		return LIST;
	}

	@RequestMapping(value = "/authoritylist")
	public String authoritylist(HttpServletRequest request, Model model, Integer organizationid) {
		try {

			List<OrganizationAuthority> list = organizationAuthorityService
					.getAuthorityByOrganizationId(organizationid);
			StringBuffer buffer = new StringBuffer();
			for (OrganizationAuthority organizationAuthority : list) {
				buffer.append(organizationAuthority.getAuthoritytypeflag()).append(",");
			}

			model.addAttribute("list", list);
			model.addAttribute("organizationid", organizationid);
			model.addAttribute("authoritytypeflag", buffer.toString());
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("message", e.getMessage());
		}
		return AUTHLIST;
	}

	@RequestMapping(value = "/update")
	public String update(HttpServletRequest request, Model model, String checkedIds, Integer organizationid) {
		try {

			organizationAuthorityService.delByOrganizationId(organizationid);

			if (StringUtils.isNotEmpty(checkedIds)) {
				String[] ids = checkedIds.split(",");
				for (String id : ids) {
					OrganizationAuthority record = new OrganizationAuthority();
					record.setAuthoritytypeflag(Integer.parseInt(id));
					record.setComments("");
					record.setOrganizationid(organizationid);

					organizationAuthorityService.insertOrganizationAuthority(record);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("message", e.getMessage());
		}
		return RE_LIST;
	}
}
