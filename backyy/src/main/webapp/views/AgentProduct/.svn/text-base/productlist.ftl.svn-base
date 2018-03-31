
<#include "/common/pageForm.ftl">
<#assign product_type=getCache("b_product_type")>
<#assign clear_type=getCache("b_clear_type")>
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
						<td>
							代理商号:<input type="text" name="agent_no" value="${(p.params.agent_no)!''}" size=15/>
						</td>
						<td>
							产品:
							<select name="product_no" id="product_no" selectvl="${(p.params.product_no)!''}">
								<option value="">--全部--</option>
								<#list basepro as key>
									<option value="${(key.pro_no)!''}">${(key.pro_name)!''}</option>
								</#list>
							</select>
						</td>
						<td>
							结算方式:
							<select name="clear_type" id="clear_type" selectvl="${(p.params.clear_type)!''}">
								<option value="">--全部--</option>
								<#list clear_type?keys as key>
									 <option value="${(key)!}">${clear_type[(key)!]["INFO"]}</option>
								</#list>
							</select>
						</td>
						<td>
							状态:
							<select name="status" id="status" selectvl="${(p.params.status)!''}">
								<option value="">--全部--</option>
								<option value="0">--开通--</option>
								<option value="1">--未开通--</option>
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
			<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/updateStatus'))!}&id={id}&product_no={pn}&sta={st}&clear_type={cn}" target="ajaxTodo" title="确定要执行吗?"><span>开启/关闭</span></a></li>
		</ul>
	</div>
	<table class="table" width="98%" layoutH="109">
		<thead>
			<tr>
				<th width="10%" orderField="agent_no">代理商编号</th>
				<th width="10%" orderField="product_no">产品</th>
				<th width="10%" orderField="rate">结算费率</th>
				<th width="10%" orderField="clear_type">结算方式</th>
				<th width="10%" orderField="adddate">日期</th>
				<th width="10%" orderField="status">状态 </th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.AGENT_NO)!}">
					<td target="pn" rel="${(list.PRODUCT_NO)!}">${(list.AGENT_NO)!}</td>
					<td target="st" rel="${(list.STATUS)!}">${(list.PRO_NAME)!}</td>
					<td target="cn" rel="${(list.CLEAR_TYPE)!}">${(list.RATE)!}</td>
					<td >${clear_type[(list.CLEAR_TYPE)!?c]["INFO"]}</td>
					<td >${(list.ADDDATE)!}</td>
					<td ><#if list.STATUS == 0>开通<#else>未开通</#if>[${(list.STATUS)!}]</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

