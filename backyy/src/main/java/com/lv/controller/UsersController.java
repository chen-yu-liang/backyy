
package com.lv.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.lv.conn.Conn;
//import com.lv.controller.captcha.GeetestConfig;
//import com.lv.controller.captcha.GeetestLib;
//import com.lv.entity.AgentInfo;
import com.lv.entity.FilesInfo;
import com.lv.entity.Users;
import com.lv.service.BackCarteService;
import com.lv.service.FilesInfoService;
import com.lv.service.PermissionService;
import com.lv.service.UserallotService;
import com.lv.service.UsersService;
import com.lv.util.DataCache;
import com.lv.util.EncryptionDES;
import com.lv.util.GetCacheMethod;
import com.lv.util.Utils;

/**
* ********************************************************
* @ClassName: UsersController
* @Description: 用户表
* @author 自动生成
* @date 2014-11-01 上午 11:29:15 
*******************************************************
*/
@Scope("prototype")
@Controller
@RequestMapping("/Users")
public class UsersController extends BaseController{
	@Resource
	private UsersService usersService;
	@Resource
	private BackCarteService backCarteService;
	@Resource
	private PermissionService permissionService;
	@Resource
	private UserallotService userallotService;
	@Resource
	private FilesInfoService filesInfoService;
	
	@RequestMapping("/login") 
	public String login(){
		Map cookie_map = Utils.ReadCookieMap(getRequest());  //获取登录的COOKIE 信息 
		if (cookie_map.get("cookie_user") != null) {
			this.setAttribute("login_user",((Cookie)cookie_map.get("cookie_user")).getValue());   //COOKIE用户名
			this.setAttribute("login_password",((Cookie)cookie_map.get("cookie_password")).getValue());   //COOKIE用户密码
			this.setAttribute("remember",((Cookie)cookie_map.get("remember")).getValue());   //记住密码
		}
		return this.display();
	}

