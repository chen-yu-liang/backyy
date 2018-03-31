
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

import com.lv.entity.BackCarte;
import com.lv.service.BackCarteService;
import com.lv.service.PermissionService;
import com.lv.util.DataCache;
import com.lv.util.MemCached;
import com.lv.util.Utils;

/**
* ********************************************************
* @ClassName: BackCarteController
* @Description: 菜单表
* @author 自动生成
* @date 2015-04-07 上午 10:48:43 
*******************************************************
*/
@Scope("prototype")
@Controller
@RequestMapping("/BackCarte")
public class BackCarteController extends BaseController{

	@Resource
	private BackCarteService backCarteService;
	@Resource
	private PermissionService permissionService;
	/**
	 * ********************************************************
	 * @Title: list
	 * @Description: 分页,条件查询
	 * @return String
	 * @date 2015-04-07 上午 10:48:43 
	 ********************************************************
	 */
	 @RequestMapping("/list")
	public String list(){
		String platSign = getParameter("platSign");
		setAttribute("platSign", platSign);
		return this.display();
	}

	/**
	 * ********************************************************
	 * @Title: add
	 * @Description: 添加、显示
	 * @return String
	 * @date 2015-04-07 上午 10:48:43 
	 ********************************************************
	 */
	 @RequestMapping("/add")
	public String add(@RequestParam(value="id",required=false) Integer id){
		if(id!=null){
			BackCarte backCarte = backCarteService.getOne(id) ;
			this.setAttribute("backCarte",backCarte);
		}
		return this.display();
	}

	/**
	 * ********************************************************
	 * @Title: save
	 * @Description: 修改保存
	 * @return String
	 * @throws ExceptionDeal 
	 * @date 2015-04-07 上午 10:48:43 
	 ********************************************************
	 */
	 @RequestMapping("/save")
	public @ResponseBody Map save(@ModelAttribute("BackCarte") BackCarte  backCarte,@RequestParam Map map){
		//获取数据库最大parent_id
		List<Map<String, Object>> maxPid = null;
		//获取前台选中parentId
		String parentId = (String)map.get("organ_nb");
		//保存的parent_id,默认为当前parent_id
		String parent_id = (String)map.get("parentId");
		//记录操作前该菜单父类标识
		String parent = (String)map.get("parent");
		backCarte.setParents(parentId);
		//记录查询最大parent_id对象
		Map<String, Object> pmap = null;
		int levels = 1;
		/**
		 * 如果当前选择的不是根节点,需要根据选择的值判断添加的菜单属于几级菜单,
		 * levels会跟着变动,parent_id值也将跟着变动,以下操作为了变动这两个参数,为核心操作
		 */
		if(!parentId.equals("0")){
			//依靠选择父类菜单获取该菜单等级
			levels = getLevels(parentId)+1;
			/***
			 * 子节点添加的时候parent值为0,修改的时候则会变动,
			 * 如果选中的和页面显示的parent_id相同则不需要重新构造parent_id,如果不同则证明改变了上级节点,需要重构parent_id
			 */
			if(!parentId.equals(parent)){
				//查询该节点下是否有子节点
				maxPid = backCarteService.getList("selSize", parent_id);
				if(maxPid.size()>0){
					message = "该节点下存在子节点,不可移动!";
					resForFinally = 1;
				}else{
					//查询该菜单下最大parent_id
					maxPid = backCarteService.getList("selMaxPid", parentId);
					pmap = maxPid.get(0);
					parent_id = maxPid.size()>0?pmap.get("PARENTID").equals("")?parentId:(String)pmap.get("PARENTID"):parentId;
					parent_id = getParentId(parent_id,levels);
				}
			}
		}else{
			if(backCarte.getId()==null){
				maxPid = backCarteService.getList("selMaxParent","");
				pmap = maxPid.get(0);
				parent_id = maxPid.size()>0?pmap.get("PARENTID").equals("")?parentId:(String)pmap.get("PARENTID"):"00000000";
				parent_id = getParentId(parent_id,levels);
			}
		}
		//如果以上流程没有出现问题,则进行添加或修改操作
		if(resForFinally==0){
			//赋值
			backCarte.setParent_id(parent_id);
			backCarte.setRel((backCarte.getHref().replaceFirst("/","_")).replaceFirst("/",""));
			backCarte.setLevels(levels);
			int result=0;
			Integer id = backCarte.getId();
			if(id==null){
				message = "添加菜单【"+backCarte.getCarte_name()+"】";
				result = backCarteService.insert(backCarte);
			}else{
				message = "修改菜单【"+backCarte.getCarte_name()+"】";
				BackCarte bc = backCarteService.getOne("getOne",id);
				if(bc!=null){
					result = backCarteService.update(backCarte);
				}else{
					//清除缓存对象
					MemCached.getInstance().clearAllCache();
					message = "该对象不存在,修改";
					resForFinally = 1;
				}
			}
			boolean flag = false;
			if(result>0){
				MemCached.getInstance().clearAllCache();
				flag = true;
			}
			message += flag==true?"成功!":"失败!";
		}
		mes = message(message, resForFinally);
		mes.put("navTabId", "BackCarte_list");
		return mes;
	}

