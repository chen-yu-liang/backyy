package com.lv.entity;

import java.util.Date;

public class AgentRelation {
    private Integer agentNo;//代理商编号

    private String directAgentNo;//所属代理商编号

    private Integer directAgentLevel;//所属代理商等级

    private Integer agentLevle;//代理商等级

    private Date auditTime;//审核日期

	public Integer getAgentNo() {
		return agentNo;
	}

	public void setAgentNo(Integer agentNo) {
		this.agentNo = agentNo;
	}

	public String getDirectAgentNo() {
		return directAgentNo;
	}

	public void setDirectAgentNo(String directAgentNo) {
		this.directAgentNo = directAgentNo;
	}

	public Integer getDirectAgentLevel() {
		return directAgentLevel;
	}

	public void setDirectAgentLevel(Integer directAgentLevel) {
		this.directAgentLevel = directAgentLevel;
	}

	public Integer getAgentLevle() {
		return agentLevle;
	}

	public void setAgentLevle(Integer agentLevle) {
		this.agentLevle = agentLevle;
	}

	public Date getAuditTime() {
		return auditTime;
	}

	public void setAuditTime(Date auditTime) {
		this.auditTime = auditTime;
	}

    
}