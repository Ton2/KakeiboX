<%@ page language="java" contentType="text/html; charset=Shift_JIS" %>
<%@ page pageEncoding="Shift_JIS" %>
<%@ page import="jp.co.KakeiboX.common.*" %>

<% util common = new util(); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
<title>�ƌv�����</title>
</head>
<body>

<form id="inputable" name="inputable">
<table border="0" cellspacing="2" cellpadding="2">
	<tr>
		<td>
			���͓�
		</td>
		<td>
			<input type="text" id="inputyear" name="inputyear" size="4" maxlength="4" value="<%= common.todayYYYY %>">�N
			<input type="text" id="inputmonth" name="inputmonth" size="2" maxlength="2" value="<%= common.todayMM %>">��
			<input type="text" id="inputday" name="inputday" size="2" maxlength="2" value="<%= common.todayDD %>">��
		</td>
	</tr>
	<tr>
		<td>
			�o�[�敪
		</td>
		<td>
			<select id="suitokbn" name="suitokbn">
				<option value="1">�x�o</option>
				<option value="2">����</option>
			</select>
		</td>
	</tr>
	<tr>
		<td>
			���e
		</td>
		<td>
			<select id="naiyo" name="naiyo">
			
				<option value="1">�x�o</option>
				<option value="2">����</option>
			</select>
		</td>
	</tr>
</table>
</form>
</body>
</html>