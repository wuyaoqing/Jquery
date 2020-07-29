<%@ Language=VBScript %>
<HTML>
<HEAD>
</HEAD>
<BODY>
<%
	dim host
	host=Request.ServerVariables("REMOTE_HOST") 
	Response.Write host
%>
</BODY>
</HTML>

