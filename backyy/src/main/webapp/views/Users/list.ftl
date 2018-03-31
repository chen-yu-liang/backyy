<#include "/common/pageForm.ftl">
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
					<td style="width:auto">
						<label style="width:auto">登录名：</label>
						<input type="text" name="user_name" value="${(p.params.user_name)!''}" size=15/>
					</td>
					<td style="width:auto">
						<label style="width:auto">用户真实姓名：</label>
						<input type="text" name="cn_name" value="${(p.params.cn_name)!''}" size=15/>
					</td>
					<td>
						<div class="buttonActive" style="margin-left:30px"><div class="buttonContent"><button type="submit">查询</button></div></div>
					</td>
				</tr>
			</table>
		</div>
	</form>
</div>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
			<li><a class="add permission" href="${(projectName)!}/?spm=${(urlEncrption('${(action)!}/add'))!}" target="dialog" rel="users_add" height="425" width="450"><span>添加用户</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('${(action)!}/add'))!}&id={id}" target="dialog"  width="450"  height="425" rel="users_add" title="修改-{cn_name}（{user_name}）"><span>修改用户</span></a></li>
			<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('${(action)!}/delete'))!}&id={id}" target="ajaxTodo" title="确定要删除【{cn_name}（{user_name}）】吗?"><span>删除用户</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('${(action)!}/userpermission'))!}&id={id}&cn_name={cn_name}&user_role={user_role}" target = "navTab" title="权限设置" rel = "persetup"><span>权限设置</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('${(action)!}/uploadLogo'))!}&userName={user_name}" target="dialog"  width="380"  height="400" rel="users_add" title="请选择图片"><span>上传LOGO</span></a></li>
		</ul>
	</div>
	<table class="table" width="98%" layoutH="112">
		<thead>
			<tr>
				<th width="7%" >登录名</th>
				<th width="7%" >用户真实名称</th>
				<!--
				<th width="7%" >用户角色</th>
				-->
				<th width="7%" >所属用户</th>
				<th width="5%" >是否管理员</th>
				<th width="3%" >登录次数</th>
				<th width="3%" >修改密码</th>
				<th width="8%" >最后登录时间</th>
				<th width="8%" >最后登录IP</th>
				<th width="3%" >状态</th>
				<th width="5%" >添加人</th>
				<th width="6%" >添加时间</th>
				<th width="6%" >所属平台</th>
			</tr>
		</thead>
		<tbody>
		 	<#assign status=getCache("b_status")>
		 	<#assign user_role=getCache("b_user_role")>
		 	<#assign isadmin=getCache("b_isadmin")>
			<#list p.results as list>
				<tr target="id" rel="${(list.ID)!}">   
					<td target="user_name" rel="${(list.USER_NAME)!}">${(list.USER_NAME)!}</td>
					<td target="cn_name" rel="${(list.CN_NAME)!}">${(list.CN_NAME)!}</td>
					<td target="user_role" rel="${(list.USER_ROLE)!}">${(list.BELONG_USER)!}</td>                  
					<td>${(isadmin[(list.ISADMIN)!?c]["INFO"])!"暂无"}</td>
					<td>${(list.LOGIN_COUNT)!}次</td>
					<td>${(list.UPDATE_PASSWORD)!}次</td>
					<td>${(list.LAST_DATE)?default("暂无")}</td>
					<td>${(list.LAST_IP)?default("暂无")}</td>
					<td>${(status[(list.STATUS)!?c]["INFO"])!}</td>
					<td>${(list.ADDNAME)!}</td>
					<td>${(list.ADDTIME)!} </td>
					<td>${(user_role[(list.USER_ROLE)!?c]["INFO"])!} </td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

