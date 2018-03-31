
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/updateChannel'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p>
					<label style="width:60px;">商户号</label>
					<input type="text" name="client_no" value="${(client_no)!}" readonly/>
				</p>
				<p>
					<label style="width:60px;">通道编号</label>
					<select name="bid" selectvl="" >
						<option value="">请选择</option>
							<#list blist as key >
								<option value="${(key.info_en)!}">${(key.info)!}</option>
							</#list>
					</select>
				</p>
			</fieldset>
		</div>
		<div class="formBar">
			<ul>
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">确定</button></div></div></li>
				<li><div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div></li>
			</ul>
		</div>
	</form>
</div>

