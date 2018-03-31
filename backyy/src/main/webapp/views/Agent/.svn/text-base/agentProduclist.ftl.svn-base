
<#include "/common/pageForm.ftl">
<#assign product_type=getCache("b_product_type")>
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>    
						<td>
							机构号:<input type="text" name="agent_no" value="${(p.params.agent_no)!''}" size="15"/>
						</td>
						<td>
							通道:
							<select name="id" selectvl="${(p.params.id)!''}" >
								<option value="">请选择</option>
								<#list parent as key >
									<option value="${(key.id)!}">${(key.name)!}</option>
								</#list>
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
<!--
	<div class="panelBar">
		<ul class="toolBar">
		<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/dosummary'))!}" target="ajaxTodo" ><span>汇总统计</span></a></li>
		<span style="float:right;">总金额：<strong>${(count.ant?number?string.currency)!''}</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;总清算金额：<strong>${(count.cant?number?string.currency)!''}</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;代理商总成本：<strong>${(count.pro?number?string.currency)!''}</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;商户总手续费：&nbsp;<strong>${(count.npro?number?string.currency)!''}</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;总笔数：<strong>${(count.num)!''}</strong>笔&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;总分润：<strong>${(count.apro?number?string.currency)!''}</strong></span>
		</ul>
	</div>
-->
	<table class="table" width="98%" layoutH="85">
		<thead>
			<tr>
				<th width="8%" orderField="agent_no">机构号</th>
				<th width="8%" orderField="agent_name">机构名称</th>
				<th width="8%" orderField="channel_product_name">产品</th>
				<th width="8%" orderField="t_bid">通道编号</th>
				<th width="8%" orderField="name">通道名</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.ID)!}">
					<td >${(list.AGENT_NO)!}</td>
					<td >${(list.AGENT_NAME)!}</td>
					<td >${(list.CHANNEL_PRODUCT_NAME)!}</td>
					<td >${(list.T_BID)!}</td>
					<td >${(list.NAME)!}</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

