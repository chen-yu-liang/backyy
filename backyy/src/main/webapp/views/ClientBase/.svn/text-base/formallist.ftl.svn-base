<#include "/common/pageForm.ftl">
<script type="text/javascript">
 function findClientMap(){
		var idArr = $("#clientMap input[name='clientNo']:checked");
		if(idArr.size()>0){
			var clientNo = "";
			for(var i=0;i<idArr.size();i++){
				var id = $(idArr).eq(i).val();
				clientNo += clientNo=="" ?id:","+id;
			}
			var href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/getbaidumap'))!}&clientNo="+clientNo;
			document.getElementById('changeB').href=href;
			document.getElementById("changeB").click();
		}else{
			alert("请选择需查看数据");
		}
	}
	function getBid(){
		var ids = "";
		navTab.getCurrentPanel().find("input:checked").filter("[name='clientNo']").each(function(i){
			var val = $(this).val();
			ids += i==0 ? val : ","+val;
		});
		if(ids!=""){
			$.pdialog.open("${(projectName)!}/?spm=${(urlEncrption('/ChannelPool/getBussiness'))!}&sign=2&ids="+ids,"getBussiness", "请选择加入商编池",{mask:true,width:335,height:170});
			
		}else{
			alertMsg.info("请选择商编信息");
		}
	}
 function findExportExcel(){
		var idArr = $("#clientMap input[name='clientNo']:checked");
		if(idArr.size()>0){
			var clientNos = "";
			for(var i=0;i<idArr.size();i++){
				var id = $(idArr).eq(i).val();
				clientNos += clientNos=="" ?id:","+id;
			}
			window.location = "${(projectName)!}/?spm=${(urlEncrption('${action}/exportClient'))!}&clientNos="+clientNos;
		}else{
			alert("请选择需导出的数据");
			return false;
		}
	}		
