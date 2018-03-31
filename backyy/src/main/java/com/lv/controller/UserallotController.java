
package com.lv.controller;


import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lv.entity.Userallot;
import com.lv.service.UserallotService;

/**
* ********************************************************
* @ClassName: UserallotController
* @Description: null
* @author 自动生成
* @date 2015-04-17 下午 05:19:24 
*******************************************************
*/
@Scope("prototype")
@Controller
@RequestMapping("/Userallot")
public class UserallotController extends BaseController{

	@Resource
	private UserallotService userallotService;

	/**
	 * ********************************************************
	 * @Title: list
	 * @Description: 分页,条件查询
	 * @return String
	 * @date 2015-04-17 下午 05:19:24 
	 ********************************************************
	 */
	 @RequestMapping("/list")
	public String list(){
		userallotService.getPageList(this.getPage());
		return this.display();
	}

	/**
	 * ********************************************************
	 * @Title: add
	 * @Description: 添加、显示
	 * @return String
	 * @date 2015-04-17 下午 05:19:24 
	 ********************************************************
	 */
	 @RequestMapping("/add")
	public String add(@RequestParam(value="id",required=false) Integer id){
		if(id!=null){
			Userallot userallot = userallotService.getOne(id) ;
			this.setAttribute("userallot",userallot);
		}
		return this.display();
	}

	/**
	 * ********************************************************
	 * @Title: save
	 * @Description: 修改保存
	 * @return String
	 * @date 2015-04-17 下午 05:19:24 
	 ********************************************************
	 */
	 @RequestMapping("/save")
	public @ResponseBody Map save(@ModelAttribute("Userallot") Userallot  userallot){
		int result=userallot.getId()==null?userallotService.insert(userallot):userallotService.update(userallot);
		return Success("保存["+userallot.getId()+"]成功","")	;
	}

	/**
	 * ********************************************************
	 * @Title: delete
	 * @Description: 删除
	 * @return String
	 * @date 2015-04-17 下午 05:19:24 
	 ********************************************************
	 */
	 @RequestMapping("/delete")
	public @ResponseBody Map delete(@RequestParam Integer id){
		int result=userallotService.delete(id);
		return Success("删除成功","");
	}

}

