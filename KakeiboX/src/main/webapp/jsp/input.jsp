<%@ page language="java" contentType="text/html; charset=Shift_JIS" %>
<%@ page pageEncoding="Shift_JIS" %>
<%@ page import="jp.co.KakeiboX.common.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<link rel="stylesheet" href="../css/style.css" type="text/css">
<title>�ƌv�����</title>
</head>
<body>
<script type="text/javascript" src="../js/common.js"></script>
<script type="text/javascript">
	function Check(){
		//���ڃ`�F�b�N
		if (!chkRequiredText('inputyear','���͔N') ||
			!chkNumeric('inputyear','���͔N')) return false;
		if (!chkRequiredText('inputmonth','���͌�') ||
			!chkNumeric('inputmonth','���͌�')) return false;
		if (!chkRequiredText('inputday','���͓�') ||
			!chkNumeric('inputday','���͓�')) return false;
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
	<div class="div_title">���͓�</div>
	<div class="div_naiyo">
		<input type="text" id="inputyear" name="textbox" size="4" maxlength="4" value=""
		style="ime-mode:disabled;" onKeydown="setCursorOnEnter('inputmonth');">�N
		<input type="text" id="inputmonth" name="textbox" size="2" maxlength="2" value=""
		style="ime-mode:disabled;" onKeydown="setCursorOnEnter('inputday');">��
		<input type="text" id="inputday" name="textbox" size="2" maxlength="2" value=""
		style="ime-mode:disabled;" onKeydown="setCursorOnEnter('suitokbn');">��
	</div>
</div>
<div class="div_linecontainer">
	<div class="div_title">�o�[�敪</div>
	<div class="div_naiyo">
		<select id="suitokbn" name="suitokbn" onKeydown="setCursorOnEnter('naiyokbn');">
			<option value="1">�x�o</option>
			<option value="2">����</option>
		</select>
	</div>
</div>
<div class="div_linecontainer">
	<div class="div_title">���e�敪</div>
	<div class="div_naiyo">
		<select id="naiyokbn" name="naiyokbn" onKeydown="setCursorOnEnter('shosai');">
			<option value="1">�ςP</option>
			<option value="2">�ςQ</option>
		</select>
	</div>
</div>
<div class="div_linecontainer">
	<div class="div_title">�ڍ�</div>
	<div class="div_naiyo">
		<input type="text" id="shosai" name="shosai" size="20" maxlength="20" value=""
		onKeydown="setCursorOnEnter('biko');">
	</div>
</div>
<div class="div_linecontainer">
	<div class="div_title">���l</div>
	<div class="div_naiyo">
		<input type="text" id="biko" name="biko" size="50" maxlength="50" value=""
		 onKeydown="setCursorOnEnter('submit');">
	</div>
</div>
<div class="div_linecontainer">
	<input type="button" id="doSubmit" value="�o�^" onClick="CheckAndSubmit();">
	<input type="button" id="clear" value="�N���A" onClick="InitScreen();">
</div>
</div>


</form>
</body>
</html>