	/**
	 * ********************************************************
	 * @Title: userLogin
	 * @Description: 用户登录方法
	  * @param userName 用户名
	 * @param userPwd  用户密码
	 * @param code 验证码
	 * @param remember 记住密码
	 * @return Map
	 * @date 2014-10-20 下午10:19:27
	 ********************************************************
	 */
	@RequestMapping(value="/loginUsers" , method = RequestMethod.POST) 
	public @ResponseBody Map loginUsers(@RequestParam("user_name") String user_name,@RequestParam("user_pass") String user_pass
			,@RequestParam(defaultValue="1",value="isLogin")Integer isLogin,HttpServletResponse response) throws Exception{
		Map<String, String> result = new HashMap<String, String>();
		System.out.println("进入111111111111111111");
		System.out.println("username:"+user_name);
		try {
			int gtResult = 1;
			//如果是站内登录，则不走验证
//			if(isLogin!=0){
//				GeetestLib gtSdk = new GeetestLib(GeetestConfig.getGeetest_id(), GeetestConfig.getGeetest_key(),GeetestConfig.isnewfailback());
//				String challenge = request.getParameter(GeetestLib.fn_geetest_challenge);
//				String validate = request.getParameter(GeetestLib.fn_geetest_validate);
//				String seccode = request.getParameter(GeetestLib.fn_geetest_seccode);
//				//从session中获取gt-server状态
//				int gt_server_status_code = (Integer) request.getSession().getAttribute(gtSdk.gtServerStatusSessionKey);
//				//从session中获取userid
//				String userid = (String)request.getSession().getAttribute("userid");
//				if (gt_server_status_code == 1) {
//					//gt-server正常，向gt-server进行二次验证
//					gtResult = gtSdk.enhencedValidateRequest(challenge, validate, seccode, userid);
//				} else {
//					// gt-server非正常情况下，进行failback模式验证
//					System.out.println("failback:use your own server captcha validate");
//					gtResult = gtSdk.failbackValidateRequest(challenge, validate, seccode);
//				}
//			}else{
//				//验证通过
//				gtResult = 1;
//			}
			//如果验证成功
			if(gtResult==1){
				user_pass = Conn.MD5(user_pass); 
				System.out.println("user_pass:"+user_pass);
				// 这里取用户信息
				Users log_user =  usersService.getOne("loginUsers",user_name);     //登录验证
				System.out.println("log_user:"+log_user);
				if (log_user == null) {   //用户不存在
					result.put("code", "1");
				}else if( log_user.getStatus() != 1){  //用户已禁用
					result.put("code", "2");
				}else if(!log_user.getUser_pass().equals(user_pass)){   //用户名或密码不正确
					result.put("code", "3");
				}else{      //登录成功
					result.put("code", "0");
					log_user.setLast_ip(getIpAddr(getRequest()));   //获取IP
					log_user.setLogin_count(log_user.getLogin_count()+1);
					getSession().setAttribute("userCode", log_user);
					usersService.update("loginRecord",log_user);         //记录最后登录信息
					//查询当前用户是否配置logo
					FilesInfo fileinfo = filesInfoService.getOne("selectUserLogo",user_name);
					String logoHref = "";
					String loginhref = "javascript:void(0);";
					if(fileinfo!=null){
						String fileName = fileinfo.getFiles_name();
						String userNum = fileinfo.getUser_num();
						logoHref = userNum+"/"+fileName;
						loginhref = fileinfo.getFiles_address();
					}
					//该用户菜单权限
					List<Map<String, Object>> menuList = (List<Map<String, Object>>)DataCache.getInstance().getCache("menuCarte");
					String menuStr = "";
			    	for(Map<String, Object> m : menuList){
			    		String href = m.get("HREF")+"";
			    		menuStr +=","+getBase()+"/"+href+"/";
			    	}
					//按钮权限
					List<Map<String, Object>> btnList = (List<Map<String, Object>>)DataCache.getInstance().getCache("btnCache");
					Map<String, String> btnModel = new HashMap<String,String>();
					String btnStr = "";
					String btnStrDes = "";
			    	for(Map<String, Object> m : btnList){
			    		String href = m.get("HREF")+"";
			    		String lowerHref = m.get("LOWER_HREF")+"";
			    		String carteId = m.get("CARTE_ID")+"";
			    		if(m.get("BEHAVIOR_NAME")!=null){
			    			String argsStr = m.get("BEHAVIOR_NAME")+"*"+m.get("BEHAVIOR_ARGS");
			    			btnModel.put(getBase()+"/"+(href.indexOf("?")!=-1?href.substring(0,href.indexOf("?")):href),argsStr);
			    			if(!"".equals(lowerHref) && lowerHref!=null){
			    				btnModel.put(getBase()+"/"+(lowerHref.indexOf("?")!=-1?lowerHref.substring(0,lowerHref.indexOf("?")):lowerHref), argsStr);
			    			}
			    		}
			    		btnStr +=","+getBase()+"/"+href+"-"+carteId+(!"".equals(lowerHref)?",/"+getBase()+"/"+lowerHref+"-"+carteId:"");
			    		//加密按钮路径
			    		EncryptionDES encryDes = new EncryptionDES();
			    		//按钮是否存在参数
			    		int flagIndex = href.indexOf("?");
			    		String spm = encryDes.encrypt(flagIndex!=-1?href.substring(0,flagIndex):href);
			    		spm += flagIndex!=-1?href.substring(flagIndex).replaceFirst("\\?","&"):"";
			    		//按钮中地址是否存在参数
			    		String spmRef = "";
			    		if(!"".equals(lowerHref)){
			    			int flagIndexRef = lowerHref.indexOf("?");
			    			spmRef =  getBase()+"/?spm=";
				    		spmRef += encryDes.encrypt(flagIndexRef!=-1?lowerHref.substring(0,flagIndexRef):lowerHref);
				    		spmRef += flagIndexRef!=-1?lowerHref.substring(flagIndexRef).replaceFirst("\\?","&"):"";
				    		spmRef += "-"+carteId;
			    		}
			    		btnStrDes +=","+getBase()+"/?spm="+spm+"-"+carteId+","+spmRef;
			    	}
			    	//存放按钮权限
			    	getSession().setAttribute("btnStr", btnStr);
			    	getSession().setAttribute("btnStrDes", btnStrDes+(log_user.getUser_role()==1?",i am leader":""));
			    	//存放按钮模板
			    	getSession().setAttribute("btnModel", btnModel);	
			    	//存放菜单权限
			    	getSession().setAttribute("menuStr", menuStr);
			    	//项目名称
			    	getSession().setAttribute("projectName", getBase());
			    	//存储logo图片地址
			    	getSession().setAttribute("logoHref", logoHref);
			    	//存储logo访问地址
			    	getSession().setAttribute("loginhref", loginhref);
				}
			}else{
				//验证码服务端异常
				result.put("code", "6");
			}
		} catch (Exception e) {
			result.put("code", "5");
			throw e;
		}
		System.out.println("resultttttttttttt:"+result);
		return result; 
	}
	
