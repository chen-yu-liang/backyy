package com.lv.entity;

import java.util.Date;

public class TradeInfo {
    private Integer tadeType;//交易类型

    private String tradeSerialNum;//交易流水账号 唯一标示

    private String payChannelNum;//通道编号

    private String orgNum;//渠道编号

    private Double transactionAmount;//交易金额

    private String upSerialNum;//上游流水号 本笔交易在上游机构系统中显示的流水号

    private String tradeCardNum;//交易卡号 本次交易绑定的卡号 视为本次交易的主体

    private Date tradeTime;//交易时间

    private Date tradeDate;//交易日期

    private Integer tradeStatus;//交易状态 待定

    private Integer clearStatus;//清算状态   0未清算    1已清算   2清算中

    private Integer checkStatus;//对账转台  0未对账    1已对账   2对账中

    private String merchantCode;//商户编号

    private String agentCode;//代理商编号

    private String productCode;//交易来源 所属产品代号  区分来自不同产品的交易记录

    public Integer getTadeType() {
        return tadeType;
    }

    public void setTadeType(Integer tadeType) {
        this.tadeType = tadeType;
    }

    public String getTradeSerialNum() {
        return tradeSerialNum;
    }

    public void setTradeSerialNum(String tradeSerialNum) {
        this.tradeSerialNum = tradeSerialNum == null ? null : tradeSerialNum.trim();
    }

    public String getPayChannelNum() {
        return payChannelNum;
    }

    public void setPayChannelNum(String payChannelNum) {
        this.payChannelNum = payChannelNum == null ? null : payChannelNum.trim();
    }

    public String getOrgNum() {
        return orgNum;
    }

    public void setOrgNum(String orgNum) {
        this.orgNum = orgNum == null ? null : orgNum.trim();
    }

    public Double getTransactionAmount() {
		return transactionAmount;
	}

	public void setTransactionAmount(Double transactionAmount) {
		this.transactionAmount = transactionAmount;
	}

	public String getUpSerialNum() {
        return upSerialNum;
    }

    public void setUpSerialNum(String upSerialNum) {
        this.upSerialNum = upSerialNum == null ? null : upSerialNum.trim();
    }

    public String getTradeCardNum() {
        return tradeCardNum;
    }

    public void setTradeCardNum(String tradeCardNum) {
        this.tradeCardNum = tradeCardNum == null ? null : tradeCardNum.trim();
    }

    public Date getTradeTime() {
        return tradeTime;
    }

    public void setTradeTime(Date tradeTime) {
        this.tradeTime = tradeTime;
    }

    public Date getTradeDate() {
        return tradeDate;
    }

    public void setTradeDate(Date tradeDate) {
        this.tradeDate = tradeDate;
    }

    public Integer getTradeStatus() {
        return tradeStatus;
    }

    public void setTradeStatus(Integer tradeStatus) {
        this.tradeStatus = tradeStatus;
    }

    public Integer getClearStatus() {
        return clearStatus;
    }

    public void setClearStatus(Integer clearStatus) {
        this.clearStatus = clearStatus;
    }

    public Integer getCheckStatus() {
        return checkStatus;
    }

    public void setCheckStatus(Integer checkStatus) {
        this.checkStatus = checkStatus;
    }

    public String getMerchantCode() {
        return merchantCode;
    }

    public void setMerchantCode(String merchantCode) {
        this.merchantCode = merchantCode == null ? null : merchantCode.trim();
    }

    public String getAgentCode() {
        return agentCode;
    }

    public void setAgentCode(String agentCode) {
        this.agentCode = agentCode == null ? null : agentCode.trim();
    }

    public String getProductCode() {
        return productCode;
    }

    public void setProductCode(String productCode) {
        this.productCode = productCode == null ? null : productCode.trim();
    }
}