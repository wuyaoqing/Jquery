<%@ Language=VBScript %>
<HTML>
<HEAD>
<TITLE>
</TITLE>
</HEAD>
<%
	dim fso,fol,strpath
	strpath="c:\Program Files"
	'指定文件夹的名称为C盘根目录下的Program Files
	set fso=server.CreateObject("scripting.filesystemobject")
	set fol=fso.GetFolder(strpath)
	'创建filesystemobject对象和Folder对象
	
	Response.Write "文件夹目录："& _
					ucase(strpath)&"<br>"
	
	Response.Write "文件夹大小："& _
				formatnumber(fol.size/1024,0)&"Kb"&"<br>"
	
	Response.Write "文件夹名称："& _
					ucase(fol.name)&"<br>"
	
	Response.Write "创建时间："& _
				fol.datecreated&"<br>"
	
	Response.Write "上一次访问时间："& _
				fol.datelastaccessed&"<br>"
	
	Response.Write "修改时间："& _
				fol.datelastmodified&"<br>"
	set fso=nothing
	set fol=nothing
	'释放对象所占用的资源
%>
<BODY>
</BODY>
</HTML>

