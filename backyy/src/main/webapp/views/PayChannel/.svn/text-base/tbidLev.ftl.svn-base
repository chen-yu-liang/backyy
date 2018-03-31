
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/changeLev'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
			<#list list as list>
				<p>
					<label style="width:60px;">通道编号</label>
					<input type="text" name="company_id" value="${(list.company_id)!}"/>
				</p>
				<p>
					<label style="width:60px;">编号名称</label>
					<input style="width:160px;" type="text" name="code_name" value="${(list.code_name)!}"/>
				</p>
				<p>
					<label style="width:60px;">优先级别</label><!--，0为最高，数字越小优先级越高-->
						<select name="pay_level" selectvl="${(list.pay_level)!}" >
							<option value="1">当前级别:1级</option>
							<option value="2">当前级别:2级</option>
							<option value="3">当前级别:3级</option>
							<option value="0">当前级别:0级</option>
						</select>
				</p>
			</#list>
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

