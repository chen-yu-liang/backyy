package com.lv.util;
import java.util.List;
import freemarker.template.TemplateMethodModel;
import freemarker.template.TemplateModelException;

/**
 * ********************************************************
 * @ClassName: GetCacheMethod
 * @Description: TODO( Freemarker自定义方法 实现response.encodeURL(url)功能 )
 * @author NoNo
 * @date 2014-11-1 下午10:15:29
 *******************************************************
 */
public class UrlEncrption implements TemplateMethodModel {  
    
    /**
     * 
     *********************************************************.<br>
     * [描述] 无参构造方法 <br>
     *********************************************************.<br>
     */
    public UrlEncrption(){}
    
    /** 
     * 执行方法 
     * @param argList 方法参数列表 
     * @return Object 方法返回值 
     * @throws TemplateModelException 
     */  
    public Object exec(List argList) throws TemplateModelException { 
    	String url = "";
    	try {
			url = new EncryptionDES().encrypt((String)argList.get(0));
		} catch (Exception e) {
			 throw new TemplateModelException("Wrong arguments!");   
		}
    	return url;
    }  
    
}  