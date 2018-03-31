package com.lv.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;

import org.apache.log4j.Logger;
import org.springframework.context.annotation.Scope;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.context.request.ServletWebRequest;

import com.lv.entity.Page;
import com.lv.entity.Users;
//import com.lv.service.BankHeadService;
//import com.lv.service.RateService;
import com.lv.util.GetCacheMethod;
import com.lv.util.MemCached;

@Scope("prototype")
public class BaseController {	
	private Page page;	
	protected Map mes=new HashMap<String,String>();//消息
	protected String message = "";//记录操作结果信息
	protected int resForFinally = 0;//默认成功,前台返回成功或者失败
	protected HttpServletRequest request;
	protected HttpServletResponse response;
	protected MemCached memCached=MemCached.getInstance();
//	@Resource
//	private BankHeadService bankHeadService;
//	@Resource
//	private RateService rateService;
	Logger log4j = Logger.getRootLogger();
	
    @ModelAttribute
    public void setReqAndResp(HttpServletRequest request,HttpServletResponse response){
    	this.request=request;
    	this.response=response;
    }
	 //图片保存地址
//	  protected String loadpath = "//app//upjas-2.0.4//welcome-content//backyy//UploadImg//";
//	  protected String fullPath = "/backyy/UploadImg";
//	  
//	  protected String del_loadpath = "//app//upjas-2.0.4//welcome-content//";
	  
	   protected String loadpath = "D:/apache-tomcat-7.0.85/webapps/backyy/UploadImg/";
	   protected String fullPath = "/backyy/UploadImg/";
	   
	   protected String del_loadpath = "D:/apache-tomcat-7.0.85/webapps/";

	/********************************************************
	 * @Title: getRequest
	 * @Description:返回当前调用方法的类名与方法名，做为VIEW的地址
	 * @return current class/method
	 * @date 2014-8-12 上午12:33:26
	 *********************************************************/
	public String display(){	    
		//String action = new Exception().getStackTrace()[1].getFileName().toString().replace("Controller.java", "");	//action名称
		String[] class_str=(this.getClass().getName()).split("\\.");
		System.out.println("class-str:"+class_str);
		String action=class_str[class_str.length-1].replace("Controller", "");
		System.out.println("action:"+action);
		String method = new Exception().getStackTrace()[1].getMethodName().toString();	//方法名称
		System.out.println("method:"+method);
		String fullPath = getRequest().getScheme()+"://"+getRequest().getServerName()+":"+getRequest().getLocalPort()+getBase();   
		System.out.println("fullPath:"+fullPath);
		setAttribute("base",fullPath);   //http://localhost/medicine
	    setAttribute("baseClass",fullPath+"/"+action);   //http://localhost/finance/action	
	    setAttribute("url", getRequest().getRequestURL().toString());     // http://localhost:8088/finance/Index/countryPage
	    setAttribute("action", action);
	    this.setAttribute("getCache", new GetCacheMethod(response)); //注册freemaker 自定义函数
		if(this.page!=null){			
			this.setAttribute("p", page);			
		}
		System.out.println(action + "/"+ method);
	    return action + "/"+ method;	
	}
	/**
	 * 
	 *********************************************************.<br>
	 * [方法] getBase <br>
	 * [描述] 获取项目名 <br>
	 * [参数] TODO(对参数的描述) <br>
	 * [返回] String <br>
	 * [时间] 2016-12-14 下午07:06:14 <br>
	 *********************************************************.<br>
	 */
	public String getBase(){
		String base = getRequest().getContextPath(); 
		return base;
	}
	/**
	 * ********************************************************
	 * @Title: setAttribute
	 * @Description: 获取setAttribute
	 * @return void
	 * @date 2014-8-12 上午12:39:55
	 ********************************************************/
	public void setAttribute(String name , Object value){		
		this.getRequest().setAttribute(name,value);
	}
	/**
	 * ********************************************************
	 * @Title: getParameter
	 * @Description: TODO(根据参数名获取值)
	 * @param argName
	 * @return String
	 * @date 2014-9-2 上午11:19:15
	 ********************************************************
	 */
    public String getParameter(String argName){
    	return this.getRequest().getParameter(argName);
    }
	
