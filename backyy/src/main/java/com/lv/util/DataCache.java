package com.lv.util;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.context.WebApplicationContext;

import com.lv.controller.BaseController;
import com.lv.entity.Users;

/**
 * ********************************************************
 * @ClassName: DataCache
 * @Description: TODO(缓存操作)
 * @author NoNo
 * @date 2014-11-4 下午03:28:13
 *******************************************************
 */
public class DataCache extends SqlSessionDaoSupport{
	private static MemCached cache = MemCached.getInstance();
	protected WebApplicationContext wac = ContextLoader.getCurrentWebApplicationContext();  
	protected SqlSessionTemplate sql=(SqlSessionTemplate)wac.getBean("sqlSession");
	protected SqlSession sqlSession=null;
	private static final String sqlSpaceName="Cache";
	protected static DataCache dataCache = null;
	
	/**
	 * 
	 *********************************************************.<br>
	 * [方法] getInstance <br>
	 * [描述] 获取该类唯一实例 <br>
	 * [参数] TODO(对参数的描述) <br>
	 * [返回] DataCache <br>
	 * [时间] 2015-11-6 下午2:31:19 <br>
	 *********************************************************.<br>
	 */
	public static DataCache getInstance(){
    	if(dataCache==null){
    		dataCache = new DataCache();
    	}
        return dataCache;
	}
	
	/**
	 * ********************************************************
	 * @Title: getCacheObj
	 * @Description: TODO(获取cache整体对像)
	 * @return MemCached
	 * @date 2014-11-1 下午09:57:37
	 ********************************************************
	 */
	public static MemCached getCacheObj(){
		return cache;
	}

    /**
     * ********************************************************
     * @Title: getCache
     * @Description: TODO(这里用一句话描述这个类的作用)
     * @param cacheNames   缓存名
     * @param methodName   方法名
     * @param o
     * @param SearchKey  要搜索的键名
     * @param SearchVl   要搜索的值
     * @return Object
     * @date 2014-11-4 下午05:35:17
     ********************************************************
     */
	public Object getCache(String cacheNames,String methodName,Object o,String searchKey,String searchVl) {	
		System.out.println("cacheNames:"+cacheNames);
		if(searchKey!=null&&(searchVl==null||searchVl.equals(""))){
			return new HashMap<String,Object>();
		}
		String cacheName=cacheNames.indexOf(".")!=-1?(cacheNames.split("\\.")[0]):cacheNames;		
		Object cache_result=cache.get(cacheName);	//cacheName的名称为AA.BB.CC时，cache_result相当于get("AA");
		if(cache_result==null){		
				try {	
					Method[] ms=this.getClass().getMethods();					
				    for(Method m:ms){	
				    	 if(m.getName().equals("getCache"+methodName)){	
				    		 System.out.println("lengthhhhhh:"+m.getParameterAnnotations().length);
				    		 cache_result=m.getParameterAnnotations().length==0?m.invoke(this):m.invoke(this,o);
				    		 break;
				    	  }
				     }			
//					cache.add(cacheName, cache_result);
				} catch (Exception e) {
					e.printStackTrace();
					return cache_result!=null?cache_result:new HashMap<String,Object>();
				}
		}

		if(searchKey!=null&&searchVl!=null){
			Map<String,Object> return_result=new HashMap<String,Object>();
			Map<String,Object> current=(Map<String,Object>)cache_result;
			for(String k:current.keySet()){
				Map<String,Object> n=(Map<String,Object>)current.get(k);
				if(n.get(searchKey).toString().equals(searchVl)){
					return_result.put(k, n);
				}
			}
			return return_result!=null?return_result:new HashMap<String,Object>();		
		}
	    if(cacheNames.indexOf(".")!=-1){
	    	String[] names=cacheNames.split("\\.");	
	    	try {
	        	Map<String,Object> current=(Map<String,Object>)cache_result;
		    	for(int i=1;i<names.length-1;i++){   //AA.BB.CC 从BB开始，因为cache_result就是AA的结果。
		    		if(current.get(names[i])!=null){
		    			current=(Map<String,Object>)current.get(names[i]);
		    		}else{
		    			return new HashMap<String,Object>();	
		    		}
		    	}
		    	cache_result=current.get(names[names.length-1]);
	    	} catch (Exception e) {
				e.printStackTrace();
				return new HashMap<String,Object>();
			}
	    }
		return cache_result!=null?cache_result:new HashMap<String,Object>();
	}

	
    /**
     * ********************************************************
     * @Title: getCache
     * @Description: TODO(根据缓存名，参数，搜索键名，搜索值获取缓存)
     * @param key  缓存名 getCache+key是方法名
     * @return Object  
     * @date 2014-11-1 下午09:58:25
     ********************************************************
     */
	public Object getCache(String key,String args,String searchKey,String searchVl){		
		String methodName=key.split("\\.")[0];		
		if(key.startsWith("b_")){  			//如果是b_ 开头的，那么就是读取baseinfo的信息			
			args=methodName.replaceFirst("b_", "");
			methodName="baseinfo";			
		}
		if(key.startsWith("c_")){  			//如果是c_ 开头的，那么就是读取菜单的信息			
			args=methodName.replaceFirst("c_", "");
			String platSign = args.split("\\|")[1];
			if("0".equals(platSign)){					
				methodName="carte";			//总后台
			}else if("1".equals(platSign)){				
				methodName="agentCarte";	//代理商平台
			}else if("2".equals(platSign)){				
				methodName="financeCarte";	//财务平台
			}
			key = methodName;				//改变存储缓存键
		}
		String userName = BaseController.getUserName();	//登录名称
		if(key.startsWith(userName+"_")){  				//如果是登录名开头 读取菜单用户菜单			
			args=methodName.replaceFirst(userName+"_", "");
			methodName="MenuCarte";
		}
		methodName=methodName.substring(0, 1).toUpperCase()+methodName.replaceFirst("\\w",""); 
		return this.getCache(key,methodName,args,searchKey,searchVl);
	}
	
	
	public Object getCache(String key,String searchKey,String searchVl){
		return this.getCache(key, null, searchKey, searchVl);
	}
	
