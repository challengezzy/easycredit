package com.easycredit.interceptor;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.easycredit.dao.pojo.UserInfo;
import com.easycredit.utils.RequestUtils;

/**
 * 
 * 用户操作日志符拦截器
 * 
 */
public class OperateLogInterceptor extends HandlerInterceptorAdapter {
	private static final Logger logger = Logger.getLogger(OperateLogInterceptor.class);

	@SuppressWarnings("unchecked")
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		String url = request.getRequestURL().toString();
		String method = request.getMethod();
		String userName = "";
		String ip = RequestUtils.parseIp(request);
		try {
			UserInfo user = (UserInfo) request.getSession().getAttribute("sessionUser");
			if (null != user) {
				userName = user.getUsername();
			}
			Enumeration<String> e = request.getParameterNames();
			String parameterName, parameterValue, servletParam = "";
			while (e.hasMoreElements()) {
				parameterName = e.nextElement();
				parameterValue = request.getParameter(parameterName);
				if (StringUtils.isNotEmpty(parameterValue)) {
					servletParam += parameterName + "=" + parameterValue + "&";
				}
			}
			if (servletParam.endsWith("&")) {
				servletParam = servletParam.substring(0, servletParam.length() - 1);
			}
			logger.info("userName:" + userName + ",IP:" + ip + "  操作：method:" + method + ",url:" + url
					+ (servletParam.equals("") ? "" : "?") + servletParam);
		} catch (Exception e) {
			logger.error("userName:" + userName + ",IP:" + ip + "  操作：" + "保存管理员操作日志出错：" + e);
			e.printStackTrace();
		}
		super.postHandle(request, response, handler, modelAndView);
	}
}
