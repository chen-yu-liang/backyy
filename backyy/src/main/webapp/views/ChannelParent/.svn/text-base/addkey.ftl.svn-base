
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/saveKey'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p>
					<label style="width:60px;">私钥</label>
					<input type="text" name="db_private_key"  value="${(channelParent.db_private_key)!}"/>
				</p>
				<p>
					<label style="width:60px;">公钥</label>
					<input type="text" name="db_public_key" value="${(channelParent.db_public_key)!}"/>
				</p>
				<p>
					<label style="width:60px;">上游公钥</label>
					<input type="text" name="public_key" value="${(channelParent.public_key)!}"/>
				</p>
				<input type="hidden" name="id" value="${(channelParent.id)!}">
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

