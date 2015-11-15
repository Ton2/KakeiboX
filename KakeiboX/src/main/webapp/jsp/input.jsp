<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>
<%@ page pageEncoding="Shift_JIS" %>
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
<%
	Date dtoday = new Date();
	SimpleDateFormat today = new SimpleDateFormat("yyyymmdd");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
<title>家計簿入力</title>
</head>
<body>

<form id="inputable" name="inputable">
<table border="0" cellspacing="2" cellpadding="2">
	<tr>
		<td>
			入力日
		</td>
		<td>
			<select name="inputyear" size="1">
			<option value=""></option>
			</select>
		</td>
	</tr>
</table>
</form>
</body>
</html>