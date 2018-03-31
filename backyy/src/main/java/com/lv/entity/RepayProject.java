package com.lv.entity;

import java.util.Date;

public class RepayProject {
    private Integer id;

    private Double workingCash;//周转资金 用户设置的还款本金

    private Integer totalAmount;//总次数

    private Integer repayAmount;//代还次数

    private Integer merchantNo;//商户编号

    private String projectNo;//计划编号

    private Date startTime;//开始时间

    private Date endTime;//终止时间

    private Double commission;//手续费

    private String rechargeCardNo;//充值卡号

    private String repayCardNo;//还款卡号

    private Integer repayStatus;//还款状态  0未执行  1执行中  2执行完成  3终止

    private Date addTime;//添加时间

    private Date completeTime;//完成时间

    private Integer completeNum;//已完成次数

    private Double completeMoney;//已完成金额

    private String remark;//备注

    private String upAgentNo;//上级代理商编号

    private String primaryAgentNo;//一级代理商编号

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Double getWorkingCash() {
		return workingCash;
	}

	public void setWorkingCash(Double workingCash) {
		this.workingCash = workingCash;
	}

	public Integer getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(Integer totalAmount) {
		this.totalAmount = totalAmount;
	}

	public Integer getRepayAmount() {
		return repayAmount;
	}

	public void setRepayAmount(Integer repayAmount) {
		this.repayAmount = repayAmount;
	}

	public Integer getMerchantNo() {
		return merchantNo;
	}

	public void setMerchantNo(Integer merchantNo) {
		this.merchantNo = merchantNo;
	}

	public String getProjectNo() {
		return projectNo;
	}

	public void setProjectNo(String projectNo) {
		this.projectNo = projectNo;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public Double getCommission() {
		return commission;
	}

	public void setCommission(Double commission) {
		this.commission = commission;
	}

	public String getRechargeCardNo() {
		return rechargeCardNo;
	}

	public void setRechargeCardNo(String rechargeCardNo) {
		this.rechargeCardNo = rechargeCardNo;
	}

	public String getRepayCardNo() {
		return repayCardNo;
	}

	public void setRepayCardNo(String repayCardNo) {
		this.repayCardNo = repayCardNo;
	}

	public Integer getRepayStatus() {
		return repayStatus;
	}

	public void setRepayStatus(Integer repayStatus) {
		this.repayStatus = repayStatus;
	}

	public Date getAddTime() {
		return addTime;
	}

	public void setAddTime(Date addTime) {
		this.addTime = addTime;
	}

	public Date getCompleteTime() {
		return completeTime;
	}

	public void setCompleteTime(Date completeTime) {
		this.completeTime = completeTime;
	}

	public Integer getCompleteNum() {
		return completeNum;
	}

	public void setCompleteNum(Integer completeNum) {
		this.completeNum = completeNum;
	}

	public Double getCompleteMoney() {
		return completeMoney;
	}

	public void setCompleteMoney(Double completeMoney) {
		this.completeMoney = completeMoney;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getUpAgentNo() {
		return upAgentNo;
	}

	public void setUpAgentNo(String upAgentNo) {
		this.upAgentNo = upAgentNo;
	}

	public String getPrimaryAgentNo() {
		return primaryAgentNo;
	}

	public void setPrimaryAgentNo(String primaryAgentNo) {
		this.primaryAgentNo = primaryAgentNo;
	}

    
}