
package com.lv.controller;


import java.util.Map;
import com.lv.entity.Behavior;
import com.lv.service.BehaviorService;
import javax.annotation.Resource;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
* ********************************************************
* @ClassName: BehaviorController
* @Description: 行为记录表
* @author 自动生成
* @date 2016-12-09 上午 10:58:42 
*******************************************************
*/
@Scope("prototype")
@Controller
@RequestMapping("/Behavior")
public class BehaviorController extends BaseController{

	@Resource
	private BehaviorService behaviorService;

	/**
	 * ********************************************************
	 * @Title: list
	 * @Description: 分页,条件查询
	 * @return String
	 * @date 2016-12-09 上午 10:58:42 
	 ********************************************************
	 */
	 @RequestMapping("/list")
	public String list(){
		behaviorService.getPageList(this.getPage());
		return this.display();
	}

	/**
	 * ********************************************************
	 * @Title: add
	 * @Description: 添加、显示
	 * @return String
	 * @date 2016-12-09 上午 10:58:42 
	 ********************************************************
	 */
	 @RequestMapping("/add")
	public String add(@RequestParam(value="id",required=false) Integer id){
		if(id!=null){
			Behavior behavior = behaviorService.getOne(id) ;
			this.setAttribute("behavior",behavior);
		}
		return this.display();
	}

	/**
	 * ********************************************************
	 * @Title: save
	 * @Description: 修改保存
	 * @return String
	 * @date 2016-12-09 上午 10:58:42 
	 ********************************************************
	 */
	 @RequestMapping("/save")
	public @ResponseBody Map save(@ModelAttribute("Behavior") Behavior  behavior){
		int result=behavior.getId()==null?behaviorService.insert(behavior):behaviorService.update(behavior);
		return message("保存["+behavior.getId()+"]成功",resForFinally)	;
	}

	/**
	 * ********************************************************
	 * @Title: delete
	 * @Description: 删除
	 * @return String
	 * @date 2016-12-09 上午 10:58:42 
	 ********************************************************
	 */
	 @RequestMapping("/delete")
	public @ResponseBody Map delete(@RequestParam Integer id){
		int result=behaviorService.delete(id);
		return message("删除成功",resForFinally);
	}

}

