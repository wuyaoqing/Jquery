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

	Response.Write "文件路径和名称："& _
	              ucase(filename)&"<br>"

	Response.Write "文件大小：" _
	             &formatnumber(file1.size/1024,0)&"Kb"&"<br>"

	Response.Write "文件名称：" _
	             &ucase(file1.name)&"<br>"

	Response.Write "创建时间："& _
	file1.datecreated&"<br>"

	Response.Write "上一次访问时间：" _
	              &file1.datelastaccessed&"<br>"

	Response.Write "修改时间：" _
	              &file1.datelastmodified&"<br>"
	set fso=nothing
	set file1=nothing

%>
<BODY>
</BODY>
</HTML>

