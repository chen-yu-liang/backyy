package com.lv.util;


import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

import net.sf.json.JSONObject;

public class Creditdemo {

	private SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
	private KeyedDigestMD5 md5 = new KeyedDigestMD5();
	private CipherUtil cipherUtil = new CipherUtil();
	private String key = "";

	/**
	 * 
	 *********************************************************.<br>
	 * [方法] fourFactor <br>
	 * [描述] 四要素接口 <br>
	 * [参数] 无参 <br>
	 * [返回] void <br>
	 * [时间] 2016年12月8日 上午9:44:34 <br>
	 *********************************************************.<br>
	 */
	public Map<String, String> fourFactor(Map<String, String> map) {
		key=map.get("key");		
		TreeMap<String, String> hm = new_TreeMap();
		hm.put("clientNo", map.get("client_no")); // 账户开立时分配，每个接入方的唯一标识
		hm.put("reqType", des(map.get("type"),key));
		hm.put("cid", des(map.get("cid"),key)); // 身份证号码
		hm.put("name", des(map.get("name"),key)); // 姓名
		hm.put("card", des(map.get("card"),key)); // 银行卡号
		hm.put("mobile", des(map.get("mobile"),key)); // 手机号码
		hm.put("reqDid", des("20161219223512",key)); // 接入方生成的唯一查询流水号， 长度32位以内
    
		
		
		System.out.println("hm:"+hm);
		String response = request(hm); //发送请求
		Map<String, String> res_map = jsonToMap(response);
		System.out.println("返回：" + res_map);
		return res_map;
	}
	
	public Map<String, String> merchantEnter(Map<String, String> map) {
		key=map.get("key");
		TreeMap<String, String> param = new_TreeMap();
		param.put("clientNo", map.get("client_no"));
        param.put("url", "http://192.168.1.106:10208/codepay/gateway");
		String response = request(param); //发送请求
		Map<String, String> res_map = jsonToMap(response);
		System.out.println("返回：" + res_map);
		return res_map;
	}

	/**
	 * 
	 *********************************************************.<br>
	 * [方法] request <br>
	 * [描述] 发送请求 <br>
	 * [参数] 请求参数 <br>
	 * [返回] String <br>
	 * [时间] 2016年12月8日 上午9:45:57 <br>
	 *********************************************************.<br>
	 */
	private String request(TreeMap<String, String> hm) {
		String param = MapToParam(hm);
		System.out.println("请求：" + param);
		String re = HttpUtil.requestGet(param); // 响应结果
//		String res = "";
//		try {
//			res = new String(re.getBytes(),"utf-8");
//		} catch (UnsupportedEncodingException e) {
//			e.printStackTrace();
//		}
		System.out.println(re);
		return re;
	}

	
	private String MapToParam(TreeMap<String, String> hm) {
		TreeMap<String, String> param = new_TreeMap();
		String url = hm.get("url");
		hm.remove("url");
		String param1 = "";
		for (Map.Entry<String, String> entry : hm.entrySet()) {
			if (entry.getKey().equals("clientNo")) {
				param1 = param1 + entry.getKey() + entry.getValue();
			}else{
				param1 = param1 + entry.getKey() + decryptDes(entry.getValue(),key);
			}
			param.put(entry.getKey(), entry.getValue());
		}
	    param1 = param1 + key;
	    System.out.println("param1:" + param1+"----sdf");
		try {
			param.put("sign", md5.md5(param1).toUpperCase()) ;
		} catch (Exception e) {
			System.out.println("md5加密错误");
		}
		return mapToPara(param, url);
	}
	
	public static String mapToPara(TreeMap<String, String> map, String url) {
		Set<String> keys = map.keySet();
		String key = "";
		String value = "";
		StringBuffer jsonBuffer = new StringBuffer();
		jsonBuffer.append(url+"?");
		for (Iterator<String> it = keys.iterator(); it.hasNext();) {
			key = (String) it.next();
			value = map.get(key);
			jsonBuffer.append(key + "=" + value);
			if (it.hasNext()) {
				jsonBuffer.append("&");
			}
		}
		return jsonBuffer.toString();
	}

	public static String mapToJson(TreeMap<String, String> map) {
        Set<String> keys = map.keySet();
        String key = "";
        String value = "";
        StringBuffer jsonBuffer = new StringBuffer();
        jsonBuffer.append("{");
        for (Iterator<String> it = keys.iterator(); it.hasNext();) {
            key = (String) it.next();
            value = map.get(key);
            jsonBuffer.append("\""+ key + "\":" +"\""+ value+"\"");
            if (it.hasNext()) {
                jsonBuffer.append(",");
            }
        }
        jsonBuffer.append("}");
        return jsonBuffer.toString();
    }
	
	/**
	 * 
	 *********************************************************.<br>
	 * [方法] jsonToMap <br>
	 * [描述] json转map <br>
	 * [参数] TODO(对参数的描述) <br>
	 * [返回] Map<String,String> <br>
	 * [时间] 2016年12月15日 下午5:52:14 <br>
	 *********************************************************.<br>
	 */
	public static Map<String, String> jsonToMap(String jsonStr) {
		JSONObject jsonObj = JSONObject.fromObject(jsonStr);
		Iterator<String> nameItr = jsonObj.keys();
		String name;
		Map<String, String> outMap = new HashMap<String, String>();
		while (nameItr.hasNext()) {
			name = nameItr.next();
			outMap.put(name, jsonObj.getString(name));
		}
		return outMap;
	}
	
	private TreeMap<String, String> new_TreeMap() {
		TreeMap<String, String> hm = new TreeMap<String, String>(new Comparator<Object>() {
			public int compare(Object o1, Object o2) {
				if (o1 == null || o2 == null)
					return 0;
				return String.valueOf(o1).compareTo(String.valueOf(o2));
			}
		});
		return hm;
	}
	
	private String des(String str,String key) {
		return cipherUtil.encryptData(str, key);
	}
	
	private String decryptDes(String str, String key) {
		String dstr = "";
		try {
			dstr = cipherUtil.decryptData(str, key);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("des解密错误");	
		}
		return dstr;
	}

	public static void main(String[] args) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("client_no", "100110");
		map.put("type", "S0040");
		map.put("cid", "123456199001011233");
		map.put("name", "张三");
		map.put("card", "5555666677778888");
		map.put("mobile", "13800138000");
		map.put("key", "9844e09587bd810cf75e09179618d466");
	    System.out.println(map);
		
		Map<String, String> response = new Creditdemo().fourFactor(map);
	}
}
