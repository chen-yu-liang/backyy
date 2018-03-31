package com.lv.controller;



import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Scope("prototype")//保持单例模式
@Controller
@RequestMapping("/Index") 
public class IndexController extends BaseController{
	

	/**
	 * ********************************************************
	 * @Title: index
	 * @Description: TODO(这里用一句话描述这个类的作用)
	 * @return String
	 * @date 2014-8-12 下午10:53:58
	 ********************************************************
	 */
	@RequestMapping("/index") 
	public String index(){
	
		//this.getSession().setAttribute("usercode", "xh");
		return this.display();
	}
	
	/*@RequestMapping("/save")		
	public @ResponseBody Map save(@ModelAttribute("Country") Country c){
			
		return Sucess("添加成功");		success	
	}*/
	/**
	 * ********************************************************
	 * @Title: add
	 * @Description: TODO(这里用一句话描述这个类的作用) void
	 * @date 2014-9-4 下午09:45:56
	 ********************************************************
	 */
	@RequestMapping("/add")
	public String add(){
		return this.display();
	}
		
	

	

}
