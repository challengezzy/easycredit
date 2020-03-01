package com.easycredit.web.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.easycredit.exception.BusinessException;
import com.easycredit.utils.tag.StateContext;

public class ApplicationListener implements ServletContextListener {

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		// 加载缓存
		ServletContext context = sce.getServletContext();
		String realPath = context.getRealPath("/WEB-INF/state.xml");
		try {
			StateContext.initStateConfigs(realPath);
		} catch (BusinessException e) {
		}
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
	}
}
