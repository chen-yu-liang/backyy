package com.lv.entity;

import java.util.Date;

public class VirtualAccountsFlow {
    private Integer objectNo;//对象编号

    private Integer objectType;//对象类型   0代理商  1商户

    private Double changeMoney;//变动金额

    private Integer transactionType;//交易类型

    private Double changeMoneyBefore;//变动前金额

    private Double changeMoneyAfter;//变动后金额

    private Date changeTime;//变动时间

    private String serialNumber;//流水号

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

	public Double getChangeMoney() {
		return changeMoney;
	}

	public void setChangeMoney(Double changeMoney) {
		this.changeMoney = changeMoney;
	}

	public Integer getTransactionType() {
		return transactionType;
	}

	public void setTransactionType(Integer transactionType) {
		this.transactionType = transactionType;
	}

	public Double getChangeMoneyBefore() {
		return changeMoneyBefore;
	}

	public void setChangeMoneyBefore(Double changeMoneyBefore) {
		this.changeMoneyBefore = changeMoneyBefore;
	}

	public Double getChangeMoneyAfter() {
		return changeMoneyAfter;
	}

	public void setChangeMoneyAfter(Double changeMoneyAfter) {
		this.changeMoneyAfter = changeMoneyAfter;
	}

	public Date getChangeTime() {
		return changeTime;
	}

	public void setChangeTime(Date changeTime) {
		this.changeTime = changeTime;
	}

	public String getSerialNumber() {
		return serialNumber;
	}

	public void setSerialNumber(String serialNumber) {
		this.serialNumber = serialNumber;
	}

    
}