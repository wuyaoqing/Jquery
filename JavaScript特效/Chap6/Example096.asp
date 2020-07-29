<%@ Language=VBScript %>
<HTML>
<HEAD>
</HEAD>
<BODY>
<%
	dim ServerVars
	dim strContent
	dim intLoop
	ServerVars=Request.ServerVariables("ALL_HTTP") 
	strContent=split(ServerVars,chr(10))
%>
<TABLE cellpadding=2 border=1 width=200>
<%		
	for intLoop=0 to ubound(strContent)-1
%>
<TR>  
<TD>
<%
	Response.Write left(strContent(intLoop),instr(strContent(intLoop),":")-1)  
%>
</TD>
<TD>
<%  
	Response.Write mid(strContent(intLoop),instr(strContent(intLoop),":")+1)  
%>
</TD>
</TR>
<%  next   %>
</TABLE>
</BODY>
</HTML>

