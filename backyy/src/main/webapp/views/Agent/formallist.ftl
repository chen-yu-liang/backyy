
<#include "/common/pageForm.ftl">
<script type="text/javascript">
function getBid(){
		var ids = "";
		navTab.getCurrentPanel().find("input:checked").filter("[name='agentNo']").each(function(i){
			var val = $(this).val();
			ids += i==0 ? val : ","+val;
		});
		if(ids!=""){
			$.pdialog.open("${(projectName)!}/?spm=${(urlEncrption('/ChannelPool/getBussiness'))!}&sign=3&ids="+ids,"getBussiness", "请选择加入商编池",{mask:true,width:335,height:170});
			
		}else{
			alertMsg.info("请选择商编信息");
		}
	}	
</script>
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
						<td>
							代理商编号:<input type="text" name="agent_no" value="${(p.params.agent_no)!''}" size=15/>
						</td>
						<td>
							代理商名称:<input type="text" name="agent_name" value="${(p.params.agent_name)!''}" size=15/>
						</td>
						<td>
							代理商等级:<input type="text" name="agent_level" value="${(p.params.agent_level)!''}" size=15/>
						</td>
						<td>
							联系人:<input type="text" name="person" value="${(p.params.person)!''}" size=15/>
						</td>
						<td>
							渠道类型:
							<select name="agent_style" selectvl="${(p.params.agent_style)!''}">
								<option value="">--请选择--</option>
								<option value=0>代理商</option>
								<option value=1>机构</option>
							</select>
						</td>
						<td>
							申请时间：<input type="text" btw="date" selectvl_event="true" name="begintime" class="date" size="8" value="${(p.params.begintime)!''}" id = "startClassroomTime" maxDate = "#F{$dp.$D(\'startClassroomTime\',{M:-0});}" dateFmt="yyyy-MM-dd" readonly="true"/>
							--<input type="text" btw="date" selectvl_event="true" name="endtime" class="date" size="8" value="${(p.params.endtime)!''}" id = "endClassroomTime" minDate = "#F{$dp.$D(\'endClassroomTime\',{M:0});}" dateFmt="yyyy-MM-dd" readonly="true"/>&nbsp;&nbsp;&nbsp;
						</td>
						<td>
							<div class="buttonActive"><div class="buttonContent"><button type="submit">查询</button></div></div>
						</td>
				<tr>
			</table>
		</div>
	</form>
</div>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
			<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/update'))!}&id={id}&status=-1" target="ajaxTodo" rel="Agent_update" title="确定要停用【{cn}】吗?"><span>停用</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add'))!}&id={cm}" target="dialog"  width="900" height="500" rel="Agent_add" title="查看-{cn}"><span>详细资料</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('Agent/findpictrue'))!}&agent_no={cm}&agent_name={cn}&status=0" target="navTab" rel="Agent_findpictrue"><span>图片信息</span></a></li>
			<li><a class="add" href="${(projectName)!}/?spm=${(urlEncrption('Agent/loginagent'))!}&agent_no={cm}&&agent_name={cn}" target="dialog" rel="Agent_loginagent" height="425" width="450"><span>登录设置</span></a></li>
			<li><a class="add" href="${(projectName)!}/?spm=${(urlEncrption('Agent/quickmark'))!}&agent_no={cm}" target="navTab" rel="Agent_quickmark" height="300" width="300"><span>注册二维码</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/AgentProduct/list'))!}&agent_no={cm}" target="dialog"  width="900" height="500" rel="AgentProduct_list" title="开通-{cn}的产品"><span>产品费率</span></a></li>
			<li><a class="edit" onclick ="getBid();" ><span>加入商编池</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/paidPay'))!}&id={cm}"  target="dialog" width="500" height="300" rel="Agent_paidPay"><span>代付异步通知地址</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/ClientPort/list'))!}&client_no={cm}"  target="dialog" width="900" height="500" rel="ClientPort_list"><span>交易异步通知地址</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/changeAgentMessage'))!}&id={cm}" target="dialog"  width="500" height="300" rel="Agent_paymessage" title="查看-{cn}"><span>变更手机号</span></a></li>
			<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('/ClientBase/quickAddClient'))!}&id={cm}" target="ajaxTodo"   rel="ClientBase_quickAddClient"><span>一键添加商户</span></a></li>
		</ul>
	</div>
	<table class="table" width="98%" layoutH="109">
		<thead>
			<tr>
				<th width="2%"><input type="checkBox" group="agentNo" class="checkboxCtrl"  /></th>
				<th width="8%" orderField="agent_no">代理商编号</th>
				<th width="8%" orderField="agent_name">代理商名称</th>
				<th width="5%" orderField="agent_level">客户等级</th>
				<th width="5%" orderField="province">省份</th>
				<th width="5%" orderField="city">城市</th>
				<th width="4%" orderField="person">联系人</th>
				<th width="9%" orderField="card_no">身份证信息</th>
				<th width="8%" orderField="belong_agent">所属代理商</th>
				<th width="6%" orderField="add_user">添加人</th>
				<th width="8%" orderField="add_date">添加日期</th>
				<th width="5%" orderField="status">状态</th>
				<th width="5%" orderField="agent_style">渠道类型</th>
				<th width="6%" orderField="agent_uuid">机构秘钥</th>
				<th width="6%" orderField="mobile">手机</th>
				<th width="4%" orderField="pay_push_ip">代付推送IP</th>
				<th width="4%" orderField="pay_push_port">代付推送端口</th>
			</tr>
		</thead>
		<tbody>
			<#list p.results as list>
				<tr target="id" rel="${(list.AGENT_NO)!}">
					<td target="cm" rel="${(list.AGENT_NO)!}"><input type="checkBox" id="agentNo" name="agentNo" value="${(list.AGENT_NO)!}" /></td>
					<td target="cn" rel="${(list.AGENT_NAME)!}">${(list.AGENT_NO)!}</td>
					<td >${(list.AGENT_NAME)!}</td>
					<td >${(list.AGENT_LEVEL)!}</td>
					<td >${(list.PROVINCE)!}</td>
					<td >${(list.CITY)!}</td>
					<td >${(list.PERSON)!}</td>
					<td >${(list.CARD_NO)!}</td>
					<td >${(list.BELONG_AGENT)!}</td>
					<td >${(list.ADD_USER)!}</td>
					<td >${(list.ADD_DATE)!}</td>
					<td ><#if list.STATUS==2>正式 </#if>[${(list.STATUS)!}]</td>
					<td ><#if list.AGENT_STYLE==0>代理商<#else>机构</#if></td>
					<td >${(list.AGENT_UUID)!}</td>
					<td >${(list.MOBILE)!}</td>
					<td >${(list.PAY_PUSH_IP)!'暂无'}</td>
					<td >${(list.PAY_PUSH_PORT)!'暂无'}</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

