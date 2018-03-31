
<#include "/common/pageForm.ftl">
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
					<td>
						代付流水号:<input type="text" name="tran_seq" value="${(p.params.tran_seq)!''}" size=15/>
					</td>
					<td>
						商户订单号:<input type="text" name="order_seq" value="${(p.params.order_seq)!''}" size=15/>
					</td>
					<td>
						代理商编号:<input type="text" name="agent_no" value="${(p.params.agent_no)!''}" size=15/>
					</td>
					<td>
						结算人名:<input type="text" name="account_name" value="${(p.params.account_name)!''}" size=15/>
					</td>
					<td>
						交易时间：<input type="text" btw="date" selectvl_event="true" name="begintime" class="date" size="8" value="${(p.params.begintime)!''}" id = "startClassroomTime" maxDate = "#F{$dp.$D(\'endClassroomTime\',{M:-0});}" dateFmt="yyyy-MM-dd" readonly="true"/>
						--<input type="text" btw="date" selectvl_event="true" name="endtime" class="date" size="8" value="${(p.params.endtime)!''}" id = "endClassroomTime" minDate = "#F{$dp.$D(\'startClassroomTime\',{M:0});}" dateFmt="yyyy-MM-dd" readonly="true"/>&nbsp;&nbsp;&nbsp;
					</td>
					<td>
					支付状态：
						<select name="status" selectvl="${(p.params.status)!''}" >
							<option value="">-请选择-</option>
							<option value=0>未支付</option>
							<option value=1>支付中</option>
							<option value=2>支付成功</option>
							<option value=3>支付失败</option>
						</select>
					</td>
					<td>
					返还状态：
						<select name="return_balance" selectvl="${(p.params.return_balance)!''}" >
							<option value="">-请选择-</option>
							<option value=0>未返还</option>
							<option value=1>已返还</option>
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
			<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/changeBalance'))!}&tran_seq={tran_seq}&status={status}&return_balance={return_balance}" target="ajaxTodo" title="确定要调账{tran_seq}吗?"><span>失败调账</span></a></li>
		</ul>
	</div>
	<table class="table" width="98%" layoutH="109">
		<thead>
			<tr>
				<th width="6%" orderField="tran_seq">代付流水号</th>
				<th width="6%" orderField="order_seq">商户订单号</th>
				<th width="6%" orderField="agent_no">代理编号</th>
				<th width="6%" orderField="client_no">商户编号</th>
				<th width="6%" orderField="pay_money">交易金额</th>
				<th width="6%" orderField="pay_charge">代付手续费</th>
				<th width="6%" orderField="pay_type">提现类型</th>
				<th width="6%" orderField="status">支付状态</th>
				<th width="6%" orderField="return_balance">返还余额</th>
				<th width="6%" orderField="file_date">请求时间</th>
				<th width="6%" orderField="account_name">结算名</th>
				<th width="6%" orderField="account_card_no">结算帐号</th>
				<th width="6%" orderField="account_bank_name">结算卡开户行名</th>
				<th width="6%" orderField="account_bank_no">结算卡开户行号</th>
			
				
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.ID)!}">
				<td target="tran_seq" rel="${(list.TRAN_SEQ)!}">${(list.TRAN_SEQ)!}</td>
				<td target="status" rel="${(list.STATUS)!}">${(list.ORDER_SEQ)!}</td>
				
				<td target="return_balance" rel="${(list.RETURN_BALANCE)!}">${(list.AGENT_NO)!}</td>
				<td >${(list.CLIENT_NO)!}</td>
				<td >${(list.PAY_MONEY)!}</td>
				<td >${(list.PAY_CHARGE)!}</td>
				<td >
					<#if list.PAY_TYPE == 'D001'>充值
					<#elseif list.PAY_TYPE == 'D002'>提现
					<#elseif list.PAY_TYPE == 'D003'>手续费
					<#elseif list.PAY_TYPE == 'D004'>提现调账
					<#else></#if>
				</td>
				
				<td >
				<#if list.STATUS == 0>
				未支付
				<#elseif list.STATUS ==1>
				支付中
				<#elseif list.STATUS ==2>
				支付成功
				<#elseif list.STATUS ==3>
				支付失败
				</#if></td>
				
				<#if list.RETURN_BALANCE == 1><td style="color:red;">已返还</td><#else><td >未返还</td></#if>
				
				<td >${(list.FILE_DATE)!}</td>
				<td >${(list.ACCOUNT_NAME)!}</td>
				<td >${(list.ACCOUNT_CARD_NO)!}</td>
				<td >${(list.ACCOUNT_BANK_NAME)!}</td>
				<td >${(list.ACCOUNT_BANK_NO)!}</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

