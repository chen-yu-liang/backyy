
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${baseClass}/save" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p>
					<label style="width:60px;">null</label>
					<input type="text" name="carte_name" value="${(userallot.carte_name)!}"/>
				</p>
				<p>
					<label style="width:60px;">null</label>
					<input type="text" name="carte_id" value="${(userallot.carte_id)!}"/>
				</p>
				<p>
					<label style="width:60px;">null</label>
					<input type="text" name="admin_all_id" value="${(userallot.admin_all_id)!}"/>
				</p>
				<p>
					<label style="width:60px;">null</label>
					<input type="text" name="admin_id" value="${(userallot.admin_id)!}"/>
				</p>
				<p>
					<label style="width:60px;">null</label>
					<input type="text" name="belong_terrace" value="${(userallot.belong_terrace)!}"/>
				</p>
				<p>
					<label style="width:60px;">null</label>
					<input type="text" name="allot_sign" value="${(userallot.allot_sign)!}"/>
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

