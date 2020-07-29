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
			Response.Write"<STRONG>磁盘卷标为:</STRONG>" _
			&drv.volumename&"<br>"
			Response.Write "磁盘总容量为:" _ 
			&formatnumber(drv.totalsize/(1024^2),2)&"Mb"&"<br>"
			Response.Write "磁盘可用空间为:" _
			&formatnumber(drv.freespace/(1024^2),2)&"Mb" _
			&"<br>"
			end if
	next
set fso=nothing

%>
<BODY>
</BODY>
</HTML>

