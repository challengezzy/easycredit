package com.easycredit.utils;

import javax.servlet.http.HttpServletRequest;

public class RequestUtils {
	/**
	 * 解析Ip地址
	 * 
	 * @param request
	 * @return
	 */
	public static String parseIp(HttpServletRequest request) {
		 String ip = request.getHeader("x-forwarded-for"); 
		    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
		        ip = request.getHeader("Proxy-Client-IP"); 
		    } 
		    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
		        ip = request.getHeader("WL-Proxy-Client-IP"); 
		    } 
		    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
		        ip = request.getRemoteAddr(); 
		    } 
		    return ip;  
	}
	/**
	 * 解析浏览器类型
	 * @param request
	 * @return
	 */
    public static String[] judgeBrowser(HttpServletRequest request) {  
    	String userAgent=request.getHeader("User-Agent");
    	return judgeBrowser(userAgent);
    } 
    /**
	 * 解析浏览器类型
	 * @param request
	 * @return
	 */
    public static String[] judgeBrowser(String userAgent) {  
    	String[] us=new String[2];
    	if (userAgent.contains("Chrome")) {  
    		/** 
    		 * Chrome 系列 
    		 */  
    		String temp = userAgent.substring(userAgent.indexOf("Chrome/") + 7); 
    		String chromeVersion = "";  
    		if (temp.indexOf(" ") < 0) {
    			chromeVersion = temp;  
    		} else {
    			chromeVersion = temp.substring(0, temp.indexOf(" "));  
    		}
    		us[0]="Chrome";
    		us[1]=chromeVersion;
    	} else if (userAgent.contains("Firefox")) {  
    		/** 
    		 * ******* 
    		 * FF 系列 
    		 */  
    		String temp = userAgent.substring(userAgent.indexOf("Firefox/") + 8); 
    		String ffVersion = "";  
    		if (temp.indexOf(" ") < 0) {  
    			ffVersion = temp;  
    		} else { 
    			ffVersion = temp.substring(0, temp.indexOf(" "));  
    		}  
    		us[0]="Firefox";
    		us[1]=ffVersion; 
    	} else if (userAgent.contains("MSIE")) {  
    		/** 
    		 * IE 系列 
    		 */  
    		String ieVersion="UNKONW";
    		if (userAgent.contains("MSIE 12.0")) {//Internet Explorer 10  
    			ieVersion="12"; 
    		} else if (userAgent.contains("MSIE 11.0")) {//Internet Explorer 9  
    			ieVersion="11";  
    		} else if (userAgent.contains("MSIE 10.0")) {//Internet Explorer 9  
    			ieVersion="10";  
    		} else if (userAgent.contains("MSIE 9.0")) {//Internet Explorer 9  
    			ieVersion="9";  
    		} else if (userAgent.contains("MSIE 8.0")) {//Internet Explorer 8  
    			ieVersion="8";   
    		} else if (userAgent.contains("MSIE 7.0")) {//Internet Explorer 7  
    			ieVersion="7";  
    		} else if (userAgent.contains("MSIE 6.0")) {//Internet Explorer 6  
    			ieVersion="6";    
    		}
    		us[0]="Internet Explorer";
    		us[1]=ieVersion; 
    	}  else if (userAgent.contains("Safari")){
    		/**
    		 * SAFARI系列
    		 */
    		String temp = userAgent.substring(userAgent.indexOf("Version/") + 7); 
    		String safariVersion = "";  
    		if (temp.indexOf(" ") < 0) {
    			safariVersion = temp;  
    		} else {
    			safariVersion = temp.substring(1, temp.indexOf(" "));  
    		}
    		us[0]="Safari";
    		us[1]=safariVersion;
    	}else {
    		us[0]="UNKONW";
    		us[1]="UNKONW"; 
    	}  
    	return us;  
    }  
}
