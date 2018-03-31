package com.lv.controller.captcha;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lv.controller.BaseController;

/**
 * 使用Get的方式返回challenge和capthca_id,此方式以实现前后端完全分离的开发模式
 *
 */
@Scope("prototype")
@Controller
@RequestMapping("/StartCaptcha")
public class StartCaptchaController extends BaseController{
	
	/**
	 * 
	 *********************************************************.<br>
	 * [方法] register <br>
	 * [描述] 注册 <br>
	 * [参数] TODO(对参数的描述) <br>
	 * [返回] String <br>
	 * [时间] 2016-12-20 下午04:24:59 <br>
	 *********************************************************.<br>
	 */
	@RequestMapping("/register")
	public @ResponseBody String register(){
		GeetestLib gtSdk = new GeetestLib(GeetestConfig.getGeetest_id(), GeetestConfig.getGeetest_key(),GeetestConfig.isnewfailback());
		String resStr = "{}";
		//自定义userid
		String userid = "fltuser";
		//进行验证预处理
		int gtServerStatus = gtSdk.preProcess(userid);
		//将服务器状态设置到session中
		getSession().setAttribute(gtSdk.gtServerStatusSessionKey, gtServerStatus);
		//将userid设置到session中
		getSession().setAttribute("userid", userid);
		resStr = gtSdk.getResponseStr();
		return resStr;
	}
	
}