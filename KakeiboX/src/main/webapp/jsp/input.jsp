<%@ page language="java" contentType="text/html; charset=Shift_JIS" %>
<%@ page pageEncoding="Shift_JIS" %>
<%@ page import="jp.co.KakeiboX.common.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script  type="text/javascript" charset=Shift_JIS> 
<%@include file="../js/common.js" %>
5</script> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<title>�ƌv�����</title>
</head>
<body>

<form id="form" name="form">
<table border="0" cellspacing="2" cellpadding="2">
	<tr>
		<td>
			���͓�
		</td>
		<td>
			<input type="text" id="inputyear" name="���͔N" size="4" maxlength="4" value=""
			style="ime-mode:disabled;" onKeydown="setCursorOnEnter('inputmonth');"
			onblur="chkNumeric('inputyear','���͔N');">�N
			<input type="text" id="inputmonth" name="inputmonth" size="2" maxlength="2" value=""
			style="ime-mode:disabled;" onKeydown="setCursorOnEnter('inputday');">��
			<input type="text" id="inputday" name="inputday" size="2" maxlength="2" value=""
			style="ime-mode:disabled;" onKeydown="setCursorOnEnter('suitokbn');">��
		</td>
	</tr>
	<tr>
		<td>
			�o�[�敪
		</td>
		<td>
			<select id="suitokbn" name="suitokbn" onKeydown="setCursorOnEnter('naiyokbn');">
				<option value="1">�x�o</option>
				<option value="2">����</option>
			</select>
		</td>
	</tr>
	<tr>
		<td>
			���e�敪
		</td>
		<td>
			<select id="naiyokbn" name="naiyokbn" onKeydown="setCursorOnEnter('shosai');">
				<option value="1">�ςP</option>
				<option value="2">�ςQ</option>
			</select>
		</td>
	</tr>
	<tr>
		<td>
			�ڍ�
		</td>
		<td>
			<input type="text" id="shosai" name="shosai" size="20" maxlength="20" value="" onKeydown="setCursorOnEnter('biko');">
		</td>
	</tr>
		<tr>
		<td>
			���l
		</td>
		<td>
			<input type="text" id="biko" name="biko" size="50" maxlength="50" value="">
		</td>
	</tr>
</table>
</form>
</body>
</html>