<script type="text/javascript">
	function BrowseFolder(){
		 try{
		  var Message = "请选择文件夹";  //选择框提示信息
		  var Shell = new ActiveXObject( "Shell.Application" );
		  var Folder = Shell.BrowseForFolder(0,Message,0x0040,0x11);//起始目录为：我的电脑
		  //var Folder = Shell.BrowseForFolder(0,Message,0); //起始目录为：桌面
		  if(Folder != null){
		    Folder = Folder.items();  // 返回 FolderItems 对象
		    Folder = Folder.item();  // 返回 Folderitem 对象
		    Folder = Folder.Path;   // 返回路径
		    if(Folder.charAt(Folder.length-1) != "\\"){
		      Folder = Folder + "\\";
		    }
		    document.all.savePath.value=Folder;
		    return Folder;
		  }
		 }catch(e){ 
		  alert(e.message);
		 }
	}
</script>

<div class="pageContent" style="overflow:hidden;">
	<form method="post" action="${(projectName)!}/?spm=${(urlEncrption('/${(action)!}/downFile'))!}" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="50" style="background-color:#ecf2f4;overflow:hidden;padding-bottom:0">
			<td> <input type="text" name="path" /> </td>
			<td> <input type="button" onclick="BrowseFolder()" value="选择生成路径" /> </td>
			<input type="hidden" name="batch_no" value="${(p.params.batch_no)!''}"/>
		</div>
		<div class="formBar">
			<ul>
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">保存</button></div></div></li>
				<li><div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div></li>
			</ul>
		</div>
	</form>
</div>

