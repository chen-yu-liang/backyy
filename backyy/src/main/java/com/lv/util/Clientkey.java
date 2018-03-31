package com.lv.util;

import java.util.UUID;


public class Clientkey {

	 /**
     * 生成交易密钥
     */
    public static String key=Clientkey.getUUID();           //交易秘钥
    public static String payKey = Clientkey.getPayUUID();   //代付秘钥
    public static String getUUID(){ 
        String s = UUID.randomUUID().toString(); 
        //去掉“-”符号 
        String key=s.substring(0,8)+s.substring(9,13)+s.substring(14,18)+s.substring(19,23)+s.substring(24);
        return key; 
    }
    public static String getPayUUID(){ 
        String ss = UUID.randomUUID().toString(); 
        //去掉“-”符号 
        String payKey=ss.substring(0,8).toUpperCase();
        return payKey; 
    } 
    public static void main(String[] args) {
    	System.out.println(key);
    	System.out.println(payKey);
     }
}
