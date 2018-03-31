package com.lv.entity;

import java.util.Date;

public class SalePolicyDetails {
    private Integer id;

    private Integer objectType;//对象类型

    private String objectNo;//对象编号

    private Integer tradeType;//交易类型    待定

    private Integer tradeRate;//费率

    private Date addTime;//添加时间

    private String addPerson;//添加人

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

    public Integer getTradeType() {
        return tradeType;
    }

    public void setTradeType(Integer tradeType) {
        this.tradeType = tradeType;
    }

    public Integer getTradeRate() {
        return tradeRate;
    }

    public void setTradeRate(Integer tradeRate) {
        this.tradeRate = tradeRate;
    }

    public Date getAddTime() {
        return addTime;
    }

    public void setAddTime(Date addTime) {
        this.addTime = addTime;
    }

    public String getAddPerson() {
        return addPerson;
    }

    public void setAddPerson(String addPerson) {
        this.addPerson = addPerson == null ? null : addPerson.trim();
    }
}