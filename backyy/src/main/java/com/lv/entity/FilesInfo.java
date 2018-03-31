
package com.lv.entity;

import java.util.Date;

/**
* ********************************************************
* @ClassName: FilesInfo
* @Description: 文件表
* @author 自动生成
* @date 2016-12-21 下午 06:19:13 
*******************************************************
*/
public class FilesInfo {

	private Integer id;		//
	private String files_name;		//图片名称
	private Integer is_show;		//是否显示 0不显示 1显示
	private String user_num;		//用户标识
	private String files_address;		//访问地址  不存服务器ip与端口 ip与端口基础参数里配置
	private Date add_time;		//添加时间
	private Integer files_type;		//图片类别 0正常资料图片 1 log标识

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFiles_name() {
		return this.files_name;
	}

	public void setFiles_name(String files_name) {
		this.files_name = files_name;
	}

	public Integer getIs_show() {
		return this.is_show;
	}

	public void setIs_show(Integer is_show) {
		this.is_show = is_show;
	}

	public String getUser_num() {
		return this.user_num;
	}

	public void setUser_num(String user_num) {
		this.user_num = user_num;
	}

	public String getFiles_address() {
		return this.files_address;
	}

	public void setFiles_address(String files_address) {
		this.files_address = files_address;
	}

	public Date getAdd_time() {
		return this.add_time;
	}

	public void setAdd_time(Date add_time) {
		this.add_time = add_time;
	}

	public Integer getFiles_type() {
		return this.files_type;
	}

	public void setFiles_type(Integer files_type) {
		this.files_type = files_type;
	}

}

