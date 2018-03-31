
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p>
					<label style="width:60px;"></label>
					<input type="text" name="id" value="${(dealClientDate.id)!}"/>
				</p>
				<p>
					<label style="width:60px;">原交易金额</label>
					<input type="text" name="amount" value="${(dealClientDate.amount)!}"/>
				</p>
				<p>
					<label style="width:60px;">清算金额</label>
					<input type="text" name="clear_amount" value="${(dealClientDate.clear_amount)!}"/>
				</p>
				<p>
					<label style="width:60px;">纯利润</label>
					<input type="text" name="net_profit" value="${(dealClientDate.net_profit)!}"/>
				</p>
				<p>
					<label style="width:60px;">毛利</label>
					<input type="text" name="gross_profit" value="${(dealClientDate.gross_profit)!}"/>
				</p>
				<p>
					<label style="width:60px;">添加日期</label>
					<input type="text" name="add_date" value="${(dealClientDate.add_date)!}"/>
				</p>
				<p>
					<label style="width:60px;">商户编号</label>
					<input type="text" name="client_no" value="${(dealClientDate.client_no)!}"/>
				</p>
				<p>
					<label style="width:60px;">代理商编号</label>
					<input type="text" name="agent_no" value="${(dealClientDate.agent_no)!}"/>
				</p>
				<p>
					<label style="width:60px;">代理商分润</label>
					<input type="text" name="agent_profit" value="${(dealClientDate.agent_profit)!}"/>
				</p>
				<p>
					<label style="width:60px;">总笔数</label>
					<input type="text" name="count_num" value="${(dealClientDate.count_num)!}"/>
				</p>
				<p>
					<label style="width:60px;">交易日期</label>
					<input type="text" name="deal_date" value="${(dealClientDate.deal_date)!}"/>
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