	/**
	 * ********************************************************
	 * @Title: ajaxUsers_name
	 * @Description: 检查登录名是否存在
	 * @param class_en
	 * @return String
	 * @date 2014-11-1 下午10:10:32
	 ********************************************************
	 */
	@RequestMapping("/ajaxUser_name") 
	public @ResponseBody String ajaxUser_name(@RequestParam String user_name){		
	    int class_en_num=usersService.getNumber("user_name",user_name);	    
	    String result=class_en_num==0?"true":"false";
		return result;
	}
	
	/**
	 * ********************************************************
	 * @Title: ajaxUser_pass
	 * @Description: 验证密码
	 * @param user_pass
	 * @return String
	 * @date 2014-11-1 下午10:43:47
	 ********************************************************
	 */
	@RequestMapping("/ajaxUser_pass") 
	public @ResponseBody String ajaxUser_pass(@RequestParam String user_pass){		
		String user_name = getUsers().getUser_name();
		Users log_user =  usersService.getOne("loginUsers",user_name); 
		String result = "false";
		if(Conn.MD5(user_pass).equals(log_user.getUser_pass())){
			result="true";
		}
		return result;
	}
	
	/**
	 * ********************************************************
	 * @Title: savePassword
	 * @Description: 修改密码
	 * @param password
	 * @return Map
	 * @throws ExceptionDeal 
	 * @date 2014-11-2 下午04:55:33
	 ********************************************************
	 */
	@RequestMapping("/savePassword")
	public @ResponseBody Map savePassword(@RequestParam String password){
		Users user = getUsers();
		user.setUser_pass(Conn.MD5(password));
		usersService.update("update_password",user);
		message = "修改密码成功";
		return message(message, resForFinally);
	}

	
	
	/**
	 * ********************************************************
	 * @Title: list
	 * @Description: 分页,条件查询
	 * @return String
	 * @date 2014-11-01 上午 11:29:15 
	 ********************************************************
	 */
	 @RequestMapping("/list")
	public String list(){		
		usersService.getPageList(this.getPage());		
		return this.display();
	}

	/**
	 * ********************************************************
	 * @Title: add
	 * @Description: 添加、显示
	 * @return String
	 * @date 2014-11-01 上午 11:29:15 
	 ********************************************************
	 */
	 @RequestMapping("/add")
	public String add(@RequestParam(value="id",required=false) Integer id){
		if(id!=null){
			Users users = usersService.getOne(id);
			String agent_num = users.getBelong_user();
//			AgentInfo agentInfo = (AgentInfo)usersService.selectOne("selectUserAgent", agent_num);
			this.setAttribute("users",users);
//			this.setAttribute("agentInfo", agentInfo);
		}
		return this.display();
	}
	 
	 /**
	  * ********************************************************
	  * @Title: pass
	  * @Description: 修改用户密码
	  * @return String
	  * @date 2014-11-1 下午10:24:40
	  ********************************************************
	  */
	@RequestMapping("/pass")
	public String pass(){
		return this.display();
	}
	 

