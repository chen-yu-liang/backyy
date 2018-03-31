
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			
			<fieldset>
			
				<legend>基本风控</legend>
				<p>
					<label style="width:150px;">单笔上限</label>
					<input type="text" name="singlecapamount" class="required" value="${(riskClient.singlecapamount)!}"/>
				</p>
				<p>
					<label style="width:150px;">单笔下限</label>
					<input type="text" name="singlepenlimitamount" class="required" value="${(riskClient.singlepenlimitamount)!}"/>
				</p>
				<p>
					<label style="width:150px;">风控开始日期</label>
					<input type="text" btw="date" selectvl_event="true"  name="startdate" class="date" size="20" value="${(riskClient.startdate)!''}" id = "startClassroomTime" maxDate = "#F{$dp.$D(\'endClassroomTime\',{M:-0});}" dateFmt="yyyy-MM-dd" readonly="true"/>
				</p>
				<p>
					<label style="width:150px;">风控结束日期</label>
					<input type="text" btw="date" selectvl_event="true"  name="enddate" class="date" size="20" value="${(riskClient.enddate)!''}" id = "endClassroomTime" minDate = "#F{$dp.$D(\'startClassroomTime\',{M:0});}" dateFmt="yyyy-MM-dd" readonly="true"/>
				</p>
				<p>
					<label style="width:150px;">风控开始时间</label>
					<input type="text" btw="date" selectvl_event="true"  name="starttime" class="date" size="20" value="${(riskClient.starttime)!''}" id = "startClassroomTime" maxDate = "#F{$dp.$D(\'endClassroomTime\',{M:-0});}" dateFmt="HH:mm:ss" readonly="true"/>
				</p>
				<p>
					<label style="width:150px;">风控结束时间</label>
					<input type="text" btw="date" selectvl_event="true"  name="endtime" class="date" size="20" value="${(riskClient.endtime)!''}" id = "startClassroomTime" maxDate = "#F{$dp.$D(\'endClassroomTime\',{M:-0});}" dateFmt="HH:mm:ss" readonly="true"/>
				</p>
				<p>
					<label style="width:150px;">单日限额</label>
					<input type="text" name="daylimitamount" class="required" value="${(riskClient.daylimitamount)!}"/>
				</p>
			</fieldset>
			<fieldset>
				<p style="width:850px;height:60px">
					<label style="width:100px;height:60px">交易类型</label>
					<#if riskClient??>
						<input type="radio" name="tradetype" id ="tradetype" checked="checked" value="${(riskObj.TradeType)!}" >${(riskObj.info)!}
					<#else>
						<input type="radio" name="tradetype" id ="tradetype" class="required" checked="checked" value="-1" >全部
					<#list basepro as list>
						<input type="radio" name="tradetype" id ="tradetype" onclick="change();" value="${(list.pro_no)!}" >${(list.pro_name)!}	
			       	</#list>
					</#if>
						<input type="hidden" name="tstype" id="tstype" value = "" >
				</p>
				<legend>类型风控</legend>
				</br>
				<p>
					<label style="width:150px;">商户号</label>
					<input type="text" name="client_no"  value="${(riskClient.client_no)!}"/>
				</p>
				<p>
					<label style="width:150px;">商户单日限额</label>
					<input type="text" name="client_daylimitamount"  value="${(riskClient.client_daylimitamount)!}"/>
				</p>
				<p>
					<label style="width:150px;">该交易类型单日限额</label>
					<input type="text" name="t_daylimitamount" value="${(riskClient.t_daylimitamount)!}"/>
				</p>
				<p>
					<label style="width:150px;">该交易类型单笔上限</label>
					<input type="text" name="t_singlecapamount" value="${(riskClient.t_singlecapamount)!}"/>
				</p>
				<p>
					<label style="width:150px;">该交易类型单笔下限</label>
					<input type="text" name="t_singlepenlimitamount" value="${(riskClient.t_singlepenlimitamount)!}"/>
				</p>
				<input type="hidden" name="id" value="${(riskClient.id)!}">
			</fieldset>
		</div>
		<div class="formBar">
			<ul>
				<#if riskClient??>
				<#else>
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">保存</button></div></div></li>
				</#if>
				<li><div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div></li>
			</ul>
		</div>
	</form>
</div>

