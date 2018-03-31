package com.lv.entity;

public class Agent {
    private Integer agentNo;//代理商编号

    private String agentName;//代理商名称

    private String province;//省

    private String city;//市

    private String district;//区

    private String linkman;//联系人

    private String contactNumber;//联系人电话

    private String secretKey;//主密钥

    private Integer agentLevel;//代理商等级

    private String firstLevelAgentNo;//所属一级代理商编号   0：总公司

    private String directAgentNo;//直属代理商编号

    private Integer agentStatus;//代理商状态   0申请   1审核中  2正式  3停用

    private String salesmanNo;//所属业务员编号

	public Integer getAgentNo() {
		return agentNo;
	}

	public void setAgentNo(Integer agentNo) {
		this.agentNo = agentNo;
	}

	public String getAgentName() {
		return agentName;
	}

	public void setAgentName(String agentName) {
		this.agentName = agentName;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getLinkman() {
		return linkman;
	}

	public void setLinkman(String linkman) {
		this.linkman = linkman;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	public String getSecretKey() {
		return secretKey;
	}

	public void setSecretKey(String secretKey) {
		this.secretKey = secretKey;
	}

	public Integer getAgentLevel() {
		return agentLevel;
	}

	public void setAgentLevel(Integer agentLevel) {
		this.agentLevel = agentLevel;
	}

	public String getFirstLevelAgentNo() {
		return firstLevelAgentNo;
	}

	public void setFirstLevelAgentNo(String firstLevelAgentNo) {
		this.firstLevelAgentNo = firstLevelAgentNo;
	}

	public String getDirectAgentNo() {
		return directAgentNo;
	}

	public void setDirectAgentNo(String directAgentNo) {
		this.directAgentNo = directAgentNo;
	}

	public Integer getAgentStatus() {
		return agentStatus;
	}

	public void setAgentStatus(Integer agentStatus) {
		this.agentStatus = agentStatus;
	}

	public String getSalesmanNo() {
		return salesmanNo;
	}

	public void setSalesmanNo(String salesmanNo) {
		this.salesmanNo = salesmanNo;
	}

    
}