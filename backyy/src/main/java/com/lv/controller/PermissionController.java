
package com.lv.controller;


import java.util.Map;
import javax.annotation.Resource;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.lv.entity.BehaviorModel;
import com.lv.entity.Permission;
import com.lv.service.BehaviorModelService;
import com.lv.service.PermissionService;
import com.lv.util.MemCached;

/**
* ********************************************************
* @ClassName: PermissionController
* @Description: null
* @author 自动生成
* @date 2015-04-10 下午 02:11:39 
*******************************************************
*/
@Scope("prototype")
@Controller
@RequestMapping("/Permission")
public class PermissionController extends BaseController{

	@Resource
	private PermissionService permissionService;
	@Resource
	private BehaviorModelService behaviorModelService;
	
	/**
	 * ********************************************************
	 * @Title: list
	 * @Description: 分页,条件查询
	 * @return String
	 * @date 2015-04-10 下午 02:11:39 
	 ********************************************************
	 */
	 @RequestMapping("/list")
	public String list(){
		String carteId = getParameter("carte_id");
		if(carteId!=null&&!carteId.equals("")){
			permissionService.getPageList(this.getPage());
		}
		return this.display();
	}

	/**
	 * ********************************************************
	 * @Title: add
	 * @Description: 添加、显示
	 * @return String
	 * @date 2015-04-10 下午 02:11:39 
	 ********************************************************
	 */
	 @RequestMapping("/add")
	public String add(@RequestParam(value="id",required=false) Integer id){
		if(id!=null){
			//查询按钮记录
			Permission permission = permissionService.getOne(id);
			//查询行为模板
			BehaviorModel bh = behaviorModelService.getOne(id);
			if(bh!=null){
				permission.setBehavior(bh.getBehavior_name());
				permission.setBehavior_args(bh.getBehavior_args());
			}
			this.setAttribute("permission",permission);
		}
		//菜单标识
		setAttribute("carte_id",getParameter("carte_id"));
		return this.display();
	}

	/**
	 * ********************************************************
	 * @Title: save
	 * @Description: 修改保存
	 * @return String
	 * @date 2015-04-10 下午 02:11:39 
	 ********************************************************
	 */
	 @RequestMapping("/save")
	public @ResponseBody Map save(@ModelAttribute("Permission") Permission  permission){
		//增加或删除返回结果
		int result = 0;
		String behaviorName = permission.getBehavior();
		if(permission.getId()==null){
			result = permissionService.insert(permission);
			String perId = ((Map<String, Object>)permissionService.selectOne("lastInsertId", null)).get("PER_ID").toString();
			//如果行为名称不为空则添加行为记录
			if(behaviorName!=null){
				BehaviorModel bm = new BehaviorModel();
				bm.setPer_id(perId);
				bm.setBehavior_name(behaviorName);
				bm.setBehavior_args(permission.getBehavior_args());
				behaviorModelService.insert(bm);
			}
			message = "添加按钮【"+permission.getButton_name()+"】";
		}else{
			result = permissionService.update(permission);
			if(behaviorName!=null){
				BehaviorModel bm = new BehaviorModel();
				bm.setPer_id(permission.getId()+"");
				bm.setBehavior_name(behaviorName);
				bm.setBehavior_args(permission.getBehavior_args());
				//修改按钮状态
				behaviorModelService.update("updatePerModelStatus",bm);
				//添加按钮信息
				behaviorModelService.insert(bm);
			}
			message = "修改按钮【"+permission.getButton_name()+"】";
		}
		//清除缓存
		MemCached.getInstance().clearAllCache();
		message += result>0?"成功!":"失败!";
		mes = message(message, resForFinally);
		mes.put("jsonData", permission.getCarte_id());
		return mes;
	}

	/**
	 * ********************************************************
	 * @Title: delete
	 * @Description: 删除
	 * @return String
	 * @date 2015-04-10 下午 02:11:39 
	 ********************************************************
	 */
	 @RequestMapping("/delete")
	public @ResponseBody Map delete(@RequestParam Integer id){
		String carte_id = getParameter("carte_id");	//菜单id
		permissionService.delete(id);				//删除按钮
		message = "删除成功";
		mes = message(message, resForFinally);
		mes.put("jsonData", carte_id);
		return mes;
	}
	
}

