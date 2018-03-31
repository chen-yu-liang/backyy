<script type="text/javascript">
 function findExportExcel(){
		var idArr = $("#Agent_seq input[name='tran_seq']:checked");
		if(idArr.size()>0){
			var tran_seq = "";
			for(var i=0;i<idArr.size();i++){
				var id = $(idArr).eq(i).val();
				tran_seq += tran_seq=="" ?id:","+id;
			}
			window.location = "${(projectName)!}/?spm=${(urlEncrption('${action}/exportAgentTranSeq'))!}&tran_seq="+tran_seq;
		}else{
			alert("请选择需导出的数据");
			return false;
		}
	}
</script>

<#include "/common/pageForm.ftl">
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
					<td>
						代付流水号:<input type="text" name="tran_seq" value="${(p.params.tran_seq)!''}" size=15/>
					</td>
					<td>
						代理编号:<input type="text" name="agent_no" value="${(p.params.agent_no)!''}" size=15/>
					</td>
					<td>
					出款状态：
						<select name="status_code" selectvl="${(p.params.status_code)!''}" >
							<option value="">请选择</option>
							<option value=00>未出款</option>
							<option value=01>处理中</option>
							<option value=02>出款成功</option>
							<option value=03>出款失败</option>
						</select>
					</td>
					<td>
					通道：
					<select name="bid" selectvl="${(p.params.bid)!''}" >
						<option value="">请选择</option>
						<#list channelList as key>
							<option value="${(key.company_id)}">[${(key.company_id)}]${(key.code_name)}</option>
						</#list>
					</select>
					</td>
					<td>
						代付时间：<input type="text" btw="date" selectvl_event="true" name="begintime" class="date" size="8" value="${(p.params.begintime)!''}" id = "startClassroomTime" maxDate = "#F{$dp.$D(\'endClassroomTime\',{M:-0});}" dateFmt="yyyy-MM-dd" readonly="true"/>
						--<input type="text" btw="date" selectvl_event="true" name="endtime" class="date" size="8" value="${(p.params.endtime)!''}" id = "endClassroomTime" minDate = "#F{$dp.$D(\'startClassroomTime\',{M:0});}" dateFmt="yyyy-MM-dd" readonly="true"/>&nbsp;&nbsp;&nbsp;
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
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('${action}/exportAgentTranSeq'))!}
			&begintime=${(p.params.begintime)!''}&endtime=${(p.params.endtime)!''}">
			<span>导出代付信息</span></a></li>
			<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/changeCodeDF'))!}&tran_seq={id}" target="ajaxTodo" title="确定要更新{id}吗?"><span>更新结果状态</span></a></li>
		</ul>
	</div>
	<table class="table" width="140%" layoutH="109">
		<thead>
			<tr>
				<th width="2%"><input type="checkBox" group="tran_seq" class="checkboxCtrl"/></th>
				<th width="8%" orderField="tran_seq">代付流水号</th>
				<th width="5%" orderField="agent_no">系统代理编号</th>
				<th width="5%" orderField="tran_amt">交易金额(元)</th>
				<th width="5%" orderField="pay_acct_nm">收款人</th>
				<th width="5%" orderField="pay_acct_no">收款卡</th>
				
				<th width="5%" orderField="pay_type">代付类型</th>
				
				
				<th width="5%" orderField="result_info">上游返回结果说明</th>
				
				<th width="5%" orderField="status_code">系统状态编码</th>
				<th width="5%" orderField="status_info">状态备注</th>
				<th width="5%" orderField="resutl_seq">上游返回流水号</th>
				<th width="1%" orderField="result_code">上游返回结果编码</th>
				<th width="5%" orderField="tran_time">代付时间</th>
				
				<th width="2%" orderField="ins_bid">渠道编号</th>
				<th width="1%" orderField="bid">通道编号</th>
				
				<th width="5%" orderField="pay_bank_nm">收款行行名</th>
				<th width="5%" orderField="pay_bank_no">收款行开户行联行号</th>
				
				<th width="5%" orderField="pay_acct_tp">收款账号类型</th>
				
				<th width="5%" orderField="file_date">存档时间</th>
				
			</tr>
		</thead>
		<tbody id="Agent_seq">
			<#list p.results as list>
				<tr target="id" rel="${(list.TRAN_SEQ)!}">
					<td target="c_name" rel="${(list.TRAN_SEQ)!}"><input type="checkBox" id="tran_seq" name="tran_seq" value="${(list.TRAN_SEQ)!}"/></td>
					<td target="code_s" rel="${(list.STATUS_CODE)!}" >${(list.TRAN_SEQ)!}</td>
					<td >${(list.AGENT_NO)!}</td>
					<td >${(list.TRAN_AMT)!}</td>
					<td >${(list.PAY_ACCT_NM)!}</td>
					<td >${(list.PAY_ACCT_NO)!}</td>
					
					<td ><#if list.PAY_TYPE == 'D001'>充值
					<#elseif list.PAY_TYPE == 'D002'>提现
					<#elseif list.PAY_TYPE == 'DL01'>分润累加
					<#elseif list.PAY_TYPE == 'DL02'>分润提现
					<#elseif list.PAY_TYPE == 'DL03'>利润金额调帐
					<#else>${(list.PAY_TYPE)!}</#if>
					</td>
					
					<td >${(list.RESULT_INFO)!}</td>
					<td >${(list.STATUS_CODE)!}</td>
					<td >${(list.STATUS_INFO)!}</td>
					<td >${(list.RESUTL_SEQ)!}</td>
					<td >${(list.RESULT_CODE)!}</td>
					<td >${list.TRAN_TIME?datetime("yyyyMMddHHmmss")}</td>
					
					<td >${(list.INS_BID)!}</td>
					<td >${(list.BID)!}</td>
					
					<td >${(list.PAY_BANK_NM)!}</td>
					<td >${(list.PAY_BANK_NO)!}</td>
					
					<td ><#if list.PAY_ACCT_TP??&&list.PAY_ACCT_TP=='0'>对公<#else>对私</#if></td>
					
					<td >${(list.FILE_DATE)!}</td>
					
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

