<%@ Language=VBScript %>
<HTML>
<HEAD>
</HEAD>
<BODY>
<%
	dim name,pwd
	name=Request.QueryString("username")
	pwd=Request.QueryString("password")
	'ȡ��URL���ݵ�username��password������ֵ
	Response.Write "�û�����Ϊ:" & name & "<br>"
	Response.Write "����Ϊ:"& pwd &"<br>"
%>
</BODY>
</HTML>