	/**
	 * ********************************************************
	 * @Title: save
	 * @Description: 修改保存
	 * @return String
	 * @throws ExceptionDeal 
	 * @date 2014-11-01 上午 11:29:15 
	 ********************************************************
	 */
//	 @RequestMapping("/save")
//	public @ResponseBody Map save(@ModelAttribute("Users") Users  users){	
//		if(getUsers().getUser_role()!=1){
//			message = "您不是管理员，无此权限";
//			resForFinally = 1;
//		}
////		String belongAgent = getParameter("org1.agentNum");
//		Integer userRole = users.getUser_type();			//用户角色 0总 1机构 2 O单
//		if(userRole!=3 && (belongAgent==null||"".equals(belongAgent))){
//			message = "请选择所属用户！";
//			resForFinally = 1;
//		}
//		if(userRole!=3){
//			String agentType = getParameter("org1.agentType");	//代理商类型 0 一级 1 二级 2机构 3 O单
//			if("0".equals(agentType) || "1".equals(agentType)) agentType = "0";
//			else if("2".equals(agentType)) agentType = "1";
//			else if("3".equals(agentType)) agentType = "2";
//			if(!agentType.equals(userRole+"")){
//				message = "用户所属与用户角色类型不一致！";
//				resForFinally = 1;
//			}
//		}
//		//如果未发现异常
//		if(resForFinally==0){
//			if ((users.getUser_pass()== null||users.getUser_pass().equals(""))&&users.getId()==null) {
//				users.setUser_pass("123456");
//			}
//			if(users.getUser_pass()!=null&&!users.getUser_pass().equals("")){
//				users.setUser_pass(Conn.MD5(users.getUser_pass()));
//			}
//			users.setAddname(getUserName());
//			users.setAddtime(getCurrentTime(0));
//			users.setLogin_count(0);
//			users.setUpdate_password(0);
//			users.setBelong_user(userRole!=3?"":"");
//			int result = 0;
//			if(users.getId()==null){
//				result = usersService.insert(users);
//				message = "增加用户【"+users.getCn_name()+"（"+users.getUser_name()+"）"+"】";
//			}else{
//				result = usersService.update(users);
//				message = "修改用户【"+users.getCn_name()+"（"+users.getUser_name()+"）"+"】";
//			}
//			message += result>0?"成功":"失败";
//		}
//		return message(message,resForFinally);
//	}
//
//	/**
//	 * ********************************************************
//	 * @Title: delete
//	 * @Description: 删除
//	 * @return String
//	 * @date 2014-11-01 上午 11:29:15 
//	 ********************************************************
//	 */
//	 @RequestMapping("/delete")
//	public @ResponseBody Map delete(@RequestParam Integer id){
//		int result = 0;
//		int admin_id = getUsers().getIsadmin();
//		if(admin_id==0){
//			resForFinally = 1;
//			message = "您不是管理员，无此权限!";
//		}
//		if(getUsers().getId().toString().equals(id.toString())){
//			message = "此用户为当前登录账户，无法进行删除!";
//			resForFinally = 1;
//		}
//		if(resForFinally==0){
//			result=usersService.delete(id);
//			message = "删除成功!";
//		}
//		this.mes.put("navTabId", "Users_list");
//		return message(message,resForFinally);
//	}
//	 
//	 /**
//	  * 
//	  *********************************************************.<br>
//	  * [方法] userpermission <br>
//	  * [描述] 获取选中用户的菜单 <br>
//	  * [参数] TODO(对参数的描述) <br>
//	  * [返回] String <br>
//	  * [时间] 2015-4-17 下午04:58:54 <br>
//	  *********************************************************.<br>
//	 * @throws Exception 
//	  */
//	 @RequestMapping("/userpermission")
//	 public String userpermission(@RequestParam Integer id,Integer user_role) throws Exception{
//		//获取所有的菜单
//		List<Map<String, Object>>  allCarteList = null;
//		//获取用户菜单
//		List<Map<String, Object>>  userCarteList = null;
//		//返回最终拼接好的菜单
//		List<Map<String,Object>> resListMap = new ArrayList<Map<String, Object>>();
//		//按钮数据
//		Map<String, List<Map<String, Object>>> buttonData = null;
//		//菜单id
//		String carte_id = "";
//		//用户菜单权限列表
//		userCarteList = backCarteService.getObjectList("selCarteById",id);
//		//如果是管理员查询按钮权限,显示全部
//		if(getUsers().getIsadmin()==1){
//			Integer platSign = getBelongTerraceByRole(user_role);
//			//读取缓存中菜单数据
//			allCarteList = (List<Map<String,Object>>)new DataCache().getCache("c_carte|"+platSign,"c_carte|"+platSign,null,null);
//			for(Map<String, Object> allMap:allCarteList){
//				for(Map<String, Object> userMap:userCarteList){
//					//判断用户是否有菜单
//					if(allMap.get("PARENT_ID").equals(userMap.get("PARENT_ID"))){
//						allMap.put("checked","true");
//					}
//				}
//				resListMap.add(allMap);
//			}
//		}else{
//			//如果不是管理员将用户所有菜单设置为选中
//			for(Map<String, Object> userMap:userCarteList){
//				userMap.put("checked","true");
//				resListMap.add(userMap);
//			}
//		}
//		List<Map<String,Object>> nl= new ArrayList<Map<String,Object>>();
//		for(Map<String,Object> m:resListMap){
//			Map<String,Object> current_m=new LinkedHashMap<String,Object>();
//			current_m.put("parentId", m.get("PARENT_ID"));
//			current_m.put("parent", m.get("PARENTS"));
//			current_m.put("carteId", m.get("ID"));
//			current_m.put("name", m.get("CARTE_NAME"));
//			current_m.put("checked", m.get("checked")==null?"false":"true");
//			nl.add(current_m);
//		}
//		//声明ObjectMapper
//		ObjectMapper om = new ObjectMapper();
//		//将map装换成json字符串
//		String jsonStr = om.writeValueAsString(nl);
//		/**查询菜单结束**/
//		
//		//如果用户菜单列表存在,查询菜单下按钮列表
//		if(userCarteList.size()>0){
//			for(int i = 0;i<userCarteList.size();i++){
//				carte_id+=","+userCarteList.get(i).get("ID");
//			}
//			if(!carte_id.equals("")){
//				carte_id = carte_id.substring(1);
//				//查询菜单下按钮
//				buttonData = getUserButton(carte_id,""+id);
//			}
//			Map<String,Map<String, Object>> mapObj = null;
//			if(getUsers().getIsadmin()==1){
//				mapObj = Utils.listToMap(allCarteList, "ID");
//			}else{
//				mapObj = Utils.listToMap(userCarteList, "ID");
//			}
//			//前台读取菜单名称
//			setAttribute("carteData", mapObj);
//		}
//		//菜单返回ztree格式json字符串
//		setAttribute("json",jsonStr);
//		//按钮权限
//		setAttribute("buttonData", buttonData);
//		//返回用户菜单id
//		setAttribute("carte_id", carte_id);
//		//当前用户名
//		setAttribute("user_name", getParameter("cn_name"));
//		//当前用户id
//		setAttribute("admin_id", id);
//		return display();
//	 }
//	 /**
//	  * 
//	  *********************************************************.<br>
//	  * [方法] getButtonPermission <br>
//	  * [描述] 根据用户查询所有按钮权限 <br>
//	  * [参数] TODO(对参数的描述) <br>
//	  * [返回] String <br>
//	  * [时间] 2015-4-19 下午01:59:40 <br>
//	  *********************************************************.<br>
//	  */
//	 @RequestMapping("/getButtonPermission")
//	 public String getButtonPermission(@RequestParam String stringCartes){
//		String adminId = getParameter("admin_id");
//		String [] strCarte = stringCartes.split(",");
//		//获取选中菜单下所有按钮
//		List<Map<String, Object>> listButton = permissionService.getObjectList("getButtonByCarteId",strCarte);
//		Map<String,List<Map<String,Object>>> resultMap = new LinkedHashMap<String, List<Map<String,Object>>>();
//		List<Map<String, Object>> listMap = null;
//		String carte_id = "";
//		for(Map<String, Object> map:listButton){
//			listMap = new ArrayList<Map<String,Object>>();
//			map.put("checked", "true");
//			carte_id = map.get("CARTE_ID").toString();
//			if(!resultMap.containsKey(carte_id)){
//				listMap.add(map);
//				resultMap.put(carte_id, listMap);
//			}else{
//				resultMap.get(carte_id).add(map);
//			}
//		}
//		//获取缓存中所有的菜单
//		List<Map<String, Object>>  allCarteList = (List<Map<String,Object>>)new DataCache().getCache("carte","Carte",null,null,null);
//		Map<String,Map<String, Object>> mapObj = Utils.listToMap(allCarteList, "ID");
//		//按钮权限
//		setAttribute("buttonData", resultMap);
//		//前台读取菜单名称
//		setAttribute("carteData", mapObj);
//		//用户选中菜单
//		setAttribute("carte_id", stringCartes);
//		//用户id
//		setAttribute("admin_id", adminId);
//		//访问地址
//		String[] class_str=(this.getClass().getName()).split("\\.");	
//		String action=class_str[class_str.length-1].replace("Controller", "");
//		setAttribute("action", action);
//		return "Users/buttonPermission";
//	 }
//	 /**
//	  * 
//	  *********************************************************.<br>
//	  * [方法] getUserButton <br>
//	  * [描述] 获取用户的所有按钮 <br>
//	  * [参数] TODO(对参数的描述) <br>
//	  * [返回] Map<String,List<Map<String,Object>>> <br>
//	  * [时间] 2015-4-20 下午12:01:22 <br>
//	  *********************************************************.<br>
//	  */
//	 public Map<String,List<Map<String,Object>>> getUserButton(String stringCartes,String adminId){
//		 String [] strCarte = stringCartes.split(",");
//		 //获取用户菜单下所有按钮
//		 List<Map<String, Object>> listButton = permissionService.getObjectList("getButtonByCarteId",strCarte);
//		 List<Map<String, Object>> userButton = permissionService.getObjectList("getButtonByAdminId",adminId);
//		 Map<String,List<Map<String,Object>>> resultMap = new LinkedHashMap<String, List<Map<String,Object>>>();
//		 List<Map<String,Object>> listMap = null;
//		 String carteId = "";
//		 for(Map<String, Object> lMap:listButton){
//			 listMap = new ArrayList<Map<String,Object>>();
//			 for(Map<String,Object> uMap:userButton){
//				 if(lMap.get("CARTE_ID").equals(uMap.get("CARTE_ID"))&&lMap.get("ID").equals(uMap.get("ID"))){
//					 lMap.put("checked", "true");
//					 break;
//				 }
//			 }
//			 carteId = lMap.get("CARTE_ID").toString();
//			 if(!resultMap.containsKey(carteId)){
//				 listMap.add(lMap);
//				 resultMap.put(carteId, listMap);
//			 }else{
//				 resultMap.get(carteId).add(lMap);
//			 }
//		 }
//		 return resultMap;
//	 }
//	 
//	 /**
//	  * 
//	  *********************************************************.<br>
//	  * [方法] getBelongTerraceByRole <br>
//	  * [描述] 通过用户角色获取菜单标识 <br>
//	  * [参数] TODO(对参数的描述) <br>
//	  * [返回] Integer <br>
//	  * [时间] 2016-12-15 下午03:38:14 <br>
//	  *********************************************************.<br>
//	  */
//	 public Integer getBelongTerraceByRole(Integer user_role){
//		 Map<Integer, Integer> m = new HashMap<Integer, Integer>();
//		 m.put(0, 1);	//代理商菜单标识 1
//		 m.put(1, 2);	//机构菜单标识 2
//		 m.put(2, 3);	//O单菜单标识 3
//		 m.put(3, 0);	//总后台菜单标识 0
//		 return m.get(user_role);
//	 }
//	 
//	 /**
//	  * 
//	  *********************************************************.<br>
//	  * [方法] saveButton <br>
//	  * [描述] 保存按钮 <br>
//	  * [参数] TODO(对参数的描述) <br>
//	  * [返回] Map<String,String> <br>
//	  * [时间] 2015-4-21 上午10:53:46 <br>
//	  *********************************************************.<br>
//	  */
//	 @RequestMapping("/saveButton")
//	 public @ResponseBody Map<String, String> saveButton(@RequestParam Map<String, String> map){
//		//保存用户id
//		String admin_id = (String)map.get("admin_id");
//		//按钮
//		String buttonData = (String)map.get("buttonData");
//		//获取需要保存的菜单
//		String carte_id = (String)map.get("carte_id");
//		//依靠admin_id删除按钮权限映射表
//		permissionService.delete("deletePerMap",admin_id);
//		//依靠amdin_id删除菜单权限映射表
//		userallotService.delete("deleteCarteById",admin_id);
//		//保存按钮权限映射表
//		Map<String,Object> paramMap = new HashMap<String, Object>();
//		paramMap.put("admin_id", admin_id);
//		paramMap.put("array",buttonData.split(","));
//		int result = permissionService.insert("insertUserPer", paramMap);
//		//保存菜单权限映射表
//		paramMap.put("array",carte_id.split(","));
//		userallotService.insert("insertInUserallot",paramMap);
//		message = "用户权限设置成功!";
//		return message(message, resForFinally);
//	 }
//	 /**
//	  * 
//	  *********************************************************.<br>
//	  * [方法] getClientInfo <br>
//	  * [描述] 查询用户详细信息 <br>
//	  * [参数] TODO(对参数的描述) <br>
//	  * [返回] String <br>
//	  * [时间] 2015-5-26 下午01:45:43 <br>
//	  *********************************************************.<br>
//	  */
//	 @RequestMapping("/getClientInfo")
//	 public String getClientInfo(@RequestParam String client_no){
//		 //查询用户详细信息
//		 List list = usersService.getObjectList("getClientInfo", client_no);
//		 setAttribute("userInfo", list);
//		 return display();
//	 }
//	 /**
//	  * 
//	  *********************************************************.<br>
//	  * [方法] goToLogin <br>
//	  * [描述] session超时跳转 <br>
//	  * [参数] TODO(对参数的描述) <br>
//	  * [返回] String <br>
//	  * [时间] 2015-5-22 下午05:12:28 <br>
//	  *********************************************************.<br>
//	  */
//	 @RequestMapping("/goToLogin")
//	 public @ResponseBody Map<String, String> goToLogin(){
//		 this.getMes().put("statusCode", "301");
//		 this.getMes().put("message", "\u4f1a\u8bdd\u8d85\u65f6\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55\u3002");
//		 return this.getMes();
//	 }
//	 /**
//	  * 
//	  *********************************************************.<br>
//	  * [方法] goLogin <br>
//	  * [描述] 跳转登陆页面 <br>
//	  * [参数] TODO(对参数的描述) <br>
//	  * [返回] String <br>
//	  * [时间] 2015-5-22 下午05:48:03 <br>
//	  *********************************************************.<br>
//	  */
//	 @RequestMapping("/goLogin")
//	 public String goLogin(){
//		 Map cookie_map = Utils.ReadCookieMap(getRequest());  //获取登录的COOKIE 信息 
//			if (cookie_map.get("cookie_user") != null) {
//				this.setAttribute("login_user",((Cookie)cookie_map.get("cookie_user")).getValue());   //COOKIE用户名
//				this.setAttribute("login_password",((Cookie)cookie_map.get("cookie_password")).getValue());   //COOKIE用户密码
//				this.setAttribute("remember",((Cookie)cookie_map.get("remember")).getValue());   //记住密码
//			}
//		 return display();
//	 }
//	 /**
//	  * 
//	  *********************************************************.<br>
//	  * [方法] exceptionPage <br>
//	  * [描述] 异常处理页面 <br>
//	  * [参数] TODO(对参数的描述) <br>
//	  * [返回] String <br>
//	  * [时间] 2015-6-15 上午10:39:01 <br>
//	  *********************************************************.<br>
//	  */
//	 @RequestMapping("/exceptionPage")
//	 public String exceptionPage(){
//		 return display();
//	 }
//	/**
//	 * 
//	 *********************************************************.<br>
//	 * [方法] noPermission <br>
//	 * [描述] 无权限跳转页面 <br>
//	 * [参数] TODO(对参数的描述) <br>
//	 * [返回] String <br>
//	 * [时间] 2015-11-6 下午2:19:24 <br>
//	 *********************************************************.<br>
//	 */
//	 @RequestMapping("/noPermission")
//	 public String noPermission(){
//		 return display();
//	 }
//	 /**
//	  * 
//	  *********************************************************.<br>
//	  * [方法] pageNotFind <br>
//	  * [描述] 页面未找到 <br>
//	  * [参数] TODO(对参数的描述) <br>
//	  * [返回] String <br>
//	  * [时间] 2015-6-15 上午11:14:44 <br>
//	  *********************************************************.<br>
//	  */
//	 @RequestMapping("/pageNotFind")
//	 public String pageNotFind(){
//		 return display();
//	 }
//	 
//	 /**
//	  * ********************************************************
//	  * @Title: getIpAddr
//	  * @Description: 获取登录的IP
//	  * @param request
//	  * @return String
//	  * @date 2014-11-2 下午01:29:21
//	  ********************************************************
//	  */
	 public static String getIpAddr(HttpServletRequest request) {
		 String ip = request.getHeader("x-forwarded-for");
		 if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
		  ip = request.getHeader("Proxy-Client-IP");
		 }
		 if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
		  ip = request.getHeader("WL-Proxy-Client-IP");
		 }
		 if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
		  ip = request.getRemoteAddr();
		 }
		 if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
		  ip = request.getHeader("http_client_ip");
		 }
		 if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
		  ip = request.getHeader("HTTP_X_FORWARDED_FOR");
		 }
		 // 如果是多级代理，那么取第一个ip为客户ip
		 if (ip != null && ip.indexOf(",") != -1) {
		  ip = ip.substring(ip.lastIndexOf(",") + 1, ip.length()).trim();
		 }
		 return ip;
		}
