package com.lv.entity;

import java.util.Date;

public class SeedApply {
    private Integer id;

    private String agentNo;//代理商编号

    private Integer seedAmount;//种子码数量

    private Double singlePrice;//种子码单价

    private Double totalPrice;//种子码总金额

    private Date addTime;//添加时间

    private Integer applyStatus;//申请状态  0未通过   1已通过    2审核中

    private String operator;//操作人

    private String policyNo;//政策编号

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getAgentNo() {
		return agentNo;
	}

	public void setAgentNo(String agentNo) {
		this.agentNo = agentNo;
	}

	public Integer getSeedAmount() {
		return seedAmount;
	}

	public void setSeedAmount(Integer seedAmount) {
		this.seedAmount = seedAmount;
	}

	public Double getSinglePrice() {
		return singlePrice;
	}

	public void setSinglePrice(Double singlePrice) {
		this.singlePrice = singlePrice;
	}

	public Double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(Double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public Date getAddTime() {
		return addTime;
	}

	public void setAddTime(Date addTime) {
		this.addTime = addTime;
	}

	public Integer getApplyStatus() {
		return applyStatus;
	}

	public void setApplyStatus(Integer applyStatus) {
		this.applyStatus = applyStatus;
	}

	public String getOperator() {
		return operator;
	}

	public void setOperator(String operator) {
		this.operator = operator;
	}

	public String getPolicyNo() {
		return policyNo;
	}

	public void setPolicyNo(String policyNo) {
		this.policyNo = policyNo;
	}

   
}