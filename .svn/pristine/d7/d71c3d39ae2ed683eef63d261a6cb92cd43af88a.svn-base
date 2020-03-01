package com.easycredit.web.controller.manage.security;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.easycredit.dao.pojo.Organization;
import com.easycredit.dao.pojo.OrganizationEx;
import com.easycredit.services.BaseService;
import com.easycredit.services.manage.user.OrganizationService;
import com.easycredit.utils.Page;
import com.easycredit.web.controller.manage.security.shiro.ShiroRealm;

@Controller
@RequestMapping("/manage/security/organization")
public class OrganizationController implements BaseService {
	@Autowired
	OrganizationService organizationService;

	@RequestMapping(value = "/query")
	public String list(@RequestParam(defaultValue = "1") Integer pageNum,
			@RequestParam(defaultValue = "10") Integer pageSize, HttpServletRequest request, Model model,
			OrganizationEx organization) {
		try {
			Page<OrganizationEx> userInfos = organizationService.query(organization, pageNum, pageSize);

			model.addAttribute("page", userInfos);
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("message", e.getMessage());
		}
		return ORGANIZATION_LIST;
	}

	@RequestMapping(value = "/save")
	public String save(Organization organization, RedirectAttributes attr) {
		try {
			int result = 0;
			// 新增
			if (organization.getId() == null) {

				Subject subject = SecurityUtils.getSubject();
				ShiroRealm.ShiroUser user = (ShiroRealm.ShiroUser) subject.getPrincipal();
				organization.setUserid(user.getId().intValue());
				organization.setCreatetime(new Date());

				result = organizationService.insert(organization);
			} else {
				result = organizationService.updateByPrimaryKeySelective(organization);
			}
			if (result != 1) {
				attr.addFlashAttribute("message", "新增/修改用户组失败");
				return ORGANIZATION_RE_LIST;
			}
			attr.addFlashAttribute("message", "保存用户组成功");
		} catch (Exception e) {
			e.printStackTrace();
			attr.addFlashAttribute("message", e.getMessage());
		}
		return ORGANIZATION_RE_LIST;
	}

	@RequestMapping(value = "/del")
	public String del(Model model, Integer id, RedirectAttributes attr) {
		try {
			int result = organizationService.deleteByPrimaryKey(id);
			if (result != 1) {
				attr.addFlashAttribute("message", "删除用户组失败");
				return ORGANIZATION_CREATE;
			}
			attr.addFlashAttribute("message", "删除用户组成功");
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("message", e.getMessage());
		}
		return ORGANIZATION_RE_LIST;
	}
}
