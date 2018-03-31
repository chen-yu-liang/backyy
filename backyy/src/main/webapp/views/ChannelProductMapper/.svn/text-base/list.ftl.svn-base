
<#include "/common/pageForm.ftl">
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
						<td>
							商编编号:<input type="text" name="c_id" value="${(p.params.c_id)!''}" size=15/>
						</td>
						<td>
							产品编号:<input type="text" name="prono" value="${(p.params.prono)!''}" size=15/>
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
			<li><a class="add permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add'))!}" target="dialog" rel="BaseinfoClass_add" width="450" height="380"><span>添加</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add'))!}&id={id}" target="dialog"  width="450" height="380" rel="BaseinfoClass_add" title="修改-{class_cn}"><span>修改</span></a></li>
			<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/delete'))!}&id={id}" target="ajaxTodo" title="确定要删除【{class_cn}】吗?"><span>删除</span></a></li>
		</ul>
	</div>
	<table class="table" width="98%" layoutH="109">
		<thead>
			<tr>
				<th width="10%" orderField="c_id">商编编号</th>
				<th width="10%" orderField="c_name">商编名称</th>
				<th width="10%" orderField="name">通道名</th>
				<th width="10%" orderField="prono">系统产品编号</th>
				<th width="10%" orderField="pro_name">产品</th>
				<th width="8%" orderField="minMoney">单笔最低金额</th>
				<th width="8%" orderField="maxMoney">单笔最高金额</th>
				<th width="10%" orderField="rate">费率</th>
				<th width="5%" orderField="pattern">方式</th>
				<th width="5%" orderField="status">状态</th>
				<th width="5%" orderField="service">service关键字</th>
				<th width="10%" orderField="createtime">添加时间</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.ID)!}">
					<td >${(list.C_ID)!}</td>
					<td >${(list.C_NAME)!}</td>
					<td >${(list.NAME)!}</td>
					<td >${(list.PRONO)!}</td>
					<td >${(list.PRO_NAME)!}</td>
					<td >${(list.MINMONEY)!}</td>
					<td >${(list.MAXMONEY)!}</td>
					<td >${(list.RATE)!}</td>
					<td ><#if list.PATTERN ?? && list.PATTERN = 0>前台<#else>后台</#if></td>
					<td ><#if list.STATUS ?? && list.STATUS = 0>启用<#else>禁用</#if>[${(list.STATUS)!}]</td>
					<td >${(list.SERVICE)!}</td>
					<td >${(list.CREATETIME)!}</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

