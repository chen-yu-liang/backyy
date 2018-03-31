package com.lv.entity;

import java.util.Date;

public class RepayProjectDetails {
    private String projectNo;//计划编号

    private String repayCardNo;//还款卡号

    private Integer tradeType;//交易类型    0扣款   1还款

    private Double repayMoney;//还款金额

    private Date projectTime;//计划时间

    private Date completeTime;//完成时间

    private String serial;//交易流水号或代付流水号

    private Integer status;//状态   0未执行  1执行中   2执行完成   3终止

    private String identificationNo;//标识码  生成规则 ：计划编号+数字累积   用于区分子计划和父计划

    private String checkCode;//校验码 修改数据库时需要

    private String remark;//备注

    public String getProjectNo() {
        return projectNo;
    }

    public void setProjectNo(String projectNo) {
        this.projectNo = projectNo == null ? null : projectNo.trim();
    }

    public String getRepayCardNo() {
        return repayCardNo;
    }

    public void setRepayCardNo(String repayCardNo) {
        this.repayCardNo = repayCardNo == null ? null : repayCardNo.trim();
    }

    public Integer getTradeType() {
        return tradeType;
    }

    public void setTradeType(Integer tradeType) {
        this.tradeType = tradeType;
    }

    public Double getRepayMoney() {
		return repayMoney;
	}

	public void setRepayMoney(Double repayMoney) {
		this.repayMoney = repayMoney;
	}

	public Date getProjectTime() {
        return projectTime;
    }

    public void setProjectTime(Date projectTime) {
        this.projectTime = projectTime;
    }

    public Date getCompleteTime() {
        return completeTime;
    }

    public void setCompleteTime(Date completeTime) {
        this.completeTime = completeTime;
    }

    public String getSerial() {
        return serial;
    }

    public void setSerial(String serial) {
        this.serial = serial == null ? null : serial.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getIdentificationNo() {
        return identificationNo;
    }

    public void setIdentificationNo(String identificationNo) {
        this.identificationNo = identificationNo == null ? null : identificationNo.trim();
    }

    public String getCheckCode() {
        return checkCode;
    }

    public void setCheckCode(String checkCode) {
        this.checkCode = checkCode == null ? null : checkCode.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}