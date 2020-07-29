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
set objStream=objFSO.OpenTextFile(strFile,ForWriting,true)
objStream.Write("Hello")
objStream.WriteLine("Hello")
objStream.Close
set objStream=nothing

set objStream=objFSO.OpenTextFile(strFile,ForAppending,false) 
objStream.WriteLine("Test")

objStream.Close
set objStream=nothing
set objFSO=nothing
%>
</BODY>
</HTML>

