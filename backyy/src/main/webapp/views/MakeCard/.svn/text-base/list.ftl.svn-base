
<#include "/common/pageForm.ftl">
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
						<td>
							商户号段:
							<input type="text" name="client_no_start_num" value="${(p.params.client_no_start_num)!''}" size=15/>
							——<input type="text" name="client_no_end_num" value="${(p.params.client_no_end_num)!''}" size=15/>
						</td>
						<td>
							代理商编号:<input type="text" name="agent_no" value="${(p.params.agent_no)!''}" size=15/>
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
	<div class="panelBar">
	<!--
			<li><a class="add permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add'))!}" target="dialog" rel="BaseinfoClass_add" width="450"><span>添加</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add?id={id}'))!}" target="dialog"  width="450" rel="BaseinfoClass_add" title="修改-{class_cn}"><span>修改</span></a></li>
			<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/delete?id={id}'))!}" target="ajaxTodo" title="确定要删除【{class_cn}】吗?"><span>删除</span></a></li>
	-->
		<ul class="toolBar">
		</ul>
	</div>
	<table class="table" width="98%" layoutH="109">
		<thead>
			<tr>
				<th width="20%" orderField="client_no">商户号</th>
				<th width="20%" orderField="agent_no">代理商编号</th>
				<th width="25%" orderField="mark_card_time">分卡时间</th>
				<th width="25%" orderField="add_time">制卡时间</th>
				<th width="10%" orderField="add_time">是否分卡</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.ID)!}">
					<td >${(list.CLIENT_NO)!}</td>
					<td ><#if list.AGENT_NO ??>${(list.AGENT_NO)!}<#else>暂无</#if></td>
					<td ><#if list.MARK_CARD_TIME ??>${(list.MARK_CARD_TIME)!}<#else>暂无</#if></td>
					<td >${(list.ADD_TIME)!}</td>
					<td ><#if list.ISMARKE==1>已分卡<#else>未分卡</#if></td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

