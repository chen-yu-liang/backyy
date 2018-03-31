<form id="pagerForm" action="${(projectName)!}/?spm=${(urlEncrption('/ChannelPoolDetails/list'))!}" method="post">
<input type="hidden" name="pageNum" value="${(p.pageNo)!"1"}"/>
<input type="hidden" name="totalRecord" value="${(p.totalRecord)!"0"}"/>
<input type="hidden" name="numPerPage" value="${(p.pageSize)!"20"}"/>
<input type="hidden" name="orderField" value="${(p.orderField)!""}" /><!--【可选】查询排序-->
<input type="hidden" name="orderDirection" value="${(p.orderDirection)!""}" /><!--【可选】升序降序-->
<input type="hidden" name="carte_id" value="${(carte_id)! }"/>
<#if p??>
<#list p.params?keys as testKey> 
	<input type="hidden" name="${testKey}" value="${(p.params)[testKey]!''}"/>
</#list>
</#if>
</form>
<div class="pageHeader">
	<form onsubmit="return dialogSearch(this);" action="${(projectName)!}/?spm=${(urlEncrption('/ChannelPoolDetails/list'))!}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
						<td>
							C_BID:<input type="text" name="c_bid" value="${(p.params.c_bid)!''}" size=15/>
						</td>
						<input type="hidden" name="c_pid" value="${(c_pid)!''}" size=15/>
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
			<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/delete'))!}&id={id}" target="ajaxTodo" callback = "ourAjaxDone" title="确定要移除吗?"><span>移除商编</span></a></li>
		</ul>
	</div>
	<table class="table" width="98%" layoutH="109">
		<thead>
			<tr>
				<th width="10%" orderField="c_bid">商编ID</th>
				<th width="10%" orderField="c_level">商编优先级</th>
				<th width="10%" orderField="settleType">清算类型</th>
				<th width="10%" orderField="status">商编状态</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.C_BID)!}">
					<td >${(list.C_BID)!}</td>
					<td >${(list.C_LEVEL)!}</td>
					<td >${(list.SETTLETYPE)!}</td>
					<td ><#if list.STATUS == 0>禁用<#else>启用</#if></td>
				</tr>
			</#list>
		</tbody>
	</table>
	<div class="panelBar">
	<div class="pages">
		<span>显示</span>
		<select name="numPerPage" onChange="dialogPageBreak({numPerPage:this.value})" selectvl="${(p.pageSize)!}">
			<option value="50">50</option>
			<option value="100">100</option>
			<option value="200">200</option>
		</select>
		<span>共${(p.totalRecord)!'0'}条     &nbsp;&nbsp;第${(p.pageNo)!'0'}/${(p.totalPage)!'0'}页</span>
	</div>
	<div class="pagination" targetType="dialog" totalCount="${(p.totalRecord)!}" numPerPage="${(p.pageSize)!}" pageNumShown="10" currentPage="${(p.pageNo)!}"></div>
	</div>
</div>

