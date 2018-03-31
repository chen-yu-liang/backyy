<#include "/common/pageForm.ftl">
<#assign status=getCache("b_status")>
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
						<td>
							费率名称:<input type="text" name="rate_name" value="${(p.params.rate_name)!''}" size=15/>
						</td>
						<td>
							费率代号:<input type="text" name="rate_no" value="${(p.params.rate_no)!''}" size=15/>
						</td>
						<td>
							费率算法:<input type="text" name="rate_args" value="${(p.params.rate_args)!''}" size=15/>
						</td>
						<td>
								状态:<select name="status" selectvl="${(p.params.status)!}">
								<option value = "">请选择</option>
								    <#list status?keys as key> 
								    	<option value="${key}">${status[key]["INFO"]}</option>
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
	<div class="panelBar">
		<ul class="toolBar">
			<li><a class="add permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add'))!}" target="dialog" rel="Rate_add" width="450"><span>添加费率</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('Rate/add'))!}&id={id}" target="dialog"  width="450" rel="Rate_add" title="修改-{class_cn}"><span>修改费率</span></a></li>
			<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('Rate/updownrate'))!}&id={id}&status={status}" target="ajaxTodo" title="确定操作费率吗？"><span>[启/停]费率</span></a></li>
			<li><a class="add permission" href="${(projectName)!}/?spm=${(urlEncrption('/RateList/list'))!}" target="dialog" rel="RateList_list" width="900" height="500"><span>添加默认费率</span></a></li>
		</ul>
	</div>
	<table class="table" width="98%" layoutH="109">
		<thead>
			<tr>
				<th width="10%" orderField="rate_name">费率名称</th>
				<th width="10%" orderField="rate_no">费率代号</th>
				<th width="10%" orderField="begin_amt">开始金额</th>
				<th width="10%" orderField="end_amt">结算金额</th>
				<th width="10%" orderField="rate_args">费率算法</th>
				<th width="10%" orderField="status">状态</th><!--0禁用，1启用-->
				<th width="10%" orderField="add_time">操作时间</th>
				<th width="10%" orderField="add_user">添加人</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${list.ID}">
					<td target="status" rel="${list.STATUS}">${(list.RATE_NAME)!}</td>
					<td >${(list.RATE_NO)!}</td>
					<td >${(list.BEGIN_AMT)!}</td>
					<td >${(list.END_AMT)!}</td>
					<td >${(list.RATE_ARGS)!}</td>
					<td>${(status[(list.STATUS)!?c]["INFO"])!}</td>
					<td >${(list.ADD_TIME)!}</td>
					<td >${(list.ADD_USER)!}</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

