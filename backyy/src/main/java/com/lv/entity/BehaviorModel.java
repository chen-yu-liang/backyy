
package com.lv.entity;

/**
* ********************************************************
* @ClassName: BehaviorModel
* @Description: 按钮权限模板
* @author 自动生成
* @date 2016-12-14 下午 04:05:32 
*******************************************************
*/
public class BehaviorModel {

	private Integer id;					//主键
	private String behavior_args;		//行为模板
	private Integer status;				//状态 0启用 1禁用
	private String behavior_name;		//行为名称
	private String per_id;				//按钮id

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getBehavior_args() {
		return this.behavior_args;
	}

	public void setBehavior_args(String behavior_args) {
		this.behavior_args = behavior_args;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getBehavior_name() {
		return this.behavior_name;
	}

	public void setBehavior_name(String behavior_name) {
		this.behavior_name = behavior_name;
	}

	public String getPer_id() {
		return this.per_id;
	}

	public void setPer_id(String per_id) {
		this.per_id = per_id;
	}

}

