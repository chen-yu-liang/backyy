package com.lv.interceptor;
 
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import com.lv.entity.Users;
import com.lv.util.DataCache;

public class DataInterceptor implements HandlerInterceptor {
	
	public boolean preHandle(HttpServletRequest request,HttpServletResponse response, Object handler) throws Exception {
		//获取当前用户对象
		request.setAttribute("carte_id",request.getParameter("carte_id"));
		return true;
//		HttpSession session = request.getSession();
//		Users users = ((Users)session.getAttribute("userCode"));
//		String uri = request.getRequestURI();
//		//得到的结果为： /项目名
//		String base = request.getContextPath();
//		String method = "";
//		if(uri.lastIndexOf("/")!=-1){
//			method = uri.substring(uri.lastIndexOf("/")+1);
//		}
//		if((users ==null || users.getUser_name() == null || "".equals(users.getUser_name())) ||checkURL(base,uri) 
//				|| (!method.equals("") && method.startsWith("public"))){
//			return true;
//		}else if(users.getIsadmin()==0){
//			String menuStr = session.getAttribute("menuStr")+"";	//菜单权限
//			String btnStr = session.getAttribute("btnStr")+"";		//按钮权限
//			String permissionStr = menuStr+btnStr;
//			if(permissionStr.indexOf(uri)==-1){
//				response.sendRedirect(base+"/Users/noPermission");
//				return false;
//			}
//		}
//		return true;
    }

	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
	}

	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		// TODO Auto-generated method stub
		
	}
	
	/**
	 * 
	 *********************************************************.<br>
	 * [方法] checkURL <br>
	 * [描述] 校验放行路径 <br>
	 * [参数] TODO(对参数的描述) <br>
	 * [返回] boolean <br>
	 * [时间] 2016-12-6 下午5:31:06 <br>
	 *********************************************************.<br>
	 */
	public boolean checkURL(String base,String uri){
		//获取放行路径
		Map<String,Object> carteMap = (Map<String,Object>)new DataCache().getCache("b_releaseUrl","b_ReleaseUrl",null,null);
		boolean flag = false;
		Iterator<Map.Entry<String,Object>> iter = carteMap.entrySet().iterator();
		while (iter.hasNext()){
			Entry<String, Object> e = iter.next();
			Map<String,Object> refmap = (Map<String,Object>) e.getValue();
			String validateUrl = (String)refmap.get("INFO");
			if(uri.startsWith(base+validateUrl)){
				return true;
			}
		}
		return flag;
	}
	
}
