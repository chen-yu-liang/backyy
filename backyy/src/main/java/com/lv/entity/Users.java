package com.lv.entity;

public class Users {
	
	private Integer id;                 //用户id,主键
	private Integer status;				//用户状态,1为启用  0禁用
	private String user_name;			//登录名
	private String user_pass;			//登录密码
	private String cn_name;				//真实名称
	private String add_id;				//添加人id
	private Integer update_password;	//修改密码次数
	private Integer login_count;		//登录总次数
	private Integer user_role;       	//用户角色 0 管理员  1 业务员  2 财务
	private Integer user_type;			//用户类型   0 总后台用户   1代理商
	private String last_ip;				//最后登录IP
	private String last_date;			//最后登录时间
	private String belong_user;			//所属用户
	private String addtime;				//用户添加时间
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_pass() {
		return user_pass;
	}
	public void setUser_pass(String user_pass) {
		this.user_pass = user_pass;
	}
	public String getCn_name() {
		return cn_name;
	}
	public void setCn_name(String cn_name) {
		this.cn_name = cn_name;
	}
	public String getAdd_id() {
		return add_id;
	}
	public void setAdd_id(String add_id) {
		this.add_id = add_id;
	}
	public Integer getUpdate_password() {
		return update_password;
	}
	public void setUpdate_password(Integer update_password) {
		this.update_password = update_password;
	}
	public Integer getLogin_count() {
		return login_count;
	}
	public void setLogin_count(Integer login_count) {
		this.login_count = login_count;
	}
	public Integer getUser_role() {
		return user_role;
	}
	public void setUser_role(Integer user_role) {
		this.user_role = user_role;
	}
	public Integer getUser_type() {
		return user_type;
	}
	public void setUser_type(Integer user_type) {
		this.user_type = user_type;
	}
	public String getLast_ip() {
		return last_ip;
	}
	public void setLast_ip(String last_ip) {
		this.last_ip = last_ip;
	}
	public String getLast_date() {
		return last_date;
	}
	public void setLast_date(String last_date) {
		this.last_date = last_date;
	}
	public String getBelong_user() {
		return belong_user;
	}
	public void setBelong_user(String belong_user) {
		this.belong_user = belong_user;
	}
	public String getAddtime() {
		return addtime;
	}
	public void setAddtime(String addtime) {
		this.addtime = addtime;
	}
	@Override
	public String toString() {
		return "Users [id=" + id + ", status=" + status + ", user_name=" + user_name + ", user_pass=" + user_pass
				+ ", cn_name=" + cn_name + ", add_id=" + add_id + ", update_password=" + update_password
				+ ", login_count=" + login_count + ", user_role=" + user_role + ", user_type=" + user_type
				+ ", last_ip=" + last_ip + ", last_date=" + last_date + ", belong_user=" + belong_user + ", addtime="
				+ addtime + "]";
	}
	
	 

}
