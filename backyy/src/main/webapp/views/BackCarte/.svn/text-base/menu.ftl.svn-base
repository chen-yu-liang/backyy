<ul class="tree treeFolder collapse clickEvent">
	<#assign carte = getCache("c_carte|${(platSign)!'0'}")>
	<#list carte as item>
		<#if item["LEVELS"] == 1>
			<li>
				<a href="${(projectName)!}/?spm=${(urlEncrption('BackCarte/prepare'))!}&id=${item['ID']}&platSign=${(platSign)!'0'}" target="ajax" rel="jbsxBox">${item["CARTE_NAME"]}</a>
			<#if (carte[item_index + 1]) ??>
				<#if (carte[item_index + 1]["LEVELS"] > item["LEVELS"])>
					<ul>
				<#else>
					</li>
				</#if>
			</#if>
		</#if>
		<#if item["LEVELS"] == 2>
			<li>
				<a href="${(projectName)!}/?spm=${(urlEncrption('BackCarte/prepare'))!}&id=${item['ID']}&platSign=${(platSign)!'0'}" target="ajax" rel="jbsxBox">${item["CARTE_NAME"]}</a>
			<#if (carte[item_index + 1]) ??>
				<#if (carte[item_index + 1]["LEVELS"] > item["LEVELS"])>
					<ul>
				<#elseif (carte[item_index + 1]["LEVELS"] < item["LEVELS"])>
					</li></ul></li>
				<#else>
					</li>
				</#if>
			</#if>
		</#if>
		<#if item["LEVELS"] == 3>
			<li>
				<a href="${(projectName)!}/?spm=${(urlEncrption('BackCarte/prepare'))!}&id=${item['ID']}&platSign=${(platSign)!'0'}" target="ajax" rel="jbsxBox">${item["CARTE_NAME"]}</a>
			<#if (carte[item_index + 1]) ??>
				<#if (carte[item_index + 1]["LEVELS"] == 2)>
					</ul></li>
				<#elseif carte[item_index + 1]["LEVELS"] == 1>
					</ul></li></ul></li>
				<#elseif carte[item_index + 1]["LEVELS"] == item.LEVELS>
					</li>
				<#elseif (carte[item_index + 1]["LEVELS"] > item.LEVELS)>
					<ul>
				</#if>
			</#if>
		</#if>
		<#if item["LEVELS"] == 4>
			<li>
				<a href="${(projectName)!}/?spm=${(urlEncrption('BackCarte/prepare'))!}&id=${item['ID']}&platSign=${(platSign)!'0'}" target="ajax" rel="jbsxBox">${item["CARTE_NAME"]}</a>
			</li>
			<#if (carte[item_index + 1]) ??>
				<#if carte[item_index + 1]["LEVELS"] == 2>
					</ul></li></ul></li>
				<#elseif carte[item_index + 1]["LEVELS"] == 1>
					</ul></li></ul></li></ul></li>
				<#elseif carte[item_index + 1]["LEVELS"] == 3>
					</ul></li>
				</#if>
			</#if>
		</#if>
		<#if item_index == (carte?size-1)>
			<#if item["LEVELS"] == 1>
				</li>
			<#elseif item["LEVELS"] == 2>
				</li>
				</ul>
				</li>
			<#elseif item["LEVELS"] == 3>
				</ul>
				</li>
				</ul>
				</li>
			<#else>
				</ul>
				</li>
				</ul>
				</li>
				</ul>
				</li>
			</#if>
		</#if>
	</#list>
</ul>
