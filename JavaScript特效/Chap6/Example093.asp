<%@ Language=VBScript%>
<HTML>
<HEAD>
<TITLE></TITLE>
</HEAD>
<BODY>
<%
	dim username,password
	username=Request.Form("username")
	password=Request.Form("pwd")
	'ȡ�ÿͻ���Ϣ���洢�ڱ�����
	if username<>"" and password<>"" then
		if username="sa" and  password="pass" then
			Response.Write "��ӭ��¼"
			Response.End 
		else 
			Response.Write "��������ȷ�ĵ�¼��Ϣ"
		end if
	end if
	%>
	<FORM action="Example093.asp" method=post name=form1>
	�û�:<INPUT name=username height="20" width="10"> <BR>
    ����:<INPUT name=pwd type=password width="6"><BR>
	<INPUT id=submit1 name=submit1 type=submit value=�ύ��Ϣ>
</FORM>
</BODY>
</HTML>

