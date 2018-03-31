package com.lv.entity;

import java.util.Date;

public class VirtualAccounts {
    private Integer objectNo;//对象编号

    private Integer objectType;//对象类型

    private Double totalMoney;//账户总余额

    private Double availableMoney;//可用余额

    private Double freezeMoney;//冻结余额

    private String checkValue;//校验值

    private Date changeTime;//变动日期

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

	public Double getTotalMoney() {
		return totalMoney;
	}

	public void setTotalMoney(Double totalMoney) {
		this.totalMoney = totalMoney;
	}

	public Double getAvailableMoney() {
		return availableMoney;
	}

	public void setAvailableMoney(Double availableMoney) {
		this.availableMoney = availableMoney;
	}

	public Double getFreezeMoney() {
		return freezeMoney;
	}

	public void setFreezeMoney(Double freezeMoney) {
		this.freezeMoney = freezeMoney;
	}

	public String getCheckValue() {
		return checkValue;
	}

	public void setCheckValue(String checkValue) {
		this.checkValue = checkValue;
	}

	public Date getChangeTime() {
		return changeTime;
	}

	public void setChangeTime(Date changeTime) {
		this.changeTime = changeTime;
	}

    
}