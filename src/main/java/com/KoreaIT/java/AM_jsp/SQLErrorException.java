package com.KoreaIT.java.AM_jsp;

/*자바처럼 쓸 수 있음*/

public class SQLErrorException extends RuntimeException {
	private Exception origin;

	public SQLErrorException(String message, Exception origin) {
		super(message);
		this.origin = origin;
	}

	public Exception getOrigin() {
		return origin;
	}
}