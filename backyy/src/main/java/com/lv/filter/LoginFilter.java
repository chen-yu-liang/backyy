
package com.lv.filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.filter.OncePerRequestFilter;

import com.lv.entity.Users;
import com.lv.util.EncryptionDES;

public class LoginFilter extends OncePerRequestFilter{
	@Override
	protected void doFilterInternal(HttpServletRequest request,
			HttpServletResponse response, FilterChain filterchain)
			throws ServletException, IOException {
		//获取当前用户对象
 		Users users = ((Users)request.getSession().getAttribute("userCode"));
        String uri = request.getRequestURI();
        String spm = request.getParameter("spm");
        //得到的结果为： /项目名
		String base = request.getContextPath();
        if ((users ==null || users.getUser_name() == null || "".equals(users.getUser_name()))  
        	&& !uri.startsWith(base+"/public/") && !uri.startsWith(base+"/Users/login")&&!uri.startsWith(base+"/Users/goToLogin")
        	&& !uri.startsWith(base+"/Users/goLogin")&& !uri.startsWith(base+"/Users/loginUsers")&& !uri.startsWith(base+"/StartCaptcha/register")
        	&& !uri.startsWith(base+"/Users/exitUsers")) {         //还没登录        	
        	//判断session是否为空,如果为空弹出登陆页面在当前页面
        	if((uri.endsWith(base)||uri.endsWith(base+"/")||uri.endsWith(base+"/Index/index")) && ("".equals(spm)||spm == null)){
        		response.sendRedirect(base+"/Users/login");
        	}else{
        		response.sendRedirect(base+"/Users/goToLogin");
        	}
		}else if(uri.startsWith(base+"/Users/exitUsers")){
			request.getSession().invalidate();
			response.sendRedirect(base+"/Users/login");
		}else{
			if(uri.endsWith(base) || uri.endsWith(base+"/")){
				try {
					//解密
					uri = new EncryptionDES().decrypt(spm);
					//转发
					request.getRequestDispatcher(uri).forward(request, response);
				} catch (Exception e) {
					response.sendRedirect(base+"/Users/exceptionPage");
				}
			}else{
				filterchain.doFilter(request, response);
			}
		}
	}
	
}

	