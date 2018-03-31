<#include "/common/pageForm.ftl">
<#assign platform=getCache("b_platform")>
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
					<td>
						行为内容:<input type="text" name="info" value="${(p.params.info)!''}" size=30/>
					</td>
					<td>
						操作平台:<select name="platform" selectvl="${(p.params.platform)!}">
								<option value = "">请选择</option>
								    <#list platform?keys as key> 
								    	<option value="${key}">${platform[key]["INFO"]}</option>
								 	</#list>
								</select>
					</td>
					<td>
						行为类型:<input name="operate_type" value = "${(p.params.operate_type)!}" size = "10" />
					</td>
					<td>
						操作人:<input name="operate_name" value = "${(p.params.operate_name)!}" size = "10" />
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
	<table class="table" width="98%" layoutH="85">
		<thead>
			<tr>
				<th width="5%">序列</th>
				<th width="8%">行为名称</th>
				<th width="30%">行为内容</th>
				<th width="5%">行为类型</th>
				<th width="8%">添加平台</th>
				<th width="8%">操作人</th>
				<th width="10%">操作IP</th>
				<th width="15%">添加时间</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr>
					<td >${(list.ID)!}</td>
					<td >${(list.NAME)!}</td>
					<td ptip = "${(list.INFO)!}">${(list.INFO)!}</td>
					<td >${(list.OPERATE_TYPE)!"未配置参数"}</td>
					<td >${(platform[(list.PLATFORM)?c]["INFO"])!}</td>
					<td >${(list.OPERATE_NAME)!}</td>
					<td >${(list.IP)!}</td>
					<td >${(list.ADD_TIME)!}</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

