package com.lv.controller.captcha;

/**
 * GeetestWeb配置文件
 * 
 *
 */
public class GeetestConfig {

	// 填入自己的captcha_id和private_key
	private static final String geetest_id = "40e16e6a40e660196e562d2acb969bb3";
	private static final String geetest_key = "41475b2cb5ac9d1c9d9aaa92da32ec6b";
	private static final boolean newfailback = true;
	public static final String getGeetest_id() {
		return geetest_id;
	}

	public static final String getGeetest_key() {
		return geetest_key;
	}
	
	public static final boolean isnewfailback() {
		return newfailback;
	}


}
