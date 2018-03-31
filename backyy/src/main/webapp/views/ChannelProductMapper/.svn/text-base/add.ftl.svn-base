
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p>
					<label style="width:90px;">商编编号</label>
					<input type="text" name="c_id" class="required" value="${(channelProductMapper.c_id)!}"/>
				</p>
				<p>
					<label style="width:90px;">系统产品编号</label>
					<select name="prono" id="prono"  class="required" selectvl="${(channelProductMapper.prono)!''}">
						<option value="">-请选择-</option>
						<#list basepro as key>
							<option value="${(key.pro_no)!''}">${(key.pro_name)!''}</option>
						</#list>
					</select>
				</p>
				<p>
					<label style="width:90px;">方式前、后台</label>
					<select name="pattern" class="required" selectvl="${(channelProductMapper.pattern)!''}">
						<option value="">-请选择-</option>
						<option value="0">前台</option>
						<option value="1">后台</option>
					</select>
				</p>
				<p>
					<label style="width:90px;">状态</label>
					<select name="status" class="required" selectvl="${(channelProductMapper.status)!''}">
						<option value="">-请选择-</option>
						<option value="0">启用</option>
						<option value="1">禁用</option>
					</select>
				</p>
				<p>
					<label style="width:90px;">费率</label>
					<input type="text" name="rate" class="required" value="${(channelProductMapper.rate)!}"/>
				</p>
				<p>
					<label style="width:90px;">关键字</label>
					<input type="text" name="service" value="${(channelProductMapper.service)!}"/>
				</p>
				<p>
					<label style="width:90px;">单笔最低金额</label>
					<input type="text" name="minMoney" class="required textinput number" maxlength="6"  value="${(channelProductMapper.minMoney)!'0'}"/>
				</p>
				<p>
					<label style="width:90px;">单笔最高金额</label>
					<input type="text" name="maxMoney" class="required textinput number"  maxlength="6"  value="${(channelProductMapper.maxMoney)!}"/>
				</p>
				<input type="hidden" name="id" value="${(channelProductMapper.id)!}">
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

