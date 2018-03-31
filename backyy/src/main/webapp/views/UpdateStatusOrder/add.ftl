
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="35" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
			
				<p>
					<label style="width:80px;">类型 </label>
					<select name="update_type" selectvl="${(updateStatusOrder.update_type)!}"  class="required">
							<option value="">-请选择-</option>
							<option value="trade">交易</option>
							<option value="pay">代付</option>
					</select>
				</p>
				<p>
					<label style="width:80px;">相关流水号</label>
					<input style="width:200px; type="text" name="tran_seq" value="${(updateStatusOrder.tran_seq)!}" class="required"/>
				</p>
				<p>
					<label style="width:80px;">由:原状态</label>
					<select name="old_status" selectvl="${(updateStatusOrder.old_status)!}" class="required">
							<option value="">-请选择-</option>
							<option value="成功">成功</option>
							<option value="失败">失败</option>
							<option value="处理中">处理中</option>
					</select>
				</p>
				<p>
					<label style="width:80px;">改为:新状态</label>
					<select name="new_status" selectvl="${(updateStatusOrder.new_status)!}" class="required">
								<option value="">-请选择-</option>
								<option value="成功">成功</option>
								<option value="失败">失败</option>
								<option value="处理中">处理中</option>
					</select>
				</p>
				<p>
					<label style="width:80px;">提交说明</label>
					<textarea style="width:200px;height:75px;" name="submit_info" value="${(updateStatusOrder.submit_info)!}" class="required" cols="15" rows="4"></textarea>
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

