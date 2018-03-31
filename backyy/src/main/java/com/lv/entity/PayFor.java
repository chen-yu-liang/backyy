package com.lv.entity;

import java.util.Date;

public class PayFor {
    private Integer id;

    private Integer objectType;//对象类型  0代理商  1商户

    private String objectNo;//对象编号

    private String repayChannelNo;//代付通道编号

    private String orgNo;//渠道编号

    private Integer payMoney;//代付金额

    private Integer payCommission;//代付手续费

    private Integer payType;//代付类型  0分润款    1代还款

    private String bankName;//支行行名称

    private String branchBankNo;//支行行号

    private String accountName;//开户名

    private String accountNo;//开户账号

    private Integer accountType;//账号类型

    private Integer status;//状态   0代付失败    1代付成功

    private String branchBankName;//支行名称

    private Date addTime;//天剑日期

    private String typeSerial;//类型对应流水号

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
        this.objectNo = objectNo == null ? null : objectNo.trim();
    }

    public String getRepayChannelNo() {
        return repayChannelNo;
    }

    public void setRepayChannelNo(String repayChannelNo) {
        this.repayChannelNo = repayChannelNo == null ? null : repayChannelNo.trim();
    }

    public String getOrgNo() {
        return orgNo;
    }

    public void setOrgNo(String orgNo) {
        this.orgNo = orgNo == null ? null : orgNo.trim();
    }

    public Integer getPayMoney() {
        return payMoney;
    }

    public void setPayMoney(Integer payMoney) {
        this.payMoney = payMoney;
    }

    public Integer getPayCommission() {
        return payCommission;
    }

    public void setPayCommission(Integer payCommission) {
        this.payCommission = payCommission;
    }

    public Integer getPayType() {
        return payType;
    }

    public void setPayType(Integer payType) {
        this.payType = payType;
    }

    public String getBankName() {
        return bankName;
    }

    public void setBankName(String bankName) {
        this.bankName = bankName == null ? null : bankName.trim();
    }

    public String getBranchBankNo() {
        return branchBankNo;
    }

    public void setBranchBankNo(String branchBankNo) {
        this.branchBankNo = branchBankNo == null ? null : branchBankNo.trim();
    }

    public String getAccountName() {
        return accountName;
    }

    public void setAccountName(String accountName) {
        this.accountName = accountName == null ? null : accountName.trim();
    }

    public String getAccountNo() {
        return accountNo;
    }

    public void setAccountNo(String accountNo) {
        this.accountNo = accountNo == null ? null : accountNo.trim();
    }

    public Integer getAccountType() {
        return accountType;
    }

    public void setAccountType(Integer accountType) {
        this.accountType = accountType;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getBranchBankName() {
        return branchBankName;
    }

    public void setBranchBankName(String branchBankName) {
        this.branchBankName = branchBankName == null ? null : branchBankName.trim();
    }

    public Date getAddTime() {
        return addTime;
    }

    public void setAddTime(Date addTime) {
        this.addTime = addTime;
    }

    public String getTypeSerial() {
        return typeSerial;
    }

    public void setTypeSerial(String typeSerial) {
        this.typeSerial = typeSerial == null ? null : typeSerial.trim();
    }
}