package com.lv.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Regstr {
	public  final static String en="^[a-zA-Z]+$";//英文
	/**
	 * 正则表达式验证
	 * @param str
	 * @param regStr
	 * @return
	 */
	public static boolean checkReg(String str,String regStr){
	   Pattern pattern=Pattern.compile(regStr);
	   Matcher match=pattern.matcher(str);	
	   return  match.matches();	
	}
	
}

	