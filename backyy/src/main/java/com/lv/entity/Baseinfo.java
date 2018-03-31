
package com.lv.entity;

import java.util.Date;

/**
* ********************************************************
* @ClassName: Baseinfo
* @Description: 基本信息
* @author 自动生成
* @date 2014-11-01 下午 01:42:29 
*******************************************************
*/
public class Baseinfo {

	private Integer id;		//
	private Date addtime;		//添加时间
	private String status;		//是否启用
	private String addname;		//添加人
	private String class_en;		//所属控件英文
	private String info_en;		//信息标识
	private String info;		//信息值
	private String parent_info_en;		//父类信息标识
	
	public Integer getId() {
		return id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public Date getAddtime() {
		return addtime;
	}
	
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}
	
	public String getStatus() {
		return status;
	}
	
	public void setStatus(String status) {
		this.status = status;
	}
	
	public String getAddname() {
		return addname;
	}
	
	public void setAddname(String addname) {
		this.addname = addname;
	}
	
	public String getClass_en() {
		return class_en;
	}
	
	public void setClass_en(String classEn) {
		class_en = classEn;
	}
	
	public String getInfo_en() {
		return info_en;
	}
	
	public void setInfo_en(String infoEn) {
		info_en = infoEn;
	}
	
	public String getInfo() {
		return info;
	}
	
	public void setInfo(String info) {
		this.info = info;
	}
	
	public String getParent_info_en() {
		return parent_info_en;
	}
	
	public void setParent_info_en(String parentInfoEn) {
		parent_info_en = parentInfoEn;
	}
	
}

