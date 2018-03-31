
package com.lv.entity;

import java.util.Date;

/**
* ********************************************************
* @ClassName: Behavior
* @Description: 行为记录表
* @author 自动生成
* @date 2016-12-09 上午 10:58:42 
*******************************************************
*/
public class Behavior {

	private Integer id;				//主键
	private Integer platform;		//添加平台 0 总后台 1 代理商平台
	private Date add_time;			//添加时间
	private String info;			//行为内容
	private String name; 			//行为名称 
	private String ip;				//操作ip
	private String operate_name;	//操作人
	private String operate_type;	//行为类别 “”为未配置参数
	
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getPlatform() {
		return this.platform;
	}

	public void setPlatform(Integer platform) {
		this.platform = platform;
	}

	public Date getAdd_time() {
		return this.add_time;
	}

	public void setAdd_time(Date add_time) {
		this.add_time = add_time;
	}

	public String getInfo() {
		return this.info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getIp() {
	
		return ip;
	}

	public void setIp(String ip) {
	
		this.ip = ip;
	}

	public String getName() {
	
		return name;
	}

	public void setName(String name) {
	
		this.name = name;
	}

	public String getOperate_name() {
	
		return operate_name;
	}

	public void setOperate_name(String operateName) {
	
		operate_name = operateName;
	}

	public String getOperate_type() {
	
		return operate_type;
	}

	public void setOperate_type(String operateType) {
	
		operate_type = operateType;
	}
	
}

