package com.lv.entity;

import java.util.Date;

public class Withddraw {
    private Integer id;

    private Integer objectType;//对象类型

    private String objectNo;//对象编号

    private Double withdrawMoney;//提现金额

    private Date applicationTime;//申请时间

    private String withdrawOrderNo;//提现单号

    private String paySerial;//代付流水号

    private String objectName;//对象名称

    private Integer status;//状态     0申请   1审核中   2已审核    3已出款 

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getObjectType() {
		return objectType;
	}

	public void setObjectType(Integer objectType) {
		this.objectType = objectType;
	}

	public String getObjectNo() {
		return objectNo;
	}

	public void setObjectNo(String objectNo) {
		this.objectNo = objectNo;
	}

	public Double getWithdrawMoney() {
		return withdrawMoney;
	}

	public void setWithdrawMoney(Double withdrawMoney) {
		this.withdrawMoney = withdrawMoney;
	}

	public Date getApplicationTime() {
		return applicationTime;
	}

	public void setApplicationTime(Date applicationTime) {
		this.applicationTime = applicationTime;
	}

	public String getWithdrawOrderNo() {
		return withdrawOrderNo;
	}

	public void setWithdrawOrderNo(String withdrawOrderNo) {
		this.withdrawOrderNo = withdrawOrderNo;
	}

	public String getPaySerial() {
		return paySerial;
	}

	public void setPaySerial(String paySerial) {
		this.paySerial = paySerial;
	}

	public String getObjectName() {
		return objectName;
	}

	public void setObjectName(String objectName) {
		this.objectName = objectName;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

}