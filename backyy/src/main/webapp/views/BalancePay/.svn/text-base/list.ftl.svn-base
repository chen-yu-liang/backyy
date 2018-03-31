<style>
#a_xqing{
    height: 21px;
    line-height: 21px;
    padding: 0 11px;
    background: #e4e4e4;
    border: 1px #26bbdb solid;
    border-radius: 3px;
    display: inline-block;
    text-decoration: none;
    font-size: 12px;
    outline: none;
        }
</style>
<#include "/common/pageForm.ftl">
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
					<td>
						代理编号:<input type="text" name="client_id" value="${(p.params.client_id)!''}" size=15/>
					</td>
					<td>
						代理名称:<input type="text" name="agent_name" value="${(p.params.agent_name)!''}" size=15/>
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
			<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/freeze'))!}&client_id={client_id}&status={status}" target="ajaxTodo" title="确定要冻结/启用{client_id}吗?"><span>冻结余额</span></a></li>
			<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/freezeProfits'))!}&client_id={client_id}&profits_status={profits_status}" target="ajaxTodo" title="确定要冻结/启用{client_id}吗?"><span>冻结利润</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add'))!}&client_id={client_id}" target="dialog"  width="450"  height="350" rel="add" title="修改-{client_id}"><span>修改账户信息</span></a></li>
			<li><a class="add permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/switchAuto'))!}&client_id={client_id}&auto_return={auto_return}" target="ajaxTodo" title="确定要修改{client_id}吗?"><span>修改自动回款状态</span></a></li>
		</ul>
	</div>
	<table class="table" width="110%" layoutH="109">
		<thead>
			<tr>
				<th width="8%" orderField="client_id">代理编号</th>
				<th width="10%" orderField="agent_name">代理名称</th>
				<th width="3%" orderField="auto_return">失败回款</th>
				<th width="3%" orderField="status">账户状态</th>
				<th width="4%" orderField="balance">账户余额(元)</th>
				<th width="4%" orderField="zai_amount">在途账户金额(元)</th>
				
				<th width="3%" orderField="profits_balance">利润余额(元)</th>
				<th width="3%" orderField="freeze_profits_balance">在途利润金额(元)</th>
				<th width="3%" orderField="profits_status">利润状态</th>
				<th width="3%" orderField="freeze_profits_date">在途时间(天)</th>

				<th width="3%" orderField="date_proportion">提现比例(%)</th>
				<th width="3%" orderField="date_proportion_release">押款时间</th>
				
				<th width="6%" orderField="balance_cash_date">余额可提现时间</th>
				<th width="3%" orderField="balance_cash_cost">提现手续费</th>
				<th width="4%" orderField="one_max_money">单笔最大提现金额(元)</th>
				
				<th width="3%" orderField="account_type">账户类型</th>
				<th width="6%" orderField="date_ceiling">提现上限(元)</th>
				<th width="6%" orderField="action_date">最后操作时间</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="client_id" rel="${(list.CLIENT_ID)!}">
					<td target="status" rel="${(list.STATUS)!}">
					<a id = "a_xqing" href="${(projectName)!}/?spm=${(urlEncrption('/BalancePayAll/list'))!}&client_no=${(list.CLIENT_ID)!}" target="navTab"><span>查看详情</span></a>
					${(list.CLIENT_ID)!}
					</td>
					<td target="profits_status" rel="${(list.PROFITS_STATUS)!}">${(list.AGENT_NAME)!}</td>
					<td target="auto_return" rel="${(list.AUTO_RETURN)!}"><#if list.AUTO_RETURN==1>启用<#elseif list.AUTO_RETURN == 0>关闭</#if>[${(list.AUTO_RETURN)!}]</td>
					
					<td ><#if list.STATUS=='1'>启用<#elseif list.STATUS=='2'>冻结<#else>其他</#if></td>
					<td >${(list.BALANCE)!}</td>
					<td >${(list.ZAI_AMOUNT)!}</td>
					
					<td >${(list.PROFITS_BALANCE)!}</td>
					<td >${(list.FREEZE_PROFITS_BALANCE)!}</td>
					<td ><#if list.PROFITS_STATUS == 1>启用<#else>冻结</#if></td>
					<td >${(list.FREEZE_PROFITS_DATE)!}</td>
					
					<td >${(list.DATE_PROPORTION)!}</td>
					<td >${(list.DATE_PROPORTION_RELEASE)!}</td>
					
					<td >${(list.BALANCE_CASH_DATE)!}</td>
					<td >${(list.BALANCE_CASH_COST)!}</td>
					<td >${(list.ONE_MAX_MONEY)!}</td>
					<td ><#if list.ACCOUNT_TYPE=='1'>对私<#else>对公</#if>	</td>
					<td >${(list.DATE_CEILING)!}</td>
					<td >${(list.ACTION_DATE)!}</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>