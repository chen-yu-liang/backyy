
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p style="width:460px;height:60px">
					<label style="width:100px;height:60px">交易类型</label>
					<#if riskTradetype??>
						<input type="radio" name="tradetype" id ="tradetype" class="required" checked="checked" value="${(riskObj.TradeType)!}" >${(riskObj.info)!}
					<#else>
						<input type="radio" name="tradetype" id ="tradetype" class="required" checked="checked" value="-1" >全部
					<#list basepro as list>
						<input type="radio" name="tradetype" id ="tradetype" class="required" onclick="change();" value="${(list.pro_no)!}" >${(list.pro_name)!}	
			       	</#list>
					</#if>
						<input type="hidden" name="tstype" id="tstype" value = "" >
				</p>
				</fieldset>
				<fieldset>
				<p>
					<label style="width:150px;">单笔上限</label>
					<input type="text" name="singlecapamount" class="required" value="${(riskTradetype.singlecapamount)!}"/>
				</p>
				<p>
					<label style="width:150px;">单笔下限</label>
					<input type="text" name="singlepenlimitamount" class="required" value="${(riskTradetype.singlepenlimitamount)!}"/>
				</p>
				<p>
					<label style="width:150px;">风控开始日期</label>
					<input type="text" btw="date" selectvl_event="true"  name="startdate" class="date" size="20" value="${(riskTradetype.startdate)!''}" id = "startClassroomTime" maxDate = "#F{$dp.$D(\'endClassroomTime\',{M:-0});}" dateFmt="yyyy-MM-dd" readonly="true"/>
				</p>
				<p>
					<label style="width:150px;">风控结束日期</label>
					<input type="text" btw="date" selectvl_event="true"  name="enddate" class="date" size="20" value="${(riskTradetype.enddate)!''}" id = "endClassroomTime" minDate = "#F{$dp.$D(\'startClassroomTime\',{M:0});}" dateFmt="yyyy-MM-dd" readonly="true"/>
				</p>
				<p>
					<label style="width:150px;">风控开始时间</label>
					<input type="text" btw="date" selectvl_event="true"  name="starttime" class="date" size="20" value="${(riskTradetype.starttime)!''}" id = "startClassroomTime" maxDate = "#F{$dp.$D(\'endClassroomTime\',{M:-0});}" dateFmt="HH:mm:ss" readonly="true"/>
				</p>
				<p>
					<label style="width:150px;">风控结束时间</label>
					<input type="text" btw="date" selectvl_event="true"  name="endtime" class="date" size="20" value="${(riskTradetype.endtime)!''}" id = "startClassroomTime" maxDate = "#F{$dp.$D(\'endClassroomTime\',{M:-0});}" dateFmt="HH:mm:ss" readonly="true"/>
				</p>
				<p>
					<label style="width:150px;">单日限额</label>
					<input type="text" name="daylimitamount" class="required" value="${(riskTradetype.daylimitamount)!}"/>
				</p>
			</fieldset>
		</div>
		<div class="formBar">
			<ul>
				<#if riskTradetype??>
				<#else>
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">保存</button></div></div></li>
				</#if>
				<li><div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div></li>
			</ul>
		</div>
	</form>
</div>

