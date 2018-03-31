<script>
	$(function(){
		var userRole = "${(users.user_role)!}";
		changeBelongUser(userRole);
	});
	function changeBelongUser(vl){
		if(vl!="3" && vl!=""){
			setHref(vl);
			$("#belongUser",$(document)).show();
		}else{
			$("#belongUser",$(document)).hide();
		}
	}
	function setHref(userRole){
		var $orgGroup = $("#agentLook",$(document));
		if(userRole=="0"){
			$orgGroup.attr("href","${(projectName)!}/?spm=${(urlEncrption('Users/getAgentInfo'))!}&sign=0,1");
		}else if(userRole=="1"){
			$orgGroup.attr("href","${(projectName)!}/?spm=${(urlEncrption('Users/getAgentInfo'))!}&sign=2");
		}else if(userRole=="2"){
			$orgGroup.attr("href","${(projectName)!}/?spm=${(urlEncrption('Users/getAgentInfo'))!}&sign=3");
		}
	}
	$("#user_name").blur(function(){
  		var reg = new RegExp("^[0-9]*$");
  		var n = $("#user_name").val();
  		if(reg.test(n)){
  			alert("登录名不能全为数字");
  			$("#user_name").val("");
  		}
	});
</script>
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/Users/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50">
			<fieldset>
				<input type="hidden" name="id" value="${(users.id)!}"/>
				<p>
					<label style="width:60px;">登录名：</label>
					<input type="text" id="user_name" name="user_name" value="${(users.user_name)!}"  <#if (users.id)??> readonly=true<#else> class="required"  remote="${(projectName)!}/?spm=${(urlEncrption('Users/ajaxUser_name'))!}"</#if> />
				</p>
				<p>
					<label style="width:60px;">姓     名：</label>
					<input type="text" name="cn_name" value="${(users.cn_name)!}" class="required"/>
				</p>
				<div class="divider"></div>	
				<p>
					<label style="width:60px;">用户角色：</label>
					<select name="user_role" selectvl="${(users.user_role)!}"  class = "required">
					<option value = "">请选择</option>
				    <#assign user_role=getCache("b_user_role")>
				    <#list user_role?keys as key> 
				    	<option value="${key}">${user_role[key]["INFO"]}</option>
				 	</#list>
					</select>
				</p>
				<!--
				<div id = "belongUser">
					<div class="divider"></div>	
					<p>
						<label style="width:60px;">所属用户：</label>
						<input id="inputOrg1" name="org1.agentNum" value="${(agentInfo.agent_num)!}" type="hidden"/>
						<input name="org1.agentName" type="text" value = "${(agentInfo.agent_name)!}" readonly />
						<input name="org1.agentType" type="hidden" value = "${(agentInfo.agent_type)!}"/>
						<a class="btnLook" id = "agentLook" lookupGroup = "org1">查找带回</a>	
						<span class="info">(选择用户所属)</span>
					</p>
				</div>
				<div class="divider"></div>
				-->
				<p>
					<label style="width:60px;">状态：</label>
				    <select name="status" selectvl="${(users.status)!"1"}">
				    <option value="1">启用</option>
				    <option value="0">禁用</option>			    
					</select>
				</p>
			    <p>
					<label style="width:60px;">类型：</label>
				    <select name="isadmin" selectvl="${(users.isadmin)!"0"}">
				    <#assign b=getCache("b_isadmin")>
				    <#list b?keys as key> 
				    <option value="${key}">${b[key]["INFO"]}</option>
				 	</#list>
					</select>
				</p>	
				<div class="divider"></div>	
				<p style="width:98%">
					<label style="width:60px;">初始密码：</label>
					<input type="text" class="alphanumeric textInput" size="20" name="user_pass" ptip="密码为不可逆加密，无法找回，请牢记密码"><span class="info"><#if (users.id)??>填写视为修改密码<#else>不填写默认123456</#if></span>
				</p>
				<input type="hidden" name="id" value="${(baseinfoClass.id)!}">
			</fieldset>
		</div>
		<div class="formBar">
			<ul>
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">保存</button></div></div></li>
				<li><div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div></li>
			</ul>
		</div>
	</form>
</div>

