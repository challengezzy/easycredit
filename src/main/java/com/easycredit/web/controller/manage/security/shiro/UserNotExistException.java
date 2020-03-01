package com.easycredit.web.controller.manage.security.shiro;

import org.apache.shiro.authc.AuthenticationException;

/**
 * 用户不在异常
 */
public class UserNotExistException extends AuthenticationException {

	private static final long serialVersionUID = 6514132787268031433L;

	public UserNotExistException() {
		super();
	}

	public UserNotExistException(String message, Throwable cause) {
		super(message, cause);
	}

	public UserNotExistException(String message) {
		super(message);
	}

	public UserNotExistException(Throwable cause) {
		super(cause);
	}

}
