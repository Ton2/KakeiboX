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
<title>家計簿入力</title>
</head>
<body>

<form id="form" name="form">
<table border="0" cellspacing="2" cellpadding="2">
	<tr>
		<td>
			入力日
		</td>
		<td>
			<input type="text" id="inputyear" name="入力年" size="4" maxlength="4" value=""
			style="ime-mode:disabled;" onKeydown="setCursorOnEnter('inputmonth');"
			onblur="chkNumeric('inputyear','入力年');">年
			<input type="text" id="inputmonth" name="inputmonth" size="2" maxlength="2" value=""
			style="ime-mode:disabled;" onKeydown="setCursorOnEnter('inputday');">月
			<input type="text" id="inputday" name="inputday" size="2" maxlength="2" value=""
			style="ime-mode:disabled;" onKeydown="setCursorOnEnter('suitokbn');">日
		</td>
	</tr>
	<tr>
		<td>
			出納区分
		</td>
		<td>
			<select id="suitokbn" name="suitokbn" onKeydown="setCursorOnEnter('naiyokbn');">
				<option value="1">支出</option>
				<option value="2">収入</option>
			</select>
		</td>
	</tr>
	<tr>
		<td>
			内容区分
		</td>
		<td>
			<select id="naiyokbn" name="naiyokbn" onKeydown="setCursorOnEnter('shosai');">
				<option value="1">可変１</option>
				<option value="2">可変２</option>
			</select>
		</td>
	</tr>
	<tr>
		<td>
			詳細
		</td>
		<td>
			<input type="text" id="shosai" name="shosai" size="20" maxlength="20" value="" onKeydown="setCursorOnEnter('biko');">
		</td>
	</tr>
		<tr>
		<td>
			備考
		</td>
		<td>
			<input type="text" id="biko" name="biko" size="50" maxlength="50" value="">
		</td>
	</tr>
</table>
</form>
</body>
</html>