<%@ Language=VBScript %>
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
</HEAD>
<BODY>

<P>&nbsp;</P>
<%
	dim cnn,rs
	set cnn=server.CreateObject("adodb.connection")
	cnn.ConnectionString=	"Provider=SQLOLEDB.1;"& _
							"User ID=sa;PWD=password;" & _
							"Initial Catalog=pubs;Data Source=wxj"
	cnn.Open 
	set rs=server.CreateObject("adodb.recordset")
	rs.ActiveConnection=cnn
	rs.Open "select * from titleauthor"
	   
	dim i,j
	i=0
	Response.Write "<table border=1>"

	Response.Write "<tr>"
	for j=0 to rs.Fields.Count-1 step 1
		Response.Write "<td>"
		Response.Write rs.Fields(j).Name 
		Response.Write "</td>"
	next  
	Response.Write "</tr>" 
	
	do while not rs.EOF 
		Response.Write "<tr>"
		for j=0 to rs.Fields.Count-1 step 1
			Response.Write "<td>"
			if rs.Fields(j)="" then
				Response.Write " "
			else
				Response.Write rs.Fields(j)
			end if	
			Response.Write "</td>"
		next  
		i=i+1
		Response.Write "</tr>" 
		rs.MoveNext 
	loop
	Response.Write "</table>"
%>
</BODY>
</HTML>

