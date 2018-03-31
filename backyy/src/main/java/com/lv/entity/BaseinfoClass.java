package com.lv.entity;

import java.util.Date;

public class BaseinfoClass {
	private Integer id;	
	private String class_en;
	private String class_cn;
	private String note;
	private String addname;
	private Date addtime;
	private int status;
	private String vl;
	private String parent_en;
	private String parent_ens;
	private int info_num;
	
	public Integer getId() {
		return id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getClass_en() {
		return class_en;
	}
	
	public void setClass_en(String classEn) {
		class_en = classEn;
	}
	
	public String getClass_cn() {
		return class_cn;
	}
	
	public void setClass_cn(String classCn) {
		class_cn = classCn;
	}
	
	public String getNote() {
		return note;
	}
	
	public void setNote(String note) {
		this.note = note;
	}
	
	public String getAddname() {
		return addname;
	}
	
	public void setAddname(String addname) {
		this.addname = addname;
	}
	
	public Date getAddtime() {
		return addtime;
	}
	
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}
	
	public int getStatus() {
		return status;
	}
	
	public void setStatus(int status) {
		this.status = status;
	}
	
	public String getVl() {
		return vl;
	}
	
	public void setVl(String vl) {
		this.vl = vl;
	}
	
	public String getParent_en() {
		return parent_en;
	}
	
	public void setParent_en(String parentEn) {
		parent_en = parentEn;
	}
	
	public String getParent_ens() {
		return parent_ens;
	}
	
	public void setParent_ens(String parentEns) {
		parent_ens = parentEns;
	}
	
	public int getInfo_num() {
		return info_num;
	}
	
	public void setInfo_num(int infoNum) {
		info_num = infoNum;
	}
	
}
