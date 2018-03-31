<form id="pagerForm" action="${(projectName)!}/?spm=${(urlEncrption('Users/getAgentInfo'))!}" method="post">
<input type="hidden" name="pageNum" value="${(p.pageNo)!"1"}"/>
<input type="hidden" name="totalRecord" value="${(p.totalRecord)!"0"}"/>
<input type="hidden" name="numPerPage" value="${(p.pageSize)!"20"}"/>
<input type="hidden" name="orderField" value="${(p.orderField)!""}" /><!--【可选】查询排序-->
<input type="hidden" name="orderDirection" value="${(p.orderDirection)!""}" /><!--【可选】升序降序-->
<#if p??>
<#list p.params?keys as testKey> 
	<input type="hidden" name="${testKey}" value="${(p.params)[testKey]!''}"/>
</#list>
</#if>
</form>
<div class="pageHeader">
	<form onsubmit="return dwzSearch(this,'dialog');" action="${(projectName)!}/?spm=${(urlEncrption('Users/getAgentInfo'))!}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
					<td style="width:auto">
						<label style="width:auto">代理商编号：</label>
						<input type="text" name="agent_no" value="${(p.params.agent_no)!''}" size=15/>
					</td>
					<td style="width:auto">
						<label style="width:auto">代理商名称：</label>
						<input type="text" name="agent_name" value="${(p.params.agent_name)!''}" size=15/>
					</td>
					<td style="width:auto">
						<label style="width:auto">联系人名称：</label>
						<input type="text" name="person" value="${(p.params.person)!''}" size=15/>
					</td>
				</tr>
				<tr>
					<td style="width:auto">
						<label style="width:auto">联系人电话：</label>
						<input type="text" name="mobile" value="${(p.params.mobile)!''}" size=15/>
					</td>
					<td style="width:auto">
						<label style="width:auto">所属代理商：</label>
						<input type="text" name="belong_agent" value="${(p.params.belong_agent)!''}" size=15/>
					</td>
					<input type="hidden" name="sign" value="${(p.params.sign)!''}"/>
					<td>
						<div class="buttonActive" style="margin-left:30px"><div class="buttonContent"><button type="submit">查询</button></div></div>
					</td>
				</tr>
			</table>
		</div>
	</form>
</div>
<div class="pageContent">
	<table class="table" width="98%" layoutH="130">
		<thead>
			<tr>				
				<th width="10%" >代理商编号</th>
				<th width="10%" >代理商名称</th>
				<th width="15%" >联系人名称</th>
				<th width="10%" >联系人电话</th>
				<th width="10%" >代理商类型</th>
				<th width="10%" >所属代理商</th>	
				<th width="5%">请选择</th>	
			</tr>
		</thead>
		<tbody>
			<#assign agent_type=getCache("b_agent_type")>
			<#list p.results as rs>
				<tr>
					<td >${(rs.AGENT_NO)!}</td>
					<td >${(rs.AGENT_NAME)!}</td>
					<td >${(rs.PERSON)!}</td>
					<td >${(rs.MOBILE)!}</td>
					<td >${(rs.AGENT_LEVEL)!}</td>					
					<td >${(rs.BELONG_AGENT)!}</td>
					<td>
						<a class="btnSelect" href="javascript:$.bringBack({agentNum:'${(rs.AGENT_NO)!}', agentName:'${(rs.AGENT_NAME)!}', agentType:'${(rs.AGENT_LEVEL)!}'})" title="查找带回">选择</a>
					</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<div class="panelBar">
	<div class="pages">
		<span>显示</span>
		<select name="numPerPage" onChange="dialogPageBreak({numPerPage:this.value})" selectvl="${(p.pageSize)!"50"}">
			<option value="10">10</option>
			<option value="20">20</option>
			<option value="50">50</option>
			<option value="100">100</option>
			<option value="200">200</option>
		</select>
		<span>共${p.totalRecord}条     &nbsp;&nbsp;第${p.pageNo}/${p.totalPage}页</span>
	</div>
	<div class="pagination" targetType="dialog" totalCount="${p.totalRecord}" numPerPage="${p.pageSize}" pageNumShown="10" currentPage="${p.pageNo}"></div>
</div>
</div>

