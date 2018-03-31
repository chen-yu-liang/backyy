
package com.lv.listener;

import java.util.Date;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;



public class SessionListener  implements HttpSessionListener{

	public void sessionCreated(HttpSessionEvent se) {
		HttpSession session = se.getSession();
		session.setMaxInactiveInterval(3600);  //生命周期  秒
		System.out.println(session.getId() + "创建"+new Date());
	}

	public void sessionDestroyed(HttpSessionEvent se) {
//		System.out.println(se.getSession().getId() + "销毁"+new Date());
	}

	 

}

	