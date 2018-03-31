
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p>
					<label style="width:60px;">测试商户号</label>
					<input type="text" name="test_client" readonly value="${(p.params.test_client)!}"/>
				</p>
				<p>
					<label style="width:60px;">测试员帐号</label>
					<select id="test_user" name="test_user"   selectvl="${(testClient.test_user)!''}"  class="required" >
						<option value="">请选择</option> 
						<#list tlist as list>
							<option value="${list.test_user}">${list.test_username}[${list.test_user}]</option>
						</#list>
	          		</select>
				</p>
				<input type="hidden" name="id" value="${(testClient.id)!}">
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

