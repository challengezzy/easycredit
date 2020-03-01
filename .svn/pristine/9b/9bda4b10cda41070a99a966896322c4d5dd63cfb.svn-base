package com.easycredit.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * SHA-256加密
 * 
 * @param strSrc
 *            要加密的字符串
 * @param encName
 *            加密类型
 * @return
 */
public class SHA256EncryptUtil {
	//sha256加密
	public static final String sha_256 = "SHA-256";
	
	/**
	 * sha256加密
	 * @param strSrc
	 * @return
	 */
	public static String Encrypt(String strSrc) {
		MessageDigest md = null;
		String strDes = null;

		byte[] bt = strSrc.getBytes();
		try {
			md = MessageDigest.getInstance(sha_256);
			md.update(bt);
			// to HexString
			strDes = bytes2Hex(md.digest()); 
			//转成大写
			strDes = strDes.toUpperCase();
			strDes = secondaryEncrypt(strDes);
		} catch (NoSuchAlgorithmException e) {
			return null;
		}
		return strDes;
	}

	public static String bytes2Hex(byte[] bts) {
		String des = "";
		String tmp = null;
		for (int i = 0; i < bts.length; i++) {
			tmp = (Integer.toHexString(bts[i] & 0xFF));
			if (tmp.length() == 1) {
				des += "0";
			}
			des += tmp;
		}
		return des;
	}
	/**
	 * 二次加密操作
	 * @param strDes
	 * @return
	 */
	public static String secondaryEncrypt(String strDes){
		String temp = strDes.substring(0,1);
		strDes = strDes.substring(1);
		strDes = strDes + temp;
		return strDes;
	}
	
	public static void main(String args[]){
		String s=SHA256EncryptUtil.Encrypt("123456");
		System.out.println(s);
	}
}
