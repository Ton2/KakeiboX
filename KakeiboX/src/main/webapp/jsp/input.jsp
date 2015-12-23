<%@ page language="java" contentType="text/html; charset=Shift_JIS" %>
<%@ page pageEncoding="Shift_JIS" %>
<%@ page import="jp.co.KakeiboX.common.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<link rel="stylesheet" href="../css/style.css" type="text/css">
<title>家計簿入力</title>
</head>
<body>
<script type="text/javascript" src="../js/common.js"></script>
<script type="text/javascript">
	function Check(){
		//項目チェック
		if (!chkRequiredText('inputyear','入力年') ||
			!chkNumeric('inputyear','入力年')) return false;
		if (!chkRequiredText('inputmonth','入力月') ||
			!chkNumeric('inputmonth','入力月')) return false;
		if (!chkRequiredText('inputday','入力日') ||
			!chkNumeric('inputday','入力日')) return false;
	}
	
	function CheckAndSubmit(){
		Check();
	}
	
	function InitScreen(){
		getElementById("inputyear").value = "";
	}
</script> 
<form id="form" name="form" method="post" onsubmit="check();return false;">
<div id="main">
<div class="div_linecontainer">
	<div class="div_title">入力日</div>
	<div class="div_naiyo">
		<input type="text" id="inputyear" name="textbox" size="4" maxlength="4" value=""
		style="ime-mode:disabled;" onKeydown="setCursorOnEnter('inputmonth');">年
		<input type="text" id="inputmonth" name="textbox" size="2" maxlength="2" value=""
		style="ime-mode:disabled;" onKeydown="setCursorOnEnter('inputday');">月
		<input type="text" id="inputday" name="textbox" size="2" maxlength="2" value=""
		style="ime-mode:disabled;" onKeydown="setCursorOnEnter('suitokbn');">日
	</div>
</div>
<div class="div_linecontainer">
	<div class="div_title">出納区分</div>
	<div class="div_naiyo">
		<select id="suitokbn" name="suitokbn" onKeydown="setCursorOnEnter('naiyokbn');">
			<option value="1">支出</option>
			<option value="2">収入</option>
		</select>
	</div>
</div>
<div class="div_linecontainer">
	<div class="div_title">内容区分</div>
	<div class="div_naiyo">
		<select id="naiyokbn" name="naiyokbn" onKeydown="setCursorOnEnter('shosai');">
			<option value="1">可変１</option>
			<option value="2">可変２</option>
		</select>
	</div>
</div>
<div class="div_linecontainer">
	<div class="div_title">詳細</div>
	<div class="div_naiyo">
		<input type="text" id="shosai" name="shosai" size="20" maxlength="20" value=""
		onKeydown="setCursorOnEnter('biko');">
	</div>
</div>
<div class="div_linecontainer">
	<div class="div_title">備考</div>
	<div class="div_naiyo">
		<input type="text" id="biko" name="biko" size="50" maxlength="50" value=""
		 onKeydown="setCursorOnEnter('submit');">
	</div>
</div>
<div class="div_linecontainer">
	<input type="button" id="doSubmit" value="登録" onClick="CheckAndSubmit();">
	<input type="button" id="clear" value="クリア" onClick="InitScreen();">
</div>
</div>


</form>
</body>
</html>