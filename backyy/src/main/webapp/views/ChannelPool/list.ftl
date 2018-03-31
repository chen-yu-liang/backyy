
<#include "/common/pageForm.ftl">
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
						<td>
							商编池编号:<input type="text" name="c_id" value="${(p.params.c_id)!''}" size=15/>
						</td>
						<td>
							商编池名称:<input type="text" name="c_name" value="${(p.params.c_name)!''}" size=15/>
						</td>
						<td>
							商编池等级:<input type="text" name="c_level" value="${(p.params.c_level)!''}" size=15/>
						</td>
						<td>
							商编池状态:
							<select name="c_status"   selectvl="${(p.params.c_status)!''}" >
								<option value="">--请选择--</option>
				    			<option value="0">启用</option>
				    			<option value="1">禁用</option>
							</select>
						</td>
						<td>
							申请时间：<input type="text" btw="date" selectvl_event="true" name="begintime" class="date" size="8" value="${(p.params.begintime)!''}" id = "startClassroomTime" maxDate = "#F{$dp.$D(\'startClassroomTime\',{M:-0});}" dateFmt="yyyy-MM-dd" readonly="true"/>
							--<input type="text" btw="date" selectvl_event="true" name="endtime" class="date" size="8" value="${(p.params.endtime)!''}" id = "endClassroomTime" minDate = "#F{$dp.$D(\'endClassroomTime\',{M:0});}" dateFmt="yyyy-MM-dd" readonly="true"/>&nbsp;&nbsp;&nbsp;
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
			<li><a class="add permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add'))!}" target="dialog" rel="BaseinfoClass_add" width="450" height = "280"><span>添加商编池</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add'))!}&id={id}" target="dialog"  width="450" rel="ChannelPool_add" title="修改-{class_cn}"><span>修改商编池</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/ChannelPoolDetails/list'))!}&c_pid={id}" target="dialog"  width="1000" height = "600" rel="ChannelPoolDetails_list" ><span>商编信息</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/ChannelPoolMapper/list'))!}&c_pid={id}" target="dialog"  width="1000" height = "600" rel="ChannelPoolMapper_list" ><span>渠道信息</span></a></li>
			<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/updateStatus'))!}&id={id}" target="ajaxTodo" title="确认设置为默认池子么?"><span>设置为默认池子</span></a></li>
		</ul>
	</div>
	<table class="table" width="98%" layoutH="109">
		<thead>
			<tr>
				<th width="10%" orderField="c_id">池子编号</th>
				<th width="10%" orderField="c_name">池子名称</th>
				<th width="10%" orderField="c_level">等级</th>
				<th width="10%" orderField="c_createman">创建人</th>
				<th width="10%" orderField="c_cratedate">创建时间</th>
				<th width="10%" orderField="c_updatedate">修改时间</th>
				<th width="10%" orderField="c_status">商编池状态</th>
				<th width="10%" orderField="c_default">是否默认商编池</th>
				<th width="10%" orderField="c_remark">备注</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.C_ID)!}">
					<td >${(list.C_ID)!}</td>
					<td >${(list.C_NAME)!}</td>
					<td >${(list.C_LEVEL)!}</td>
					<td >${(list.C_CREATEMAN)!}</td>
					<td >${(list.C_CRATEDATE)!}</td>
					<td >${(list.C_UPDATEDATE)!}</td>
					<td ><#if list.C_STATUS == 0>启用<#else>禁用</#if></td>
					<td ><#if list.C_DEFAULT == 0>普通池子<#else>默认池子</#if></td>
					<td >${(list.C_REMARK)!}</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

