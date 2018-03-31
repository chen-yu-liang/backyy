<form id="pagerForm" action="${(projectName)!}/?spm=${(urlEncrption('/ChannelPoolMapper/list'))!}" method="post">
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
	<form onsubmit="return dialogSearch(this);" action="${(projectName)!}/?spm=${(urlEncrption('/ChannelPoolMapper/list'))!}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
						<td>
							对象编号:<input type="text" name="c_objectno" value="${(p.params.c_objectno)!''}" size=10/>
						</td>
						<td>
							对象类型:<select name = "c_type" selectvl = "${(p.params.c_type)!''}">
										<option value = "">--全部--</option>
										<option value = "1">商户编号</option>
										<option value = "2">渠道编号</option>
									</select>
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
			<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/delete'))!}&id={id}" target="ajaxTodo" title="确定要移除吗?" callback = "ourAjaxDone"><span>移除</span></a></li>
		</ul>
	</div>
	<table class="table" width="98%" layoutH="109">
		<thead>
			<tr>
				<th width="10%" orderField="c_objectno">对象编号</th>
				<th width="10%" orderField="c_type">对象类型</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.C_OBJECTNO)!}">
					<td >${(list.C_OBJECTNO)!}</td>
					<td ><#if list.C_TYPE = 1>商户编号<#else>渠道编号</#if></td>
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

