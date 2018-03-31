<#include "/common/pageForm.ftl">
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
					<td>
						机构编号:<input type="text" name="ins_id_cd" value="${(p.params.ins_id_cd)!''}" size=35/>
					</td>
					<td>
						通道编号:<input type="text" name="company_id" value="${(p.params.company_id)!''}" size=15/>
					</td>
					<td>启用状态：
						<select name="status" selectvl="${(p.params.status)!''}" >
							<option value="">请选择</option>
							<option value=0>禁用</option>
							<option value=1>启用</option>
						</select>
					</td>
					<td>
						代付优先级:<input type="text" name="pay_level" value="${(p.params.pay_level)!''}" size=15/>
					</td>
					<td>
						渠道编号:<input type="text" name="company_code" value="${(p.params.company_code)!''}" size=15/>
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
			<li><a class="add permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/addChannel'))!}" target="dialog" rel="BaseinfoClass_add" width="880" height="360"><span>添加通道</span></a></li>
			<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/updateStatus'))!}&ins_id_cd={ins_id_cd}&status={status}" target="ajaxTodo" title="确定要修改吗?"><span>启用/关闭通道</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add'))!}&id={id}" target="dialog"  width="520" height="420" rel="BaseinfoClass_add" title="修改-{class_cn}"><span>修改通道</span></a></li>
		</ul>
	</div>
	<table class="table" width="98%" layoutH="110">
		<thead>
			<tr>
				<th width="6%" orderField="ins_id_cd">机构编号</th>
				<th width="6%" orderField="code_name">编号名称</th>
				<th width="6%" orderField="company_id">通道编号</th>
				<th width="6%" orderField="status">启用状态</th>
				<th width="6%" orderField="pay_level">代付优先级</th>
				
				<th width="6%" orderField="term_id">终端编号</th>
				<th width="6%" orderField="company_code">渠道编码</th>
				<th width="6%" orderField="pay_time">代付可用时间段</th>
				<th width="6%" orderField="balance">余额</th>
				<th width="6%" orderField="login_name">账户登录用户名</th>
				<th width="6%" orderField="login_pass">账户登录密码</th>
				<th width="6%" orderField="login_url">账户登录地址</th>
				<th width="6%" orderField="mchnt_cd">商户代码</th>
				<th width="6%" orderField="update_date">信息更新时间</th>
				
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${list.ID}">
					<td target="ins_id_cd" rel="${(list.INS_ID_CD)!}">${(list.INS_ID_CD)!}</td>
					<td target="status" rel="${(list.STATUS)!}">${(list.CODE_NAME)!}</td>
					<td >${(list.COMPANY_ID)!}</td>
					<td ><#if list.STATUS == 1>启用<#else>禁用</#if></td>
					<td >${(list.PAY_LEVEL)!}</td>
					<td >${(list.TERM_ID)!}</td>
					<td >${(list.COMPANY_CODE)!}</td>
					<td >${(list.PAY_TIME)!}</td>
					<td >${(list.BALANCE)!}</td>
					<td >${(list.LOGIN_NAME)!}</td>
					<td >${(list.LOGIN_PASS)!}</td>
					<td >${(list.LOGIN_URL)!}</td>
					<td >${(list.MCHNT_CD)!}</td>
					<td >${(list.UPDATE_DATE)!}</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

