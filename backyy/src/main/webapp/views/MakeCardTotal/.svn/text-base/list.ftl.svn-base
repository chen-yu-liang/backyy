<#include "/common/pageForm.ftl">
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
						<td>
							批次号:<input type="text" name="batch_no" value="${(p.params.batch_no)!''}" size=15/>
						</td>
						<td>
							交易时间：<input type="text" btw="date" selectvl_event="true" name="begintime" class="date" size="8" value="${(p.params.begintime)!''}" id = "startClassroomTime" maxDate = "#F{$dp.$D(\'endClassroomTime\',{M:-0});}" dateFmt="yyyy-MM-dd" readonly="true"/>
							--<input type="text" btw="date" selectvl_event="true" name="endtime" class="date" size="8" value="${(p.params.endtime)!''}" id = "endClassroomTime" minDate = "#F{$dp.$D(\'startClassroomTime\',{M:0});}" dateFmt="yyyy-MM-dd" readonly="true"/>&nbsp;&nbsp;&nbsp;
						</td>
						<td>
							号段:<input type="text" name="client_no_start_num" value="${(p.params.client_no_start_num)!''}" size=15/>
							——<input type="text" name="client_no_end_num" value="${(p.params.client_no_end_num)!''}" size=15/>
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
			<li><a class="add permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/makeCard'))!}" target="dialog" rel="BaseinfoClass_makeCard" width="450"><span>制卡</span></a></li>
			<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/make2QRcode'))!}&batch_no={id}&startNum={startNum}&endNum={endNum}&ismake={ismake}" target="ajaxTodo" ><span>批量生成二维码</span></a></li>
			<li><a class="add permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/downFile'))!}&batch_no={id}" target="dwzExport" targetType="navTab" rel="BaseinfoClass_downFile"><span>下载二维码文件</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/MakeCard/list'))!}&client_no_start_num={startNum}&client_no_end_num={endNum}&begintime=" target="dialog" rel="BaseinfoClass_makeCard" width="1050" height="460"><span>查看明细</span></a></li>
			<span style="float:right;margin-right:2%;">总金额：<strong>${(count.sco?number?string.currency)!''}</strong>总数量：<strong>${(count.cum?number)!''}</strong></span>
		</ul>
	</div>
	<table class="table" width="98%" layoutH="109">
		<thead>
			<tr>
				<th width="20%" orderField="batch_no">批次号</th>
				<th width="15%" orderField="client_no_start_num">起始号段</th>
				<th width="15%" orderField="client_no_end_num">结束号段</th>
				<th width="10%" orderField="cost">单批成本</th>
				<th width="10%" orderField="card_num">制卡数量</th>
				<th width="10%" orderField="cost_card">单卡成本</th>
				<th width="10%" orderField="add_time">制卡时间</th>
				<th width="10%" orderField="ismake">是否制卡</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.BATCH_NO)!}">
					<td target="startNum" rel="${(list.CLIENT_NO_START_NUM)!}">${(list.BATCH_NO)!}</td>
					<td target="endNum" rel="${(list.CLIENT_NO_END_NUM)!}">${(list.CLIENT_NO_START_NUM)!}</td>
					<td target="ismake" rel="${(list.ISMAKE)!}">${(list.CLIENT_NO_END_NUM)!}</td>
					<td >${(list.COST)!}</td>
					<td >${(list.CARD_NUM)!}</td>
					<td >${(list.COST_CARD)!}</td>
					<td >${(list.ADD_TIME)!}</td>
					<td ><#if list.ISMAKE == 0>未制卡<#else>已制卡</#if>[${(list.ISMAKE)!}]</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>