<%@ Language=VBScript %>
<HTML>
<HEAD>
<TITLE>
</TITLE>
</HEAD>
<%
	dim fso,file1,strpath
	filename="c:\pwinnt\winhelp.exe"
	set fso=server.CreateObject ("scripting.filesystemobject")
	set file1=fso.GetFile (filename)

	Response.Write "�ļ�·�������ƣ�"& _
	              ucase(filename)&"<br>"

	Response.Write "�ļ���С��" _
	             &formatnumber(file1.size/1024,0)&"Kb"&"<br>"

	Response.Write "�ļ����ƣ�" _
	             &ucase(file1.name)&"<br>"

	Response.Write "����ʱ�䣺"& _
	file1.datecreated&"<br>"

	Response.Write "��һ�η���ʱ�䣺" _
	              &file1.datelastaccessed&"<br>"

	Response.Write "�޸�ʱ�䣺" _
	              &file1.datelastmodified&"<br>"
	set fso=nothing
	set file1=nothing

%>
<BODY>
</BODY>
</HTML>

