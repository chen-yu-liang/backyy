<script>
	var zTreeObj;
	var setting = {
		check:{
			enable:true
		},
		data:{
			simpleData:{
				enable: true,
				idKey: "parentId",
				pIdKey: "parent",
				rootPId: "0"
		    }
	    }
	};
	var zNodes = eval(${json});
	$(document).ready(function(){
		zTreeObj = $.fn.zTree.init($("#treeDemo"), setting, zNodes);
	});
	//获取菜单选中值
	function getMenuCheck(){
		var nodes = zTreeObj.getCheckedNodes(true);
		var retObj = "";
		for (var i = 0; i < nodes.length; i++){
			if ( i == nodes.length -1){
				retObj += nodes[i].carteId;		
			} else {
				retObj += nodes[i].carteId + ",";
			}
		}
		return retObj;
	}
	function getCkVlByTree(){
		$("#stringCarte").val(getMenuCheck());
		showButton($("#treeForm"));
	}
	$(".toggleColl",document).click(function(){
  		getCkVlByTree();
	});
	function showButton($form){
		$("#jBox").loadUrl("${(projectName)!}/?spm=${(urlEncrption('Users/getButtonPermission'))!}",$form.serializeArray(),function(data){
			$("#jBox").find("[layoutH]").layoutH();
		});
	}
</script>
<div id="resultBox"></div>
<form method="post" id="treeForm" style = "margin-top:26px;">
	<input type="hidden" name="admin_id" value = "${(admin_id) }"/>
	<input id="stringCarte" name="stringCartes" type = "hidden"/>
	<p>
		<ul id="treeDemo" class="ztree"></ul>
	</p>
</form>