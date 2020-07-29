<%@ Language=VBScript %>
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
</HEAD>
<BODY>
<%
const ForReading=1
const ForWriting=2
const ForAppending=8

dim strFile,objFSO,objStream
strFile=server.MapPath("test.txt")
set objFSO=server.CreateObject("scripting.filesystemobject")
set objStream=objFSO.OpenTextFile(strFile,ForReading)
do while not objStream.AtEndOfStream
	Response.Write objStream.ReadLine
	Response.Write "<BR>" 
loop
Response.Write "============================<BR>" 
objStream.Close

set objStream=objFSO.OpenTextFile(strFile,ForReading)
Response.Write objStream.ReadAll()

objStream.Close
set objStream=nothing
set objFSO=nothing
%>
</BODY>
</HTML>

