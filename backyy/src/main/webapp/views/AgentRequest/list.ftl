
<#include "/common/pageForm.ftl">
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
					<td>
						交易流水号:<input type="text" name="tran_seq" value="${(p.params.tran_seq)!''}" size=15/>
					</td>
					<td>
						代理商编号:<input type="text" name="agent_no" value="${(p.params.agent_no)!''}" size=15/>
					</td>
					<td>
						收款账户:<input type="text" name="pay_acct_no" value="${(p.params.pay_acct_no)!''}" size=15/>
					</td>
					<td>
						收款人名:<input type="text" name="pay_acct_nm" value="${(p.params.pay_acct_nm)!''}" size=15/>
					</td>
					<td>
						请求时间：<input type="text" btw="date" selectvl_event="true" name="begintime" class="date" size="8" value="${(p.params.begintime)!''}" id = "startClassroomTime" maxDate = "#F{$dp.$D(\'endClassroomTime\',{M:-0});}" dateFmt="yyyy-MM-dd" readonly="true"/>
						--<input type="text" btw="date" selectvl_event="true" name="endtime" class="date" size="8" value="${(p.params.endtime)!''}" id = "endClassroomTime" minDate = "#F{$dp.$D(\'startClassroomTime\',{M:0});}" dateFmt="yyyy-MM-dd" readonly="true"/>&nbsp;&nbsp;&nbsp;
					</td>
					<td>
						请求类型：
						<select name="tran_cd" selectvl="${(p.params.tran_cd)!''}" >
							<option value="">请选择</option>
							<option value="4001">代付请求</option>
							<option value="4002">代付查询</option>
							<option value="4003">余额查询</option>
						</select>
					</td>
					<td>
						<div class="buttonActive"><div class="buttonContent"><button type="submit">查询</button></div></div>
					</td>
				<tr>
			</table>
		</div>
	</form>
</div>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
		</ul>
	</div>
	<table class="table" width="98%" layoutH="109">
		<thead>
			<tr>
				<th width="6%" orderField="tran_seq">交易流水号</th>
				<th width="6%" orderField="agent_no">代理编号</th>
				<th width="6%" orderField="tran_amt">交易金额</th>
				<th width="6%" orderField="tran_cd">交易代码</th>
				<th width="6%" orderField="pay_tm">提交时间</th>
				<th width="6%" orderField="ip">ip</th>
				<th width="6%" orderField="org_tran_seq">原交易流水号</th>
				<th width="6%" orderField="pay_acct_tp">收款账号类型</th>
				<th width="6%" orderField="pay_acct_nm">收款人名称</th>
				<th width="6%" orderField="pay_acct_no">收款人账号</th>
				<th width="6%" orderField="pay_bank_nm">收款行行名</th>
				<th width="6%" orderField="pay_bank_no">收款行开户行联行号</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.ID)!}">
					<td >${(list.TRAN_SEQ)!}</td>
					<td >${(list.AGENT_NO)!}</td>
					<td ><#if list.TRAN_AMT?? >${(list.TRAN_AMT)!}(元)<#else></#if></td>
					<td >
					<#if list.TRAN_CD == '4001'>代付请求
					<#elseif list.TRAN_CD == '4002'>代付查询
					<#elseif list.TRAN_CD == '4003'>余额查询
					<#else>${(list.TRAN_CD)!}</#if>
					</td>
					<td >${list.PAY_TM?datetime("yyyyMMddHHmmss")}</td>
					<td >${(list.IP)!}</td>
					<td ><#if list.ORG_TRAN_SEQ??&&list.ORG_TRAN_SEQ!='null'>${(list.ORG_TRAN_SEQ)!}<#else>暂无</#if></td>
					<td ><#if list.PAY_ACCT_TP ??&&list.PAY_ACCT_TP == '0'>对公<#else>对私</#if></td>
					<td >${(list.PAY_ACCT_NM)!}</td>
					<td >${(list.PAY_ACCT_NO)!}</td>
					<td >${(list.PAY_BANK_NM)!}</td>
					<td >${(list.PAY_BANK_NO)!}</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

