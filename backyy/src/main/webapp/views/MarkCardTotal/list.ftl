
<#include "/common/pageForm.ftl">
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
						<td>
							批次号:<input type="text" name="mark_batch_no" value="${(p.params.mark_batch_no)!''}" size=15/>
						</td>
						<td>
							代理商编号:<input type="text" name="agent_no" value="${(p.params.agent_no)!''}" size=15/>
						</td>
						<td>
							交易时间：<input type="text" btw="date" selectvl_event="true" name="begintime" class="date" size="8" value="${(p.params.begintime)!''}" id = "startClassroomTime" maxDate = "#F{$dp.$D(\'endClassroomTime\',{M:-0});}" dateFmt="yyyy-MM-dd" readonly="true"/>
							--<input type="text" btw="date" selectvl_event="true" name="endtime" class="date" size="8" value="${(p.params.endtime)!''}" id = "endClassroomTime" minDate = "#F{$dp.$D(\'startClassroomTime\',{M:0});}" dateFmt="yyyy-MM-dd" readonly="true"/>&nbsp;&nbsp;&nbsp;
						</td>
						<td>
							号段:<input type="text" name="mark_client_no_start_num" value="${(p.params.mark_client_no_start_num)!''}" size=15/>
							——<input type="text" name="mark_client_no_end_num" value="${(p.mark_client_no_end_num)!''}" size=15/>
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
			<li><a class="add permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/markCard'))!}" target="dialog" rel="BaseinfoClass_markCard" width="450"><span>分卡</span></a></li>
			<span style="float:right;margin-right:2%;">总数量：<strong>${(count.mcn?number)!''}</strong></span>
		</ul>
	</div>
	<table class="table" width="98%" layoutH="109">
		<thead>
			<tr>
				<th width="20%" orderField="mark_batch_no">批次号</th>
				<th width="15%" orderField="agent_no">代理商</th>
				<th width="15%" orderField="mark_client_no_start_num">分卡起始号段</th>
				<th width="15%" orderField="mark_client_no_end_num">分卡结束号段</th>
				<th width="15%" orderField="mark_card_num">分卡数量</th>
				<th width="20%" orderField="mark_add_time">分卡时间</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.ID)!}">
					<td >${(list.MARK_BATCH_NO)!}</td>
					<td >${(list.AGENT_NO)!}</td>
					<td >${(list.MARK_CLIENT_NO_START_NUM)!}</td>
					<td >${(list.MARK_CLIENT_NO_END_NUM)!}</td>
					<td >${(list.MARK_CARD_NUM)!}</td>
					<td >${(list.MARK_ADD_TIME)!}</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

