package com.lv.entity;

import java.util.Date;

public class CheckDetail {
    private String orderNum;//订单编号

    private Double tradeMoney;//交易金额

    private Double commission;//交易手续费

    private Double closeMoney;//结算金额

    private Date completionDate;//交易完成日期

    private Date completionTime;//交易完成时间

    private Integer payStatus;//支付状态    0未支付   1已支付

    private String clearType;//清算状态    0未清算    1已清算

    private Integer outStatus;//出款转台  0未出款  1已出款

    private String checkSerial;//

    private String merchantNo;//商户编号

    private Double agentCost;//代理商成本

    private Double agentProfit;//代理商分润

    private Integer tradeType;//交易类型    0微信     1支付宝      2无卡

	public String getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}

	public Double getTradeMoney() {
		return tradeMoney;
	}

	public void setTradeMoney(Double tradeMoney) {
		this.tradeMoney = tradeMoney;
	}

	public Double getCommission() {
		return commission;
	}

	public void setCommission(Double commission) {
		this.commission = commission;
	}

	public Double getCloseMoney() {
		return closeMoney;
	}

	public void setCloseMoney(Double closeMoney) {
		this.closeMoney = closeMoney;
	}

	public Date getCompletionDate() {
		return completionDate;
	}

	public void setCompletionDate(Date completionDate) {
		this.completionDate = completionDate;
	}

	public Date getCompletionTime() {
		return completionTime;
	}

	public void setCompletionTime(Date completionTime) {
		this.completionTime = completionTime;
	}

	public Integer getPayStatus() {
		return payStatus;
	}

	public void setPayStatus(Integer payStatus) {
		this.payStatus = payStatus;
	}

	public String getClearType() {
		return clearType;
	}

	public void setClearType(String clearType) {
		this.clearType = clearType;
	}

	public Integer getOutStatus() {
		return outStatus;
	}

	public void setOutStatus(Integer outStatus) {
		this.outStatus = outStatus;
	}

	public String getCheckSerial() {
		return checkSerial;
	}

	public void setCheckSerial(String checkSerial) {
		this.checkSerial = checkSerial;
	}

	public String getMerchantNo() {
		return merchantNo;
	}

	public void setMerchantNo(String merchantNo) {
		this.merchantNo = merchantNo;
	}

	public Double getAgentCost() {
		return agentCost;
	}

	public void setAgentCost(Double agentCost) {
		this.agentCost = agentCost;
	}

	public Double getAgentProfit() {
		return agentProfit;
	}

	public void setAgentProfit(Double agentProfit) {
		this.agentProfit = agentProfit;
	}

	public Integer getTradeType() {
		return tradeType;
	}

	public void setTradeType(Integer tradeType) {
		this.tradeType = tradeType;
	}

   
}