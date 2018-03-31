package com.lv.entity;

public class QrCode {
    private Integer id;

    private String merchantNo;//商户编号

    private String upAgentNo;//上级代理编号

    private String primaryAgentNo;//一级代理商编号

    private Integer merchantPolicyNo;//商户政策代号

    private String upMerchantNo;//二级商户编号

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMerchantNo() {
        return merchantNo;
    }

    public void setMerchantNo(String merchantNo) {
        this.merchantNo = merchantNo == null ? null : merchantNo.trim();
    }

    public String getUpAgentNo() {
        return upAgentNo;
    }

    public void setUpAgentNo(String upAgentNo) {
        this.upAgentNo = upAgentNo == null ? null : upAgentNo.trim();
    }

    public String getPrimaryAgentNo() {
        return primaryAgentNo;
    }

    public void setPrimaryAgentNo(String primaryAgentNo) {
        this.primaryAgentNo = primaryAgentNo == null ? null : primaryAgentNo.trim();
    }

    public Integer getMerchantPolicyNo() {
        return merchantPolicyNo;
    }

    public void setMerchantPolicyNo(Integer merchantPolicyNo) {
        this.merchantPolicyNo = merchantPolicyNo;
    }

    public String getUpMerchantNo() {
        return upMerchantNo;
    }

    public void setUpMerchantNo(String upMerchantNo) {
        this.upMerchantNo = upMerchantNo == null ? null : upMerchantNo.trim();
    }
}