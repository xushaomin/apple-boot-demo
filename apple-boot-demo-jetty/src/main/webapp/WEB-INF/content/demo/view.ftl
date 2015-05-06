<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<title>查询牌桌详细信息</title>
<#include "../commons/page_css.ftl" />
<#include "../commons/page_js.ftl" />


</head>

<body>
	
    <div id="auditTab" class="pop_main" style="width:600px;border: 0px solid;">

       <div class="pop_information_mod">
            <table>
            	<tr>
            	<td>
	            	<ul class="pop_list merchant_type_add">
	            		<li class="clearfix">
	                		<label for="id" class="tit">牌桌ID：</label>
	                		<span>${(deskInfoState.id)!}</span>
	               		</li>
	               			
	               		<li class="clearfix">
	                		<label for="coding" class="tit">牌桌编码：</label> 
	                		<span>${(deskInfoState.coding)!}</span>
	               		</li>
						<li class="clearfix">
	                		<label for="flag" class="tit">用户类型：</label>
	                		<span>
	                		<#if deskInfoState.flag == 1>启用</#if>
	                		<#if deskInfoState.flag == 2>停用</#if>
	                		</span>
	               		</li>
	               		
	            	</ul>
            	</td>
                </tr>
                
            </table>

        </div>

    </div>
    <div class="pop_footer">
        <a id="btn_pop_submitB" class="btn_pop_submitB" href="javascript:void(0)" onclick="art.dialog.close();">取消</a>
    </div>




</body>
</html>