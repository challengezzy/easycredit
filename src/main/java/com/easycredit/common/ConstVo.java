package com.easycredit.common;

import java.util.HashSet;
import java.util.Set;

/**
 * 常量保存位置
 * @author zzy
 *
 */
public class ConstVo {
	
	/**
	 *产品文件存储位置
	 */
	public static String PATH_FILE_PRODUCTINFO = "dataFile/productInfo/";
	
	public static Set<String> fileTypeImg = new HashSet<String>();
	static{
		fileTypeImg.add("image/jpeg");
		fileTypeImg.add("image/jpg");
		fileTypeImg.add("image/png");
	}
	
	/**
	 * 图片文件的扩展名集合
	 */
	public static Set<String> imgExpandedName = new HashSet<String>();
	static{
		imgExpandedName.add(".jpg");
		imgExpandedName.add(".jpeg");
		imgExpandedName.add(".png");
		imgExpandedName.add(".gif");
		imgExpandedName.add(".bmp");
	}
		

}
