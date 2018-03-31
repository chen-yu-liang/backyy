package com.lv.util;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class HttpUtil {
	public static void main(String[] args) {
		
	}
	
//	public static String requestPost(String reqParam){
//		//System.out.println("http://"+Constants.host+":"+Constants.port+"/HYCoreServer/api");
//		return requestPost("http://"+Constants.host+":"+Constants.port+"/HYCoreServer/api",reqParam);
//	}
	
	/**
	 * 
	 *********************************************************.<br>
	 * [方法] requestPost <br>
	 * [描述] TODO(这里用一句话描述这个方法的作�?) <br>
	 * [参数] TODO(对参数的描述) <br>
	 * [返回] String <br>
	 * [时间] 2015-7-31 下午04:26:25 <br>
	 *********************************************************.<br>
	 */
	public static String requestPost(String serviceUrl, String reqParam) {
	    BufferedReader reader = null;
	    String result = null;
	    StringBuffer sbf = new StringBuffer();
	    try {
	        URL url = new URL(serviceUrl);
	        HttpURLConnection connection = (HttpURLConnection) url.openConnection();
	        connection.setConnectTimeout(60000);
	        connection.setReadTimeout(60000);
	        connection.setRequestMethod("POST");
	        connection.setRequestProperty("Content-Type","application/x-www-form-urlencoded");
	        connection.setDoOutput(true);
	        connection.getOutputStream().write(reqParam.getBytes("UTF-8"));
	        connection.connect();
	        InputStream is = connection.getInputStream();
	        reader = new BufferedReader(new InputStreamReader(is, "UTF-8"));
	        String strRead = null;
	        while ((strRead = reader.readLine()) != null) {
	            sbf.append(strRead);
	            sbf.append("\r\n");
	        }
	        reader.close();
	        result = sbf.toString();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    System.out.println("result:"+result);
	    return result;
	}
	
	/**
	 * 
	 *********************************************************.<br>
	 * [方法] requestGet <br>
	 * [描述] TODO(这里用一句话描述这个方法的作�?) <br>
	 * [参数] TODO(对参数的描述) <br>
	 * [返回] String <br>
	 * [时间] 2015-7-31 下午04:37:37 <br>
	 *********************************************************.<br>
	 */
	public static String requestGet(String serviceUrl) {
		System.out.println("请求：" + serviceUrl);
	    BufferedReader reader = null;
	    String result = null;
	    StringBuffer sbf = new StringBuffer();
	    try {
	        URL url = new URL(serviceUrl);
	        HttpURLConnection connection = (HttpURLConnection) url.openConnection();
	        connection.setConnectTimeout(6000);
	        connection.setReadTimeout(6000);
	        connection.setRequestMethod("GET");
	        connection.setRequestProperty("Content-Type","application/x-www-form-urlencoded");
	        connection.connect();
	        InputStream is = connection.getInputStream();
	        reader = new BufferedReader(new InputStreamReader(is, "UTF-8"));
	        String strRead = null;
	        while ((strRead = reader.readLine()) != null) {
	            sbf.append(strRead);
	            sbf.append("\r\n");
	        }
	        reader.close();
	        result = sbf.toString();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return result;
	}
	
}

