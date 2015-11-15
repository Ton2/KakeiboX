<%@ page import="jp.co.KakeiboX.common.*" %>
<%@ page pageEncoding="Shift_JIS" %>
<html>
<body>
<h2>Hello World!</h2>
<% 
ConDB con = new ConDB();
String SSTKbn = con.GetSSTKbn(99);

%>
<%= SSTKbn %>
‚±‚Á‚¿‚¶‚á‚È‚¢‚æ
</body>
</html>
