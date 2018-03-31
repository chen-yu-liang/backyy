package com.lv.entity;

import java.util.Date;

public class Merchant {
    private Integer merchantNo;//商户编号

    private String merchantName;//商户名称

    private String province;//省

    private String city;//市

    private String district;//区

    private String idCard;//身份证号

    private String phone;//手机号

    private Integer directAgentNo;//代理商编号

    private Integer firstLevelAgentNo;//一级代理商编号

    private String secretKey;//主密钥

    private String status;//状态

    private Date addDate;//添加日期

    private Date addTime;//添加时间

    private String secret;//登录密码

    public Integer getMerchantNo() {
        return merchantNo;
    }

    public void setMerchantNo(Integer merchantNo) {
        this.merchantNo = merchantNo;
    }

    public String getMerchantName() {
        return merchantName;
    }

    public void setMerchantName(String merchantName) {
        this.merchantName = merchantName == null ? null : merchantName.trim();
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province == null ? null : province.trim();
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city == null ? null : city.trim();
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district == null ? null : district.trim();
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard == null ? null : idCard.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public Integer getDirectAgentNo() {
        return directAgentNo;
    }

    public void setDirectAgentNo(Integer directAgentNo) {
        this.directAgentNo = directAgentNo;
    }

    public Integer getFirstLevelAgentNo() {
        return firstLevelAgentNo;
    }

    public void setFirstLevelAgentNo(Integer firstLevelAgentNo) {
        this.firstLevelAgentNo = firstLevelAgentNo;
    }

    public String getSecretKey() {
        return secretKey;
    }

    public void setSecretKey(String secretKey) {
        this.secretKey = secretKey == null ? null : secretKey.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public Date getAddDate() {
        return addDate;
    }

    public void setAddDate(Date addDate) {
        this.addDate = addDate;
    }

    public Date getAddTime() {
        return addTime;
    }

    public void setAddTime(Date addTime) {
        this.addTime = addTime;
    }

    public String getSecret() {
        return secret;
    }

    public void setSecret(String secret) {
        this.secret = secret == null ? null : secret.trim();
    }
}