<%@ Language=VBScript %>
<HTML>
<HEAD>
<META name=VI60_defaultClientScript content=VBScript>
</HEAD>
<FORM name=form1 action=Example105.asp method=post>
<BODY>
<P>±íÃû:</P>
<P>
<%
	const adInteger=3
	dim strTable,strAction
	strTable=Request.Form("text1")
	strAction=Request.Form("Add")
%>
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
	dim table 
	set table=server.CreateObject("adox.table") 
%>

<%
	if strTable<>"" and strAction="Add" then
		table.Name=strTable 
		table.Columns.Append "field1",adInteger
		catalog.Tables.Append table
	elseif strTable<>"" and strAction<>"Add" then
		catalog.Tables.Delete strTable 
	end if

	dim i
%>
<SELECT style="WIDTH: 125px; HEIGHT: 163px" size=2 name=select1> 
	<%
	cnn.Close 
	cnn.Open 
	catalog.ActiveConnection=cnn 
	for i=0 to catalog.Tables.Count-1 step 1
		if catalog.Tables(i).Type="TABLE" then  
	%>
	<OPTION>
			<%= catalog.Tables(i).Name %>
	</OPTION>
	<%
		end if
	next
	
	cnn.Close
	set cnn=nothing 
%>
</SELECT> </P>
<P>
<INPUT size=10 name=text1>
<INPUT type=Submit value=Add name=Add>
<INPUT type=Submit value=Delete name=Delete>
</P>
</FORM>
</BODY>
</HTML>

