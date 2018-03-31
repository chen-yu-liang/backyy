package com.lv.entity;

import java.util.Date;

public class VirtualAccountAdjust {
    private Integer objectNo;//对象编号

    private Integer objectType;//对象类型  0代理商  1商户

    private Integer operationType;//操作类型   0冻结金额    1可用余额

    private Integer operationUserId;//操作人id

    private Double changeMoney;//变动金额

    private Date operationTime;//操作时间

    private Integer approveUserId;//审批人id

    private String description;//调账原因

    private Integer serialNumber;//调账流水号

    private Integer status;//调账状态  0申请   1审核中   2通过    3未通过

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

	public Integer getOperationType() {
		return operationType;
	}

	public void setOperationType(Integer operationType) {
		this.operationType = operationType;
	}

	public Integer getOperationUserId() {
		return operationUserId;
	}

	public void setOperationUserId(Integer operationUserId) {
		this.operationUserId = operationUserId;
	}

	public Double getChangeMoney() {
		return changeMoney;
	}

	public void setChangeMoney(Double changeMoney) {
		this.changeMoney = changeMoney;
	}

	public Date getOperationTime() {
		return operationTime;
	}

	public void setOperationTime(Date operationTime) {
		this.operationTime = operationTime;
	}

	public Integer getApproveUserId() {
		return approveUserId;
	}

	public void setApproveUserId(Integer approveUserId) {
		this.approveUserId = approveUserId;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getSerialNumber() {
		return serialNumber;
	}

	public void setSerialNumber(Integer serialNumber) {
		this.serialNumber = serialNumber;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

    
}