
<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/save'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p>
					<label style="width:150px;">渠道类型</label>
					<select name="channeltype" id="channeltype" selectvl="${(riskChannel.channeltype)!''}">
							<option value="0">-全部-</option>
						<#list channeltypeList as key>
							<option value="${(key.id)!}">${(key.name)!''}</option>
						</#list>
					</select>	
				</p>
				<p>
					<label style="width:150px;">单笔上限</label>
					<input type="text" name="singlecapamount" class="required" value="${(riskChannel.singlecapamount)!}"/>
				</p>
				<p>
					<label style="width:150px;">单笔下限</label>
					<input type="text" name="singlepenlimitamount" class="required" value="${(riskChannel.singlepenlimitamount)!}"/>
				</p>
				<p>
					<label style="width:150px;">风控开始日期</label>
					<input type="text" btw="date" selectvl_event="true"  name="startdate" class="date" size="20" value="${(riskChannel.startdate)!''}" id = "startClassroomTime" maxDate = "#F{$dp.$D(\'endClassroomTime\',{M:-0});}" dateFmt="yyyy-MM-dd" readonly="true"/>
				</p>
				<p>
					<label style="width:150px;">风控结束日期</label>
					<input type="text" btw="date" selectvl_event="true"  name="enddate" class="date" size="20" value="${(riskChannel.enddate)!''}" id = "endClassroomTime" minDate = "#F{$dp.$D(\'startClassroomTime\',{M:0});}" dateFmt="yyyy-MM-dd" readonly="true"/>
				</p>
				<p>
					<label style="width:150px;">风控开始时间</label>
					<input type="text" btw="date" selectvl_event="true"  name="starttime" class="date" size="20" value="${(riskChannel.starttime)!''}" id = "startClassroomTime" maxDate = "#F{$dp.$D(\'endClassroomTime\',{M:-0});}" dateFmt="HH:mm:ss" readonly="true"/>
				</p>
				<p>
					<label style="width:150px;">风控结束时间</label>
					<input type="text" btw="date" selectvl_event="true"  name="endtime" class="date" size="20" value="${(riskChannel.endtime)!''}" id = "startClassroomTime" maxDate = "#F{$dp.$D(\'endClassroomTime\',{M:-0});}" dateFmt="HH:mm:ss" readonly="true"/>
				</p>
				<p>
					<label style="width:150px;">单日限额</label>
					<input type="text" name="daylimitamount" class="required" value="${(riskChannel.daylimitamount)!}"/>
				</p>
				<input type="hidden" name="id" value="${(riskChannel.id)!}">
			</fieldset>
		</div>
		<div class="formBar">
			<ul>
				<#if riskChannel??>
				<#else>
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">保存</button></div></div></li>
				</#if>
				<li><div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div></li>
			</ul>
		</div>
	</form>
</div>

