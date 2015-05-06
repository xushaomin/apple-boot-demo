<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">

<title>DEMO列表</title>


<script type="text/javascript">

</script>


</head>

<body>

		<#list list as info>
        <tr class="even">
        	<td><input type="checkbox" name="ids" value="${info.id}" />${info.id}</td>
        	<td>${(info.name)!}</td>
        	<td>${(info.age)!}</td>
        </tr>
        </#list>
        
</body>
</html>