<%@ Language=VBScript %>
<HTML>
<HEAD>
	<TITLE></TITLE>
</HEAD>
<%
	dim fso
	dim drv
	set fso=server.CreateObject ("scripting.filesystemobject")
	for each drv in fso.drives
		if drv.drivetype=2 then
            Response.Write drv.driveletter&":\"&"<br>"
			Response.Write"<STRONG>���̾��Ϊ:</STRONG>" _
			&drv.volumename&"<br>"
			Response.Write "����������Ϊ:" _ 
			&formatnumber(drv.totalsize/(1024^2),2)&"Mb"&"<br>"
			Response.Write "���̿��ÿռ�Ϊ:" _
			&formatnumber(drv.freespace/(1024^2),2)&"Mb" _
			&"<br>"
			end if
	next
set fso=nothing

%>
<BODY>
</BODY>
</HTML>

