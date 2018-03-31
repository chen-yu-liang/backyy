package com.lv.entity;

import java.util.Date;

public class AccountChange {
    private Integer id;                 

    private String accountBankNameBefore;//变更前开户行名称

    private String accountBankNameAfter;//变更后开户行名称

    private String accountBankNoBefore;//变更前支行行号

    private String accountBankNoAfter;//变更后支行行号

    private String accountUsernameBefore;//变更前开户名

    private String accountUsernameAfter;//变更后开户名

    private String accountCardNoBefore;//变更前开户账号

    private String accountCardNoAfter;//变更后开户账号

    private String phoneBefore;//变更前预留手机号

    private String phoneAfter;//变更后预留手机号

    private Integer objectNo;//对象编号

    private String objectType;//对象类型   0：代理商   1：商户

    private String accountType;//账号类型   0：对私    1：对公

    private String status;//状态    0：申请  1：成功  2：失败

    private String bankBranchName;//支行行号

    private String serialNumber;//流水号

    private Date addTime;//添加日期

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAccountBankNameBefore() {
        return accountBankNameBefore;
    }

    public void setAccountBankNameBefore(String accountBankNameBefore) {
        this.accountBankNameBefore = accountBankNameBefore == null ? null : accountBankNameBefore.trim();
    }

    public String getAccountBankNameAfter() {
        return accountBankNameAfter;
    }

    public void setAccountBankNameAfter(String accountBankNameAfter) {
        this.accountBankNameAfter = accountBankNameAfter == null ? null : accountBankNameAfter.trim();
    }

    public String getAccountBankNoBefore() {
        return accountBankNoBefore;
    }

    public void setAccountBankNoBefore(String accountBankNoBefore) {
        this.accountBankNoBefore = accountBankNoBefore == null ? null : accountBankNoBefore.trim();
    }

    public String getAccountBankNoAfter() {
        return accountBankNoAfter;
    }

    public void setAccountBankNoAfter(String accountBankNoAfter) {
        this.accountBankNoAfter = accountBankNoAfter == null ? null : accountBankNoAfter.trim();
    }

    public String getAccountUsernameBefore() {
        return accountUsernameBefore;
    }

    public void setAccountUsernameBefore(String accountUsernameBefore) {
        this.accountUsernameBefore = accountUsernameBefore == null ? null : accountUsernameBefore.trim();
    }

    public String getAccountUsernameAfter() {
        return accountUsernameAfter;
    }

    public void setAccountUsernameAfter(String accountUsernameAfter) {
        this.accountUsernameAfter = accountUsernameAfter == null ? null : accountUsernameAfter.trim();
    }

    public String getAccountCardNoBefore() {
        return accountCardNoBefore;
    }

    public void setAccountCardNoBefore(String accountCardNoBefore) {
        this.accountCardNoBefore = accountCardNoBefore == null ? null : accountCardNoBefore.trim();
    }

    public String getAccountCardNoAfter() {
        return accountCardNoAfter;
    }

    public void setAccountCardNoAfter(String accountCardNoAfter) {
        this.accountCardNoAfter = accountCardNoAfter == null ? null : accountCardNoAfter.trim();
    }

    public String getPhoneBefore() {
        return phoneBefore;
    }

    public void setPhoneBefore(String phoneBefore) {
        this.phoneBefore = phoneBefore == null ? null : phoneBefore.trim();
    }

    public String getPhoneAfter() {
        return phoneAfter;
    }

    public void setPhoneAfter(String phoneAfter) {
        this.phoneAfter = phoneAfter == null ? null : phoneAfter.trim();
    }

    public Integer getObjectNo() {
        return objectNo;
    }

    public void setObjectNo(Integer objectNo) {
        this.objectNo = objectNo;
    }

    public String getObjectType() {
        return objectType;
    }

    public void setObjectType(String objectType) {
        this.objectType = objectType == null ? null : objectType.trim();
    }

    public String getAccountType() {
        return accountType;
    }

    public void setAccountType(String accountType) {
        this.accountType = accountType == null ? null : accountType.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getBankBranchName() {
        return bankBranchName;
    }

    public void setBankBranchName(String bankBranchName) {
        this.bankBranchName = bankBranchName == null ? null : bankBranchName.trim();
    }

    public String getSerialNumber() {
        return serialNumber;
    }

    public void setSerialNumber(String serialNumber) {
        this.serialNumber = serialNumber == null ? null : serialNumber.trim();
    }

    public Date getAddTime() {
        return addTime;
    }

    public void setAddTime(Date addTime) {
        this.addTime = addTime;
    }
}