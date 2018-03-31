
package com.lv.entity;

/**
* ********************************************************
* @ClassName: BackCarte
* @Description: 菜单表
* @author 自动生成
* @date 2015-04-07 上午 10:48:43 
*******************************************************
*/
public class BackCarte {

	private Integer id;				//编号
	private String parents;			//父菜单标识
	private String carte_intro;		//菜单介绍
	private Integer levels;			//菜单等级
	private String carte_name;		//菜单名称
	private String target;			//打开方式
	private String rel;				//REL属性
	private String href;			//URL地址
	private String parent_id;		//菜单标识
	private String belong_terrace;	//所属平台

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getParents() {
		return this.parents;
	}

	public void setParents(String parents) {
		this.parents = parents;
	}

	public String getCarte_intro() {
		return this.carte_intro;
	}

	public void setCarte_intro(String carte_intro) {
		this.carte_intro = carte_intro;
	}

	public Integer getLevels() {
		return this.levels;
	}

	public void setLevels(Integer levels) {
		this.levels = levels;
	}

	public String getCarte_name() {
		return this.carte_name;
	}

	public void setCarte_name(String carte_name) {
		this.carte_name = carte_name;
	}

	public String getTarget() {
		return this.target;
	}

	public void setTarget(String target) {
		this.target = target;
	}

	public String getRel() {
		return this.rel;
	}

	public void setRel(String rel) {
		this.rel = rel;
	}

	public String getHref() {
		return this.href;
	}

	public void setHref(String href) {
		this.href = href;
	}

	public String getParent_id() {
		return this.parent_id;
	}

	public void setParent_id(String parent_id) {
		this.parent_id = parent_id;
	}

	public String getBelong_terrace() {
	
		return belong_terrace;
	}

	public void setBelong_terrace(String belong_terrace) {
	
		this.belong_terrace = belong_terrace;
	}
	
}