</script>
<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="${url}" method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
						<td>
							商户编号:<input type="text" name="client_no" value="${(p.params.client_no)!''}" size=15/>
						</td>
						<td>
							商户名称:<input type="text" name="client_name" value="${(p.params.client_name)!''}" size=15/>
						</td>
						<td>
							客户等级:<input type="text" name="client_level" value="${(p.params.client_level)!''}" size=15/>
						</td>
						<td>
							联系人:<input type="text" name="person" value="${(p.params.person)!''}" size=15/>
						</td>
						<td>
							通道编号: 
							<select name="c_id"   selectvl="${(p.params.c_id)!''}" >
								<option value="">--请选择--</option>
				    			<#list channalList as key>
				    				<option value="${(key.id)!}">${(key.name)!}</option>
				    			</#list>
							</select>
						</td>
						<td>
							商户类型:
							<select name="client_type"   selectvl="${(p.params.client_type)!''}" >
								<option value="">--请选择--</option>
				    			<option value="0">普通商户</option>
				    			<option value="1">接口商户</option>
							</select>
						</td>
						<td >
							所属代理商:<input type="text" name="agent_no" value="${(p.params.agent_no)!''}" size=15/>
						</td>
						<td>
							申请时间：<input type="text" btw="date" selectvl_event="true" name="begintime" class="date" size="8" value="${(p.params.begintime)!''}" id = "startClassroomTime" maxDate = "#F{$dp.$D(\'endClassroomTime\',{M:-0});}" dateFmt="yyyy-MM-dd" readonly="true"/>
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
			<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/update'))!}&id={id}&status=-1" target="ajaxTodo" rel="ClientBase_update" title="确定要停用【{cn}】吗?"><span>停用</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/add'))!}&id={id}" target="dialog"  width="900" height="500" rel="ClientBase_add" title="查看-{cn}"><span>详细资料</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/findpictrue'))!}&client_no={id}&client_name={cn}&status=2" target="navTab" rel="ClientBase_findpictrue"><span>图片信息</span></a></li>
			<!--
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/ObjectRate/add'))!}&id={id}&object_type=0" target="dialog"  width="450" height="400" rel="ClientBase_add" title="设置-{cn}底价"><span>设置底价</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${urlEncrption("/${action}/changeClientRate/")}&client_no={id}"  target="dialog" width="500" height="300" title="修改绑定【{cn}】费率"><span>修改费率</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${urlEncrption("/${action}/changeChannel/")}&client_no={id}"  target="dialog" width="500" height="300" title="修改【{cn}】商编"><span>修改商编</span></a></li>
			-->
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/ClientPort/add'))!}&id={id}" target="dialog"  width="450" height="400" rel="ClientPort_add" title="设置-{cn}"><span>设置接口商户</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/ClientProduct/list'))!}&client_no={id}" target="dialog"  width="900" height="500" rel="ClientProduct_list" title="开通-{cn}的产品"><span>产品费率</span></a></li>
			<li><a id="changeB" class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/ClientBase/formallist'))!}" onclick="findClientMap();"  target="navTab"  width="1200" height="1000"><span>获取地理位置</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/TestClient/add'))!}&test_client={id}" target="dialog"  width="450" height="350" rel="TestClientLogin_list" ><span>开通测试商户</span></a></li>
			<li><a class="edit" onclick ="getBid();" ><span>加入商编池</span></a></li>
			<li><a class="edit permission" href="javascript:findExportExcel()"><span>导出秘钥信息</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/Code2pay/openCode2pay'))!}&client_no={id}" target="ajaxTodo"  width="450" height="350" rel="ClientBase_formallist" title="确定要开通【{cn}】固定二维码吗?"><span>开通固定二维码</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/Code2pay/downFile'))!}&client_no={id}" target="dwzExport" targetType="navTab"  rel="ClientProduct_formallist" ><span>下载固定二维码</span></a></li>
			<li><a class="delete permission" href="${(projectName)!}/?spm=${(urlEncrption('/Code2pay/updateStatus'))!}&client_no={id}" target="ajaxTodo" rel="ClientBase_formallist" title="确定要修改【{cn}】状态吗?"><span>启用/停用二维码</span></a></li>
			<li><a class="edit permission" href="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/paymessage'))!}&id={id}&agent_no={an}" target="dialog"  width="800" height="550" rel="ClientBase_paymessage" title="查看-{cn}"><span>生产参数资料</span></a></li>
		</ul>
	</div>
	<table class="table" width="100%" layoutH="109">
		<thead>
			<tr>
				<th width="2%"><input type="checkBox" group="clientNo" class="checkboxCtrl" /></th>
				<th width="5%" orderField="client_no">商户编号</th>
				<th width="6%" orderField="client_name">商户名称</th>
				<th width="8%" orderField="client_uuid">交易秘钥</th>
				<th width="4%" orderField="pay_key">代付秘钥</th>
				<th width="5%" orderField="code_status">二维码</th>
				<th width="6%" orderField="add_date">添加日期</th>
				<th width="6%" orderField="province">省份</th>
				<th width="6%" orderField="city">城市</th>
				<th width="6%" orderField="area">区县</th>
				<th width="5%" orderField="client_level">客户等级</th>
				<th width="6%" orderField="agent_name">代理商</th>
				<th width="8%" orderField="we_unionid">微信</th>
				<th width="5%" orderField="person">联系人</th>
				<th width="7%" orderField="mobile">手机</th>
				<th width="5%" orderField="status">状态</th>
				<th width="8%" orderField="client_type">商户类型</th>
				<th width="8%" orderField="c_id">商编</th>
			</tr>
		</thead>
		<tbody id="clientMap">
			<#list p.results as list>
				<tr target="id" rel="${(list.CLIENT_NO)!}">
					<td target="cn" rel="${(list.CLIENT_NO)!}"><input type="checkBox" id="clientNo" name="clientNo" value="${(list.CLIENT_NO)!}" /></td>
					<td target="cn" rel="${(list.CLIENT_NAME)!}">${(list.CLIENT_NO)!}</td>
					<td target="an" rel="${(list.AGENT_NO)!}">${(list.CLIENT_NAME)!}</td>
					<td >${(list.CLIENT_UUID)!}</td>
					<td >${(list.PAY_KEY)!}</td>
					<td ><#if list.CODE_STATUS??&&list.CODE_STATUS==0><img src="${(projectName)!}/public/images/code2_h.jpg" style="margin-top:4px" ptip="已关闭"><#elseif list.CODE_STATUS??&&list.CODE_STATUS==1><img src="${(projectName)!}/public/images/code2.jpg" style="margin-top:4px" ptip="二维码支付开启"><#else>--</#if></td>
					<td >${(list.ADD_DATE)!}</td>
					<td >${(list.PROVINCE)!}</td>
					<td >${(list.CITY)!}</td>
					<td >${(list.AREA)!}</td>
					<td >${(list.CLIENT_LEVEL)!}</td>
					<td >${(list.AGENT_NO)!}-${(list.AGENT_NAME)!}</td>
					<td >${(list.WE_UNIONID)!}</td>
					<td >${(list.PERSON)!}</td>
					<td >${(list.MOBILE)!}</td>
					<td ><#if list.STATUS==2>正式</#if>[${(list.STATUS)!}]</td>
					<td ><#if list.CLIENT_TYPE==1>接口商户<#else>普通商户</#if>[${(list.CLIENT_TYPE)!}]</td>
					<td >${(list.C_ID)!}-${(list.NAME)!}</td>
				</tr>
			</#list>
		</tbody>
	</table>
	<#include "/common/pages.ftl">
</div>