	/**
	 * ********************************************************
	 * @Title: getRequest
	 * @Description: 获取request
	 * @return HttpServletRequest
	 * @date 2014-8-12 上午12:59:09
	 ********************************************************
	 */
	public HttpServletRequest getRequest() {
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		return request;
	}
	/**
	 * ********************************************************
	 * @Title: getSession
	 * @Description: 获取Session
	 * @return Session
	 * @date 2014-8-12 上午12:59:09
	 ********************************************************
	 */
	
	public HttpSession getSession(){
		return getRequest().getSession();
	}
	
	/**
	 * ********************************************************
	 * @Title: getResponse
	 * @Description: TODO(获取response)
	 * @return HttpServletResponse
	 * @date 2014-11-1 下午10:43:12
	 ********************************************************
	 */
	public HttpServletResponse getResponse(){
		ServletWebRequest servletContainer = (ServletWebRequest)RequestContextHolder.getRequestAttributes();	
		return servletContainer.getResponse();
	}
	
	/**
	 * ********************************************************
	 * @Title: Sucess
	 * @Description: TODO(显示成功信息)
	 * @param message
	 * @return Map<String,String>
	 * @date 2014-9-2 上午10:38:17
	 ********************************************************
	 */
	public Map<String,String> Success(String message,String navTabId){	
		if(message.equals("")){
			message="操作成功";
		}
		mes.put("message", message);
		mes.put("statusCode", "200");
		mes.put("navTabId", navTabId);
		return mes;
	}
	
	/**
	 * ********************************************************
	 * @Title: Sucess
	 * @Description: TODO(显示成功信息)
	 * @param message
	 * @return Map<String,String>
	 * @date 2014-9-2 上午10:38:17
	 ********************************************************
	 */
	public Map<String,String> Success(String message){	
		if(message.equals("")){
			message="操作成功";
		}
		mes.put("message", message);
		mes.put("statusCode", "200");
		return mes;
	}
	
	public Map<String,String> error(String message){	
		if(message.equals("")){
			message="操作失败";
		}
		mes.put("message", message);
		mes.put("statusCode", "300");
		return mes;
	}
	/**
	 * ********************************************************
	 * @Title: message
	 * @Description: TODO(返回消息到前端)
	 * @param message
	 * @param result
	 * @return Map<String,String>
	 * @date 2014-11-1 下午06:49:18
	 ********************************************************
	 */
	public Map<String,String> message(String message,boolean result){
		mes.put("statusCode", result?"200":"300");
		mes.put("message", message);
		return mes;
	}
	
