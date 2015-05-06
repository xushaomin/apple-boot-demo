<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<title>修改服务</title>
<#include "../commons/page_css.ftl" />
<#include "../commons/page_js.ftl" />

<script type="text/javascript">
$().ready(function() {

	var $inputForm = $("#inputForm");
		
	// 表单验证
	$inputForm.validate({
		rules: {
			
		},
		messages: {
			
		},
		submitHandler:function(form){
            form.submit();
        }
	});
	
	$("#btn_pop_submitA").click(function(){
		$inputForm.submit();
	});
	
});

</script>

</head>

<body>
<form id="inputForm" method="post" action="update">
	<input type="hidden" name="id" value="${deskInfoState.id}" />
	<input type="hidden" name="roomId" value="${deskInfoState.roomId}" />
    <div id="auditTab" class="pop_main" style="width:600px;border: 0px solid;">
       <div class="pop_information_mod">
       
            <ul class="pop_list merchant_type_add">
            	
             	<li class="clearfix">
            		<label for="name" class="tit">牌桌编码：<span class=" red">*</span></label>
            		<input class="c_input_text required" type="text" style="width:20px;" id="roomCoding" name="roomCoding" value="${deskInfoState.roomCoding}" maxlength="32" readonly/>
            		<input class="c_input_text required" type="text" style="width:165px;" id="coding" name="coding" value="${deskInfoState.coding}" realValue="请输入牌桌名称" maxlength="32" />
           			<span id="username_div"></span>
           		</li>
           		
           		<li class="clearfix">
            		<label for="state" class="tit">状态：<span class=" red">*</span></label>
           			<input type="radio" class="c_input_radio required" name="state" value="1" <#if deskInfoState.flag==1 > checked="checked" </#if> maxlength="32" />启用
           			<input type="radio" class="c_input_radio required" name="state" value="2" <#if deskInfoState.flag==2 > checked="checked" </#if> maxlength="32" />停用
           		</li>

				<li class="clearfix">
            		<label for="state" class="tit">删除：</label>
           			<input type="checkbox" class="c_input_checkbox" name="deleteFlag" value="1"  maxlength="32" />删除
           		</li>
           		
            </ul>

        </div>

    </div>
    <div class="pop_footer">
        <a id="btn_pop_submitA" class="btn_pop_submitA" href="javascript:void(0)">确定</a>
        <a id="btn_pop_submitB" class="btn_pop_submitB" href="javascript:void(0)" onclick="art.dialog.close();">取消</a>
    </div>


</form>


</body>
</html>