package com.lv.entity;

import java.util.Date;

public class Acounts {
    private Integer id;

    private Integer objectNo;//对象编号

    private Integer objectType;//对此昂类型  0：代理商  1:商户

    private String accountBankName;//开户行名称

    private String accountBankNo;//开户行行号

    private String accountUsername;//开户名

    private String accountCardNo;//开户卡号

    private String phone;//预留手机号

    private Integer accountType;//账号类型    0：对私   1：对公

    private Integer accountStatus;//账号状态    0：停用    1：启用   2：冻结

    private String bankBranchName;//支行名称

    private String checkValue;//校验值

    private Date addTime;//添加日期

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getObjectNo() {
		return objectNo;
	}

	public void setObjectNo(Integer objectNo) {
		this.objectNo = objectNo;
	}

	public Integer getObjectType() {
		return objectType;
	}

	public void setObjectType(Integer objectType) {
		this.objectType = objectType;
	}

	public String getAccountBankName() {
		return accountBankName;
	}

	public void setAccountBankName(String accountBankName) {
		this.accountBankName = accountBankName;
	}

	public String getAccountBankNo() {
		return accountBankNo;
	}

	public void setAccountBankNo(String accountBankNo) {
		this.accountBankNo = accountBankNo;
	}

	public String getAccountUsername() {
		return accountUsername;
	}

	public void setAccountUsername(String accountUsername) {
		this.accountUsername = accountUsername;
	}

	public String getAccountCardNo() {
		return accountCardNo;
	}

	public void setAccountCardNo(String accountCardNo) {
		this.accountCardNo = accountCardNo;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Integer getAccountType() {
		return accountType;
	}

	public void setAccountType(Integer accountType) {
		this.accountType = accountType;
	}

	public Integer getAccountStatus() {
		return accountStatus;
	}

	public void setAccountStatus(Integer accountStatus) {
		this.accountStatus = accountStatus;
	}

	public String getBankBranchName() {
		return bankBranchName;
	}

	public void setBankBranchName(String bankBranchName) {
		this.bankBranchName = bankBranchName;
	}

	public String getCheckValue() {
		return checkValue;
	}

	public void setCheckValue(String checkValue) {
		this.checkValue = checkValue;
	}

	public Date getAddTime() {
		return addTime;
	}

	public void setAddTime(Date addTime) {
		this.addTime = addTime;
	}

   
}