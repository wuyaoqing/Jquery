<%@ Language=VBScript %>
<HTML>
<HEAD>
</HEAD>
<%
	dim a
	set a=server.CreateObject("Scripting.Dictionary")
	a.Add "1","精锐创作组"
	a.Add "2","编程沙龙"
	Response.Write a("1")
%>
<BODY>
</BODY>
</HTML>

