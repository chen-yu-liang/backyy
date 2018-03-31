package com.lv.entity;

import java.util.Date;

public class MerchantSubsidiary {
    private Integer merchantNo;//商户编号

    private String address;//商户地址

    private Date addTime;//添加时间

    private String locationInfo;//精确定位信息

    public Integer getMerchantNo() {
        return merchantNo;
    }

    public void setMerchantNo(Integer merchantNo) {
        this.merchantNo = merchantNo;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public Date getAddTime() {
        return addTime;
    }

    public void setAddTime(Date addTime) {
        this.addTime = addTime;
    }

    public String getLocationInfo() {
        return locationInfo;
    }

    public void setLocationInfo(String locationInfo) {
        this.locationInfo = locationInfo == null ? null : locationInfo.trim();
    }
}