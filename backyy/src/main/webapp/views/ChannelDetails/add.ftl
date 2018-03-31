
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p>
					<label style="width:90px;">通道编号</label>
					<input type="text" name="c_id" readonly value="${(channelDetails.c_id)!}"/>
				</p>
				<p>
					<label style="width:90px;">通道父级编号</label>
					<input type="text" name="c_pid" readonly value="${(channelDetails.c_pid)!}"/>
				</p>
				<p>
					<label style="width:90px;">渠道商户号</label>
					<input type="text" name="mch_id" value="${(channelDetails.mch_id)!}"/>
				</p>
				<p>
					<label style="width:90px;">状态 </label>
					<input type="radio" name="status" value=0 <#if channelDetails.status??&&channelDetails.status==0>checked</#if>/>启用
					<input type="radio" name="status" value=1 <#if channelDetails.status??&&channelDetails.status==1>checked</#if>/>禁用
				</p>
				<p>
					<label style="width:90px;">单日最大限额</label>
					<input type="text" name="dayCountMoney" value="${(channelDetails.dayCountMoney)!}"/>
				</p>
				<p>
					<label style="width:90px;">清算类型  T0 T1</label>
					<input type="radio" name="settletype" value="T0" <#if channelDetails.settletype??&&channelDetails.settletype=="T0">checked</#if>/>T0
					<input type="radio" name="settletype" value="T1" <#if channelDetails.settletype??&&channelDetails.settletype=="T1">checked</#if>/>T1
				</p>
				<p>
					<label style="width:90px;">优先级</label>
					<input type="text" name="c_level" value="${(channelDetails.c_level)!}"/>
				</p>
				<p>
					<label style="width:90px;">商编名称</label>
					<input type="text" name="c_name" value="${(channelDetails.c_name)!}"/>
				</p>
				<input type="hidden" name="id" value="${(baseinfoClass.id)!}">
			</fieldset>
		</div>
		<div class="formBar">
			<ul>
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">提交修改</button></div></div></li>
				<li><div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div></li>
			</ul>
		</div>
	</form>
</div>

