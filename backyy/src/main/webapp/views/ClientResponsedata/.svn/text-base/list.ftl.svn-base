
<#include "/common/pageForm.ftl">
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
						<td>
							凭证号:<input type="text" name="serial" value="${(p.params.serial)!''}" size=25/>
						</td>
						<td>
							交易时间：<input type="text" btw="date" selectvl_event="true" name="begintime" class="date" size="8" value="${(p.params.begintime)!''}" id = "startClassroomTime" maxDate = "#F{$dp.$D(\'endClassroomTime\',{M:-0});}" dateFmt="yyyy-MM-dd" readonly="true"/>
							--<input type="text" btw="date" selectvl_event="true" name="endtime" class="date" size="8" value="${(p.params.endtime)!''}" id = "endClassroomTime" minDate = "#F{$dp.$D(\'startClassroomTime\',{M:0});}" dateFmt="yyyy-MM-dd" readonly="true"/>&nbsp;&nbsp;&nbsp;
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
	<table class="table" width="3000px" layoutH="85">
		<thead>
			<tr>
				<th width="200px" orderField="serial">唯一凭证号</th>
				<th width="200px" orderField="client_no">商户号</th>
				<th width="200px" orderField="client_name">商户名</th>
				<th width="100px" orderField="amount">交易金额</th>
				<th width="200px" orderField="reqdid">商户订单号</th>
				<th width="200px" orderField="service">交易类型</th>
				<th width="200px" orderField="localdate">交易时间</th>
				<th width="100px" orderField="res_code">返回码</th>
				<th width="200px" orderField="number">支付结果通知次数</th>
				<th width="200px" orderField="status">支付结果通知状态 </th>
				<th width="100px" orderField="trade_state">支付状态</th>
				<th width="200px" orderField="pay_time">支付时间</th>
				<th width="200px" orderField="time">支付结果通知时间</th>
				<th width="200px" orderField="account_card_no">结算卡号</th>
				<th width="200px" orderField="account_name">结算账户名</th>
				<th width="200px" orderField="account_bank_name">结算行</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.ID)!}">
					<td >${(list.SERIAL)!}</td>
					<td >${(list.CLIENT_NO)!}</td>
					<td >${(list.CLIENT_NAME)!}</td>
					<td >${(list.AMOUNT)!}</td>
					<td >${(list.REQDID)!}</td>
					<td >${(list.SERVICE)!}</td>
					<td >${(list.LOCALDATE)!}</td>
					<td >${(list.RES_CODE)!}</td>
					<td >${(list.NUMBER)!}</td>
					<td ><#if list.STATUS??><#if list.STATUS==0>成功<#else>失败</#if></#if>[${(list.STATUS)!}]</td>
					<td ><#if list.TRADE_STATE??><#if list.TRADE_STATE='0'>成功<#else>失败</#if></#if>[${(list.TRADE_STATE)!}]</td>
					<td >${(list.PAY_TIME)!}</td>
					<td >${(list.TIME)!}</td>
					<td >${(list.ACCOUNT_CARD_NO)!}</td>
					<td >${(list.ACCOUNT_NAME)!}</td>
					<td >${(list.ACCOUNT_BANK_NAME)!}</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

