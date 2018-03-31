
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p>
					<label style="width:60px;"></label>
					<input type="text" name="id" value="${(payBill.id)!}"/>
				</p>
				<p>
					<label style="width:60px;">备注</label>
					<input type="text" name="remark" value="${(payBill.remark)!}"/>
				</p>
				<p>
					<label style="width:60px;">日期</label>
					<input type="text" name="clear_date" value="${(payBill.clear_date)!}"/>
				</p>
				<p>
					<label style="width:60px;">代付总笔数</label>
					<input type="text" name="total_sum" value="${(payBill.total_sum)!}"/>
				</p>
				<p>
					<label style="width:60px;">对账文件编号</label>
					<input type="text" name="bill_no" value="${(payBill.bill_no)!}"/>
				</p>
				<p>
					<label style="width:60px;">代付总金额</label>
					<input type="text" name="total_money" value="${(payBill.total_money)!}"/>
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

