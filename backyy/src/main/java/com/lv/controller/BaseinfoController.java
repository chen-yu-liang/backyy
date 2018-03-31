package com.lv.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lv.entity.Baseinfo;
import com.lv.entity.BaseinfoClass;
import com.lv.service.BaseinfoClassService;
import com.lv.service.BaseinfoService;
import com.lv.util.Regstr;
import com.lv.util.Utils;
/***
 * ********************************************************
 * @ClassName: BaseinfoClassController
 * @Description: TODO(基本类、基本信息管理)
 * @author NoNo
 * @date 2014-11-1 下午01:59:15
 *******************************************************
 */
@Scope("prototype")//保持单例模式
@Controller
@RequestMapping("/Baseinfo") 
public class BaseinfoController extends BaseController {
	
	@Resource
	private  BaseinfoService baseinfoService;


	
	/**
	 * ********************************************************
	 * @Title: list
	 * @Description: TODO(基本类列表)
	 * @return String
	 * @date 2014-11-1 下午01:59:57
	 ********************************************************
	 */
	@RequestMapping("/list")		
	public String list(){
		this.getPage().getParams().put("class_en", "product_type");
		baseinfoService.getPageList(this.getPage());
		return this.display();
	}
	/**
	 * ********************************************************
	 * @Title: updateStatus
	 * @Description: 修改状态
	 * @return String
	 * @date 2017-08-22 下午 01:58:20 
	 ********************************************************
	 */
	 @RequestMapping("/updateStatus")
	public @ResponseBody Map updateStatus(@RequestParam Map map){
		 Integer s = Integer.valueOf(map.get("sta").toString());
		 Integer status = (s!=null&s==0)?1:0;
		 map.put("status", status);
		 int result = baseinfoService.delete("updateStatus", map);
		 return Success("操作成功");
	}	
	
}
