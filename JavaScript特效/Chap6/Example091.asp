<%@ Language=VBScript %>
<HTML>
<HEAD>
</HEAD>
<%
	dim a
	set a=server.CreateObject("Scripting.Dictionary")
	a.Add "1","��������"
	a.Add "2","���ɳ��"
	Response.Write a("1")
%>
<BODY>
</BODY>
</HTML>