	/**
	 * ********************************************************
	 * @Title: message
	 * @Description: TODO(这里用一句话描述这个类的作用)
	 * @param message
	 * @param result
	 * @return Map<String,String>
	 * @date 2014-11-1 下午06:53:02
	 ********************************************************
	 */
	public Map<String,String> message(String message,int result){
		mes.put("statusCode", result==0?"200":"300");
		mes.put("message", message);
		return mes;
	}
	/**
	 * 
	 *********************************************************.<br>
	 * [方法] getUserName <br>
	 * [描述] 获取当前用户登录名 <br>
	 * [参数] TODO(对参数的描述) <br>
	 * [返回] String <br>
	 * [时间] 2015-4-16 上午09:45:52 <br>
	 *********************************************************.<br>
	 */
	public static String getUserName(){
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		String userName = ((Users)request.getSession().getAttribute("userCode")).getUser_name();
		return userName;
	}
	/**
	 * 
	 *********************************************************.<br>
	 * [方法] getRealName <br>
	 * [描述] 获取用户真实姓名 <br>
	 * [参数] TODO(对参数的描述) <br>
	 * [返回] String <br>
	 * [时间] 2015-5-28 上午11:14:36 <br>
	 *********************************************************.<br>
	 */
	public String getRealName(){
		String realName = getUsers().getCn_name();
		return realName;
	}
	/**
	 * 
	 *********************************************************.<br>
	 * [方法] getUsers <br>
	 * [描述] 获取用户对象 <br>
	 * [参数] TODO(对参数的描述) <br>
	 * [返回] Users <br>
	 * [时间] 2015-4-16 下午05:12:29 <br>
	 *********************************************************.<br>
	 */
	public Users getUsers(){
		Users users = (Users)getSession().getAttribute("userCode");
		return users;
	}
	/**
	 * 
	 *********************************************************.<br>
	 * [方法] getCurrentTime <br>
	 * [描述] TODO(这里用一句话描述这个方法的作用) <br>
	 * [参数] type 0 yyyy-MM-dd HH:mm:ss 1 yyyy-MM-dd hh:mm:ss 2 yyyy-MM-dd <br>
	 * [返回] String <br>
	 * [时间] 2015-4-16 上午09:57:38 <br>
	 *********************************************************.<br>
	 */
	public String getCurrentTime(int type){
		String dateType = "";
		switch (type) {
			case 0:
				dateType = "yyyy-MM-dd HH:mm:ss";
				break;
			case 1:
				dateType = "yyyy-MM-dd hh:mm:ss";
				break;
			case 2:
				dateType = "yyyy-MM-dd";
				break;
		}
		SimpleDateFormat sdf = new SimpleDateFormat(dateType);
		String dateTime = sdf.format(new Date());
		return dateTime;
	}
	
	//---------------------------------------
	public Page getPage() {	
		if(page==null){			
			page=new Page();			
		}		
		return page;
	}

	public void setPage(Page page) {	
		this.page = page;
	}
	public Map getMes() {
		return mes;
	}

	public void setMes(Map mes) {
		this.mes = mes;
	}
	
	//将数组转化成json对象
	public static JSONArray listByJSon(List<String> list){
		String[] valueArr = new String[list.size()];
		for(int i=0;i<list.size();i++){
			valueArr[i]= ""+list.get(i)+"";
		}
		JSONArray json = JSONArray.fromObject(valueArr);
		return json;
	}
   	/**
	 * 
	 * ********************************************************
	 * @Title: getBank_name
	 * @Description: 查询总行名称  grade=0
	 * @return List<String>
	 * @date 2016-1-26
	 ********************************************************
	 */
//	public List<Map<String, Object>> getBank_name(){
//		List<Map<String, Object>> listBank= (List<Map<String, Object>>) memCached.get("listBank");
//		if(listBank==null){
//			listBank =  bankHeadService.getObjectList("selectbank_name");
//			memCached.add("listBank", listBank);
//		}
//		List<String> list=new ArrayList<String>();
//		for (Map<String, Object> map : listBank) {
//			String bank_num=map.get("BANK_NUM").toString();
//			String bank_name=map.get("BANK_NAME").toString();			
//			list.add(bank_name+"_"+bank_num);
//		}
//		JSONArray json = listByJSon(list);
//		setAttribute("bankJson", json.toString());
//		return listBank;
//	}			
//	/**
//	 ********************************************************* 
//	 * @Title: enclosing_method
//	 * @Description: 备注信息
//	 * @return return_type
//	 * @date 2016-2-18
//	 ******************************************************** 
//	 */
//	public List<Map<String, Object>> getRateInfo(){
//		List<Map<String, Object>> rateInfolist=rateService.getList("getRate");
//		List<String> list=new ArrayList<String>();//全部费率
//		for (Map<String, Object> map : rateInfolist) {
//			String rate_no=map.get("RATE_NO").toString();
//			String rate_name=map.get("RATE_NAME").toString();
//			list.add(rate_no+"-"+rate_name);
//		}
//		JSONArray json = listByJSon(list);
//		setAttribute("rateJson", json.toString());//全部费率
//		return rateInfolist;
//	}
	
	
}