//	 
//	 /**
//	  * 
//	  *********************************************************.<br>
//	  * [方法] uploadLogo <br>
//	  * [描述] 上传Logo图片 <br>
//	  * [参数] TODO(对参数的描述) <br>
//	  * [返回] String <br>
//	  * [时间] 2016-12-21 下午12:19:22 <br>
//	  *********************************************************.<br>
//	  */
//	 @RequestMapping("/uploadLogo")
//	 public String uploadLogo(@RequestParam String userName){
//		 setAttribute("userName", userName);
//		 return display();
//	 }
//	 
//	 /**
//	  * 
//	  *********************************************************.<br>
//	  * [方法] uploadPic <br>
//	  * [描述] 上传图片 <br>
//	  * [参数] TODO(对参数的描述) <br>
//	  * [返回] Map <br>
//	  * [时间] 2016-12-21 下午04:34:01 <br>
//	  *********************************************************.<br>
//	  */
//	 @RequestMapping("/publicUploadPic")
//	public @ResponseBody Map uploadPic(HttpServletRequest request,@RequestParam Map<String,String> map) throws ParseException{
//        try {
//        	//获取上传路径
//	        String realpath=this.getRequest().getRealPath("logo");
//	        //文件名
//	        String filename = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
//	        //用户标识
//	        String username = map.get("userName");
//	        //上传文件
//	        Utils.uploadFile(realpath, request, username+"/"+filename);	
//        	this.getMes().put("sign", "success");			//上传成功
//        	this.getMes().put("filename", filename+".png"); //文件名
//        	this.getMes().put("username", username);		//用户名称
//		} catch (Exception e) {
//			e.printStackTrace();
//			this.getMes().put("sign", "error");	//上传失败
//		}
//		return this.getMes();
//	}
//	 
//	 /**
//	  * 
//	  *********************************************************.<br>
//	  * [方法] getAgentInfo <br>
//	  * [描述] 获取所有代理商信息 <br>
//	  * [参数] TODO(对参数的描述) <br>
//	  * [返回] String <br>
//	  * [时间] 2016-12-7 下午05:21:13 <br>
//	  *********************************************************.<br>
//	  */
//	 @RequestMapping("/getAgentInfo")
//	 public String getAgentInfo(){
//		 String sign = getParameter("sign");
//		 this.getPage().getParams().put("sign", sign);
//		 usersService.getPageList("getAgentInfo",this.getPage());	
//		 this.setAttribute("p", this.getPage());
//		 this.setAttribute("getCache", new GetCacheMethod(response)); //注册freemaker 自定义函数
//		 return "Users/suggestAgentInfo";
//	 }
	 
}

