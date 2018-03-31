<#include "/common/pageForm.ftl">
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
					<td>
					修改类型：
						<select name="update_type" selectvl="${(p.params.update_type)!''}" >
							<option value="">请选择</option>
							<option value="trade">交易</option>
							<option value="pay">代付</option>
						</select>
					</td>
					<td>
					审核状态：
						<select name="audit_status" selectvl="${(p.params.audit_status)!''}" >
							<option value="">请选择</option>
							<option value=0>未审核</option>
							<option value=1>通过</option>
							<option value=2>拒绝</option>
						</select>
					</td>
					<td>
						提交人:<input type="text" name="submit_people" value="${(p.params.submit_people)!''}" size=15/>
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
			<li><a class="add permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add'))!}" target="dialog" rel="BaseinfoClass_add" width="450"><span>申请修改</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/addAudit'))!}&id={id}&audit_status={audit_status}" target="dialog"  width="450" height="500" rel="UpdateStatusOrder_list" title="确认审核[{id}]！！" ><span>审核</span></a></li>
 			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/execution'))!}&id={id}&audit_status={audit_status}&perform_status={perform_status}" target="ajaxTodo" rel="BaseinfoClass_add" title="确认执行[{id}]！！"><span>执行</span></a></li>
		</ul>
	</div>
	<table class="table" width="98%" layoutH="109">
		<thead>
			<tr >
				<th width="2%" orderField="Id">序号</th>
				
				<th width="4%" orderField="update_type">修改类型</th>
				<th width="8%" orderField="tran_seq">相关流水号</th>
				<th width="4%" orderField="old_status">旧状态</th>
				<th width="4%" orderField="new_status">新状态</th>
				<th width="4%" orderField="submit_people">提交人</th>
				<th width="10%" orderField="submit_info">提交说明</th>
				
				<th width="10%" orderField="submit_date">提交时间</th>
				
				<th width="4%" orderField="audit_people">审核人</th>
				<th width="6%" orderField="audit_info">审核说明</th>
				<th width="4%" orderField="audit_status">审核状态</th>
				<th width="10%" orderField="audit_date">审核时间</th>
				<th width="4%" orderField="perform_status">执行状态</th>
				<th width="15%" orderField="perform_info">执行结果说明</th>
				
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.ID)!}">
					<td target="audit_status" rel="${(list.AUDIT_STATUS)!}">${(list.ID)!}</td>
					<td target="perform_status" rel="${(list.PERFORM_STATUS)!}"><#if list.UPDATE_TYPE =='trade'>交易<#else>代付</#if></td>
					<td >${(list.TRAN_SEQ)!}</td>
					<td >${(list.OLD_STATUS)!}</td>
					<td >${(list.NEW_STATUS)!}</td>
					<td >${(list.SUBMIT_PEOPLE)!}</td>
					<td >${(list.SUBMIT_INFO)!}</td>
					
					<td >${(list.SUBMIT_DATE)!}</td>
					
					<td >${(list.AUDIT_PEOPLE)!}</td>
					<td >${(list.AUDIT_INFO)!}</td>
					<td ><#if list.AUDIT_STATUS == 0>未审核<#elseif list.AUDIT_STATUS ==1 >通过<#else>拒绝</#if></td>
					<td >${(list.AUDIT_DATE)!}</td>
					<td ><#if list.PERFORM_STATUS == 0>未执行<#elseif list.PERFORM_STATUS ==1 >执行成功<#else>执行失败</#if></td>
					<td >${(list.PERFORM_INFO)!}</td>
					
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

