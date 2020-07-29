<%@ Language=VBScript %>
<HTML>
<HEAD>
</HEAD>
<BODY>
<%
	dim name,pwd
	name=Request.QueryString("username")
	pwd=Request.QueryString("password")
	'取得URL传递的username和password参数的值
	Response.Write "用户名称为:" & name & "<br>"
	Response.Write "密码为:"& pwd &"<br>"
%>
</BODY>
</HTML>

