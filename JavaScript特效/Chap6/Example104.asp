<%@ Language=VBScript %>
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
</HEAD>
<BODY>

<%
	dim cnn
	set cnn=server.CreateObject("adodb.connection")
	cnn.ConnectionString=	"Provider=SQLOLEDB.1;"& _
							"User ID=sa;PWD=password;" & _
							"Initial Catalog=pubs;Data Source=wxj"
	cnn.Open 

	dim catalog
	set catalog=server.CreateObject("adox.catalog")
	catalog.ActiveConnection=cnn

	dim i
	Response.Write "<table border=1>"
	Response.Write "<tr>"
	Response.Write "<td>"
	Response.Write "±Ì√˚" 
	Response.Write "</td>"
	Response.Write "<td>"
	Response.Write " Ù–‘" 
	Response.Write "</td>"
	Response.Write "</tr>" 

	for i=0 to catalog.Tables.Count-1 step 1
		Response.Write "<tr>"
		Response.Write "<td>"
		Response.Write catalog.Tables(i).Name  
		Response.Write "</td>"
		Response.Write "<td>"
		Response.Write catalog.Tables(i).Type    
		Response.Write "</td>"
		Response.Write "</tr>" 
	next
	
	Response.Write "</table>"
%>
</BODY>
</HTML>

