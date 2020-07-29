<%@ Language=VBScript %>
<HTML>
<HEAD>
<META name=VI60_defaultClientScript content=VBScript>
</HEAD>
<FORM name=form1 action=Example106.asp method=post>
<BODY>
<P>
<%
	const adInteger=3
	const adNumeric=131 
	
	dim strField,strSymbol,strValue
	strField=Request.Form("Field")
	strSymbol=Request.Form("Symbol")
	strValue=Request.Form("Value")

	dim cnn
	set cnn=server.CreateObject("adodb.connection")
	cnn.ConnectionString=	"Provider=SQLOLEDB.1;"& _
							"User ID=sa;PWD=password;" & _
							"Initial Catalog=pubs;Data Source=wxj"
	cnn.Open 


	dim rs
	set rs=server.CreateObject("adodb.recordset")
	rs.ActiveConnection=cnn
	rs.Open "select * from titleauthor"
	
	dim field
	dim i,j
	dim strSQL
	
	if strValue<>"" then
		rs.Close 
		for i=0 to rs.Fields.Count-1 
			if rs.Fields(i).Name=strField then
				if rs.Fields(i).Type=adInteger or rs.Fields(i).Type=adNumeric then
					strSQL="select * from titleauthor where " & strField & _
															strSymbol & strValue
				else
					strSQL="select * from titleauthor where " & strField & _
													strSymbol & "'" & strValue & "'"
				end if
			end if  
		next
		rs.Open strSQL  
	end if
%>

<SELECT name=field> 
	<%
	for i=0 to rs.Fields.Count-1 step 1
	%>
	<OPTION>
			<%= rs.Fields(i).Name %>
	</OPTION>
	<%
	next
	
%>
</SELECT>

<SELECT name=symbol> 
<OPTION selected>=</OPTION>
<OPTION>></OPTION>
<OPTION>>=</OPTION>
<OPTION><</OPTION>
<OPTION><=</OPTION>
<OPTION>!=</OPTION>
</SELECT>&nbsp;

<INPUT size=15 name=value>
<INPUT type=submit value=Search name=submit1></P>

<%
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
		Response.Write "</tr>" 
		rs.MoveNext 
	loop
	Response.Write "</table>"
	
	cnn.Close
	set cnn=nothing 
%>
</FORM>
</BODY>
</HTML>

