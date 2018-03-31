
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p>
					<label style="width:100px;">提现时间段</label>
					<input type="text" name="balance_cash_date" value="${(balancePay.balance_cash_date)!}" class="required"/>格式12:00~18:00
				</p>
				<p>
					<label style="width:100px;">提现手续费</label>
					<input type="text" name="balance_cash_cost" value="${(balancePay.balance_cash_cost)!}" class="required number"/>(元)
				</p>
				<p>
					<label style="width:100px;">日提现上限</label>
					<input type="text" name="date_ceiling" value="${(balancePay.date_ceiling)!}" class="required number"/>(元)
				</p>
				<p>
					<label style="width:100px;">日提现比例</label>
					<input type="text" name="date_proportion" value="${(balancePay.date_proportion)!}" class="required number"/>0.8=80%
				</p>
				<p>
					<label style="width:100px;">利润冻结天数</label>
					<input type="text" name="freeze_profits_date" value="${(balancePay.freeze_profits_date)!}" class="required digits"/>(天)
				</p>
				<p>
					<label style="width:100px;">单笔最大提现金额</label>
					<input type="text" name="one_max_money" value="${(balancePay.one_max_money)!}" class="required number"/>(元)
				</p>
				<p>
					<label style="width:100px;">押款时间</label>
					<input type="text" name="date_proportion_release" value="${(balancePay.date_proportion_release)!}" class="required"/>格式12:00
				</p>
				<input type="hidden" name="client_id" value="${(balancePay.client_id)!}">
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

