<%@ Language=VBScript %>
<HTML>
<HEAD>
<TITLE>
</TITLE>
</HEAD>
<%
	dim fso,fol,strpath
	strpath="c:\Program Files"
	'ָ���ļ��е�����ΪC�̸�Ŀ¼�µ�Program Files
	set fso=server.CreateObject("scripting.filesystemobject")
	set fol=fso.GetFolder(strpath)
	'����filesystemobject�����Folder����
	
	Response.Write "�ļ���Ŀ¼��"& _
					ucase(strpath)&"<br>"
	
	Response.Write "�ļ��д�С��"& _
				formatnumber(fol.size/1024,0)&"Kb"&"<br>"
	
	Response.Write "�ļ������ƣ�"& _
					ucase(fol.name)&"<br>"
	
	Response.Write "����ʱ�䣺"& _
				fol.datecreated&"<br>"
	
	Response.Write "��һ�η���ʱ�䣺"& _
				fol.datelastaccessed&"<br>"
	
	Response.Write "�޸�ʱ�䣺"& _
				fol.datelastmodified&"<br>"
	set fso=nothing
	set fol=nothing
	'�ͷŶ�����ռ�õ���Դ
%>
<BODY>
</BODY>
</HTML>

