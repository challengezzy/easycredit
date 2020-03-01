package com.easycredit.utils;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class FileUploadUtils {
	public File file;// 上传文件域对象
	public String fileName;// 上传文件名
	public String saveFileName;// 从新命名后的文件名
	public String ContentType;// 上传文件类型
	public String savePath;// 保存文件的目录路径

	/**
	 * 获取指定文件的扩展名
	 * 
	 * @param f
	 * @return
	 */
	public static String getFileExtension(String fileName) {
		if (fileName != null) {
			int i = fileName.lastIndexOf('.');
			if (i > 0 && i < fileName.length() - 1) {
				return fileName.substring(i + 1).toLowerCase();
			}
		}
		return null;
	}

	/**
	 * 以时间命名
	 * 
	 * @param savePath
	 * @return
	 */
	public static String getDstFileName(String fileName) {
		String day = DateUtil.get("yyyyMMddHHmmSSS");
		int random = (int) (Math.random() * 9000) + 1000;
		return day + random + "." + getFileExtension(fileName);
	}

	public static String getDstFileName(String name, String fileName) {
		String day = DateUtil.get("ddHHmmSSS");
		int random = (int) (Math.random() * 9000) + 1000;
		return name + "_" + day + random + "." + getFileExtension(fileName);
	}

	/**
	 * 新建文件夹
	 * 
	 * @param savePath
	 */
	public static void newDateFolder(String savePath) {
		String path = savePath;
		File file = new File(path);
		if (!file.exists()) {
			file.mkdirs();
		}
	}

	/**
	 * 得到当天时间，用于命名文件夹
	 * 
	 * @return
	 */
	public static String getIntraday() {
		SimpleDateFormat format = new SimpleDateFormat("yyyyMM");
		Calendar c = Calendar.getInstance();
		return format.format(c.getTime());
	}

	/**
	 * 得到当月，用于命名文件夹
	 * 
	 * @return
	 */
	public static String getYMD() {
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
		Calendar c = Calendar.getInstance();
		return format.format(c.getTime());
	}

	/**
	 * 以逗号隔开 如isAllowType("jpg|sdf|sdf|sdf|sdf,")
	 * 
	 * @param types
	 * @return
	 */
	public boolean isAllowType(String types) {
		return isAllowType(getFileExtension(fileName), types);
	}

	/**
	 * 验证是否是允许上传的文件 以逗号隔开 如isAllowType("jsp","jpg|sdf|sdf|sdf|sdf")
	 * 
	 * @param ext
	 * @param types
	 * @return
	 */
	public boolean isAllowType(String ext, String types) {
		String[] typeArr = types.replaceAll(" ", "").split("\\|");
		ext = ext.replaceAll(" ", "");
		for (String type : typeArr) {
			if (ext.equalsIgnoreCase(type)) {
				return true;
			}
		}
		return false;
	}

	/**
	 * 文件大小是否在 a b之间， K 为单位
	 * 
	 * @return
	 */
	public boolean isSize(double a, double b) {
		try {
			double size = file.length();
			if (size > a * 1024 && size <= b * 1024) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	/**
	 * 返回上传成功结果
	 * 
	 * @param state
	 * @param uri
	 * @param msg
	 */
	public void result(String state, String uri, String msg) {
		// renderHtml("{ \"state\": \"" + state + "\", \"uri\":\"" + uri +
		// "\", \"message\": \"" + msg + "\" } ");
	}

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public void setFileFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getContentType() {
		return ContentType;
	}

	public void setContentType(String contentType) {
		ContentType = contentType;
	}

	public String getSavePath() {
		return savePath;
	}

	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}

	public void setSaveFileName(String saveFileName) {
		this.saveFileName = saveFileName;
	}

	public String getSaveFileName() {
		return saveFileName;
	}

}