	/**
	 * ********************************************************
	 * @Title: getCache
	 * @Description: TODO(根据缓存名，参数获取缓存)
	 * @param key
	 * @param args
	 * @return Object
	 * @date 2014-11-5 上午10:25:40
	 ********************************************************
	 */
	public Object getCache(String key,String args){
		return this.getCache(key, args, null, null);
	}
	/**
	 * ********************************************************
	 * @Title: getCache
	 * @Description: TODO(这里用一句话描述这个类的作用)
	 * @param key
	 * @return Object
	 * @date 2014-11-4 下午06:11:18
	 ********************************************************
	 */
	
	public Object getCache(String key){
		return this.getCache(key, null, null, null);
	}
	
	/**
	 * ********************************************************
	 * @Title: getCacheBaseinfo
	 * @Description: TODO(根据类CLASS_EN获取信息  )
	 * @param class_en   
	 * @return Map<String,Map<String,Object>>
	 * @date 2014-11-4 下午03:50:05
	 ********************************************************
	 */
	public Map<String,Map<String,Object>> getCacheBaseinfo(String class_en){ //获取基础信息
        List<Map<String,Object>> l=this.getSession().selectList(getSqlName("baseinfo"), class_en);
        this.sqlSession.close();
		return Utils.listToMap(l, "INFO_EN");
	}
	/**
	 * ********************************************************
	 * @Title: getCacheBaseinfoClass
	 * @Description: TODO(获取所有类英文、中文信息)
	 * @return Map<String,String>
	 * @date 2014-11-4 下午03:51:12
	 ********************************************************
	 */
	public Map<String,String> getCacheBaseinfoClass(){  //获取基础信息,<类英文，类中文>
		List<Map<String,Object>> l=this.getSession().selectList(getSqlName("baseinfoClass"));
		this.sqlSession.close();
        return  Utils.listToMap(l, "CLASS_EN","CLASS_CN");
	}
	/**
	 * 
	 *********************************************************.<br>
	 * [方法] getCacheCarte <br>
	 * [描述] 获取菜单map <br>
	 * [参数] TODO(对参数的描述) <br>
	 * [返回] Map<String,Map<String,Object>> <br>
	 * [时间] 2015-4-7 下午03:45:53 <br>
	 *********************************************************.<br>
	 */
	public List<Map<String, Object>> getCacheCarte(){	
		List<Map<String, Object>> carteList = this.getSession().selectList(getSqlName("getCarte"));
		this.sqlSession.close();
		return carteList;
	}
	/**
	 * 
	 *********************************************************.<br>
	 * [方法] getCacheFinanceCarte <br>
	 * [描述] 获取财务平台所有菜单 <br>
	 * [参数] TODO(对参数的描述) <br>
	 * [返回] List<Map<String,Object>> <br>
	 * [时间] 2016-12-6 下午9:58:15 <br>
	 *********************************************************.<br>
	 */
	public List<Map<String, Object>> getCacheFinanceCarte(){
		List<Map<String, Object>> carteList = this.getSession().selectList(getSqlName("getFinanceCarte"));
		this.sqlSession.close();
		return carteList;
	}
	
