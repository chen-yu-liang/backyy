
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p>
					<label style="width:70px;">费率名称</label>
					<input type="text" name="rate_name" class="required" value="${(rate.rate_name)!}"/>
				</p>
				<p>
					<label style="width:70px;">费率代号</label>
					<input type="text" name="rate_no" class="required" value="${(rate.rate_no)!}"/>
				</p>
				<p>
					<label style="width:70px;">开始金额</label>
					<input type="text" name="begin_amt" class="required" value="${(rateinfo.begin_amt)!}"/>
				</p>
				<p>
					<label style="width:70px;">结算金额</label>
					<input type="text" name="end_amt" class="required" value="${(rateinfo.end_amt)!}"/>
				</p>
				<p>
					<label style="width:70px;">算法表达式</label>
					<input type="text" name="rate_args" class="required" value="${(rateinfo.rate_args)!}"/>
				</p>
			<!-- <p>
					<label style="width:60px;">状态0禁用，1启用</label>
					<input type="text" name="status" value="${(rate.status)!}"/>
				</p> -->
				<input type="hidden" name="rateinfo_id" value="${(rateinfo.id)!}">
				<input  type="hidden" name="id" value="${(rate.id)!}">
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