	/**
	 * ********************************************************
	 * @Title: delete
	 * @Description: 删除
	 * @return String
	 * @throws ExceptionDeal 
	 * @date 2015-04-07 上午 10:48:43 
	 ********************************************************
	 */
	 @RequestMapping("/delete")
	public @ResponseBody Map delete(@RequestParam Integer id){
		String signPlatForm = (String)getSession().getAttribute("signPlatForm");
		List<Map<String, Object>> carteList = null; 
		if("0".equals(signPlatForm)){
			carteList = (List<Map<String,Object>>)new DataCache().getCache("carte","Carte",null,null,null);
		}else if("1".equals(signPlatForm)){
			carteList = (List<Map<String,Object>>)new DataCache().getCache("agentCarte","AgentCarte",null,null,null);
		}else if("2".equals(signPlatForm)){
			carteList = (List<Map<String,Object>>)new DataCache().getCache("financeCarte","FinanceCarte",null,null,null);
		}
		Map<String,Map<String, Object>> mapObj = Utils.listToMap(carteList, "ID");
		Map<String, Object> mapResult = mapObj.get(""+id);
		String parent_id = (String)mapResult.get("PARENT_ID");
		//查询该节点下是否存在子节点
		List<Map<String, Object>> childObj = backCarteService.getList("selSize", parent_id);
		if(childObj.size()>0){
			message = "该节点下存在子节点,不可删除!";
			resForFinally = 1;
		}else{
			//删除菜单
			backCarteService.delete(id);
			//删除按钮
			permissionService.delete("deleteByCarteId", id);
			//清除缓存
			MemCached.getInstance().clearAllCache();
			message = "删除菜单【"+mapResult.get("CARTE_NAME")+"】成功!";
		}
		this.mes.put("navTabId", "BackCarte_list");
		return message(message, resForFinally);
	}
	 /**
	  * 
	  *********************************************************.<br>
	  * [方法] menu <br>
	  * [描述] 返回页面 <br>
	  * [参数] TODO(对参数的描述) <br>
	  * [返回] String <br>
	  * [时间] 2015-4-7 下午06:00:30 <br>
	  *********************************************************.<br>
	  */
	@RequestMapping("/menu")
	public String menu(){
		return display();
	}
	/**
	 * 
	 *********************************************************.<br>
	 * [方法] prepare <br>
	 * [描述] 查询菜单参数 <br>
	 * [参数] TODO(对参数的描述) <br>
	 * [返回] String <br>
	 * [时间] 2015-4-7 下午06:05:58 <br>
	 *********************************************************.<br>
	 * @throws ExceptionDeal 
	 */
	@RequestMapping("/prepare")
	public String prepare(@RequestParam String id,String platSign){
		List<Map<String, Object>> carteList = null;
		if("0".equals(platSign)){		//总后台
			carteList = (List<Map<String,Object>>)new DataCache().getCache("carte","Carte",null,null,null);
		}else if("1".equals(platSign)){	//代理商平台
			carteList = (List<Map<String,Object>>)new DataCache().getCache("agentCarte","AgentCarte",null,null,null);
		}else if("2".equals(platSign)){	//财务平台
			carteList = (List<Map<String,Object>>)new DataCache().getCache("financeCarte","FinanceCarte",null,null,null);
		}
		Map<String,Map<String, Object>> mapObj = Utils.listToMap(carteList, "ID");
		Map<String, Object> map = mapObj.get(id);
		//获取父类节点
		String parents = (String)map.get("PARENTS");
		//默认为根节点父类名称
		String parentCarte = "主菜单";
		//如果获取对象不是根节点则获取该节点的父类名称
		if(!parents.equals("0")){
			for(Map<String, Object> mapCarte:carteList){
				if(parents.equals((String)mapCarte.get("PARENT_ID"))){
					parentCarte = (String)mapCarte.get("CARTE_NAME");
					break;
				}
			}
		}
		//上级菜单名称
		map.put("PARENTCARTE", parentCarte);
		//判断是否是父节点
		map.put("PARENTROOT", parents);
		setAttribute("map", map);
		//存储访问菜单所属平台标识
		getSession().setAttribute("signPlatForm", platSign);
		return display();
	}
	/**
	 * 
	 *********************************************************.<br>
	 * [方法] getMenu <br>
	 * [描述] 获取ztree数据 <br>
	 * [参数] TODO(对参数的描述) <br>
	 * [返回] List<Map<String,Object>> <br>
	 * [时间] 2015-4-8 上午11:12:43 <br>
	 *********************************************************.<br>
	 * @throws ExceptionDeal 
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping("/publicMenu")
	public @ResponseBody List<Map<String, Object>> getMenu(){
		List<Map<String, Object>> l = null;
		Map<String, String> treeKey = null;
		String platSign = getParameter("platSign");
		if("0".equals(platSign)){		//总后台
			l = (List<Map<String, Object>>) new DataCache().getCache("carte","Carte",null,null,null);
		}else if("1".equals(platSign)){	//代理商平台
			l = (List<Map<String, Object>>) new DataCache().getCache("agentCarte","AgentCarte",null,null,null);
		}else if("2".equals(platSign)){	//财务平台
			l = (List<Map<String, Object>>) new DataCache().getCache("financeCarte","FinanceCarte",null,null,null);
		}
		treeKey = new HashMap<String, String>();
		treeKey.put("id", "PARENT_ID");
		treeKey.put("name", "CARTE_NAME");
		treeKey.put("pId", "PARENTS");
		l = Utils.toZtreeList(l, treeKey);
		return l;
	}
	/**
	 * 
	 *********************************************************.<br>
	 * [方法] getLevels <br>
	 * [描述] 获取菜单等级 <br>
	 * [参数] TODO(对参数的描述) <br>
	 * [返回] int <br>
	 * [时间] 2015-4-8 下午03:07:27 <br>
	 *********************************************************.<br>
	 */
	private int getLevels(String str){
		String strSplit = "";
		int levels = 0;
		for (int i = 0; i < str.length(); i=i+2) {
			if(i!=str.length()-2){
				strSplit= str.substring(i,i+2);
			}else{
				strSplit=str.substring(i);
			}
			if(!strSplit.equals("00")){
				levels++;
			}
		}
		return levels;
	}
	/**
	 * 
	 *********************************************************.<br>
	 * [方法] getParentId <br>
	 * [描述] 生成parentId <br>
	 * [参数] TODO(对参数的描述) <br>
	 * [返回] String <br>
	 * [时间] 2015-4-8 下午10:27:01 <br>
	 *********************************************************.<br>
	 */
	public String getParentId(String parent_id,int levels){
		 String res = Integer.parseInt(parent_id.substring(levels*2-2,levels*2))+1+"";
		 return parent_id.substring(0,levels*2-2)+(res.length()==2?res:"0"+res)+parent_id.substring(levels*2);
	}
}