	/**
	 * 
	 *********************************************************.<br>
	 * [方法] getCacheAgentCarte <br>
	 * [描述] 获取代理商所有菜单 <br>
	 * [参数] TODO(对参数的描述) <br>
	 * [返回] List<Map<String,Object>> <br>
	 * [时间] 2016-12-6 下午9:58:15 <br>
	 *********************************************************.<br>
	 */
	public List<Map<String, Object>> getCacheAgentCarte(){
		List<Map<String, Object>> carteList = this.getSession().selectList(getSqlName("getAgentCarte"));
		this.sqlSession.close();
		return carteList;
	}
	
	/**
	 * 
	 *********************************************************.<br>
	 * [方法] getMenuCarte <br>
	 * [描述] 获取用户菜单 <br>
	 * [参数] TODO(对参数的描述) <br>
	 * [返回] List<Map<String,Object>> <br>
	 * [时间] 2015-4-22 上午09:11:45 <br>
	 *********************************************************.<br>
	 */
	public List<Map<String, Object>> getCacheMenuCarte(){
		List<Map<String, Object>> carteList = null;
		try {
			Users users = new BaseController().getUsers();
			Integer admin_id =  users.getId();
			String sql = "select * from carte where belong_terrace = 0";
			if(users.getUser_role()==0){
				sql += " order by parent_id ";
			}else{
				sql += " and id in (select carte_id from userallot where admin_id = "+admin_id+") order by parent_id ";
			}
			carteList = this.getSession().selectList(getSqlName("selectUserCarte"), sql);
			this.sqlSession.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return carteList;
	}
	/**
	 * 
	 *********************************************************.<br>
	 * [方法] getCacheBtnCache <br>
	 * [描述] 获取按钮数据 <br>
	 * [参数] TODO(对参数的描述) <br>
	 * [返回] List<Map<String,Object>> <br>
	 * [时间] 2015-4-28 下午03:53:16 <br>
	 *********************************************************.<br>
	 */
	public List<Map<String, Object>> getCacheBtnCache(){
		Users users = new BaseController().getUsers();
		Integer admin_id = users.getId();
		String sql = "select carte_id,href,lower_href,behavior_name,behavior_args from " +
				"(select p.*,bm.behavior_name,bm.behavior_args from permission p left join behavior_model bm on p.id = bm.per_id and bm.status = 0) p " +
				"where status = 1";
		if(users.getUser_role()!=1){
			sql += " and id in (select per_id from permission_mapping where admin_id = "+admin_id+") ";
		}
		List<Map<String, Object>> btnList = this.getSession().selectList(getSqlName("selectUserBtn"), sql);
		this.sqlSession.close();
		return btnList;
	}
	/**
	 * ********************************************************
	 * @Title: getCacheSystem
	 * @Description: TODO(获取所有只有一个值的类信息)info_num=-1
	 * @return Map<String,String>
	 * @date 2014-11-4 下午03:51:59
	 ********************************************************
	 */
	public Map<String,String> getCacheSystem(){        //获取系统信息（即基本信息类就一个值 的）
		List<Map<String,Object>> l=this.getSession().selectList(getSqlName("system"));
		sqlSession.close();
        return  Utils.listToMap(l, "CLASS_EN","VL");
	}
	
	/**
	 * ********************************************************
	 * @Title: getSession
	 * @Description: TODO(获取sqlSession并打开)
	 * @return SqlSession
	 * @date 2014-11-4 下午03:15:19
	 ********************************************************
	 */
	public SqlSession getSession(){
		this.sqlSession=sql.getSqlSessionFactory().openSession();
		return sqlSession;
	}
	/**
	 * ********************************************************
	 * @Title: closeSession
	 * @Description: TODO(关闭数据连接) void
	 * @date 2014-11-4 下午03:19:35
	 ********************************************************
	 */
	public void closeSession(){
		sqlSession.close();
	}
	/**
	 * ********************************************************
	 * @Title: getSqlName
	 * @Description: TODO(获取执行SQL所需要的格式： 命令空间.SQLID)
	 * @param sqlId
	 * @return String
	 * @date 2014-11-4 下午03:37:14
	 ********************************************************
	 */
	public String getSqlName(String sqlId){
		 return sqlSpaceName+"."+sqlId;
	}
    


	


	
}
