<script type="text/javascript">

function getclientNo() {
	var start_num = $("#client_no_start_num").val();
	var card_num=$("#card_num").val();
	if(isNaN(card_num)||card_num==""){
		card_num=1
		$("#card_num").val("1");
	}
	$("#client_no_end_num").val(parseInt(start_num)+parseInt(card_num)-1);
}

function one_cost_count(){
	var cost=$("#cost").val();
	var card_num=$("#card_num").val();
	if(card_num==""){
		alertMsg.error("请先填写卡张数");
		$("#cost").val("");
		return false;
	}
	cost=cost==""||isNaN(cost)?0:parseInt(cost);
	var one_cost=cost/card_num
	$("#one_cost").val(one_cost.toFixed(2));
	$("#cost").val(cost);
}

</script>


<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/saveMakeCard'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<fieldset>
				<p>
					<label style="width:60px;">起始商户号</label>
					<input type="text" name="client_no_start_num" id="client_no_start_num" class="required" readonly value="${(clientNo)!}"/>
				</p>
				<p>
					<label style="width:60px;">总张数</label>
					<input type="text" name="card_num" id="card_num" class="required int"  value="" onblur="getclientNo();"/>
				</p>
				<p>
					<label style="width:60px;">结束商户号</label>
					<input type="text" id="client_no_end_num" name="client_no_end_num" maxlength="8" minlength="8" class="required" readonly="true" value="${(makeCardTotal.client_no_end_num)!}"/>
				</p>
				<p>
					<label style="width:60px;">总成本</label>
					<input type="text" name="cost" id="cost" class="required number"  value="${(makeCardTotal.cost)!}" onblur="one_cost_count();"/>
				</p>
				<p>
					<label style="width:60px;">单卡成本</label>
					<input type="text" name="cost_card" id="one_cost" class="required" readonly="true" value=""/>
				</p>
				<input type="hidden" name="ismake" id="ismake"  value="0"/>
			</fieldset>
		</div>
		<div class="formBar">
			<ul>
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit" >保存</button></div></div></li>
				<li><div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div></li>
			</ul>
		</div>
	</form>
</div>

