<%@ page import="jp.co.KakeiboX.common.*" %>
<%@ page import="jp.co.KakeiboX.common.GetProp" %>
<%@ page pageEncoding="Shift_JIS" %>
<html>
<body>
<%
GetProp prop = new GetProp();
%>
<%= prop.getSQLDriverName() %><br>
<%= prop.getDBLocation() %><br>
<%= prop.getDBName() %><br>
<%= prop.getDBUser() %><br>
<%= prop.getDBPass() %><br>

<form id="main" name="main">
<input type="hidden" id="movecontrol">
<input type="button" id="inputday" value="入力"><br><br>
<input type="button" id="inputday" value="マスタメンテナンス">
</form>
</body>
</html>
