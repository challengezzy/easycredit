package com.easycredit.exception;

public class BusinessException extends Exception {
	private static final long serialVersionUID = -1829672078640113990L;

	private Integer code = -1;

	private String exceptionMsg = "Business Exception......";

	public BusinessException(String message) {
		super(message);
	}

	public BusinessException(Integer code) {
		super();
		this.code = code;

	}

	public BusinessException(Integer code, String exceptionMsg) {
		super(exceptionMsg);
		this.code = code;
		this.exceptionMsg = exceptionMsg;
	}

	public Integer getCode() {
		return code;
	}

	public void setCode(Integer code) {
		this.code = code;
	}

	public String getExceptionMsg() {
		return exceptionMsg;
	}

	public void setExceptionMsg(String exceptionMsg) {
		this.exceptionMsg = exceptionMsg;
	}
}
