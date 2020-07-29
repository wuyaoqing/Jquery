<%@ Page %>
<html>
	<head>
		<title></title>
		<Script language="vb" runat="server">
		Private Sub Page_Load(ByVal sender As Object, _
			ByVal e As EventArgs)
			Dim doc As System.Xml.XmlDocument = New System.Xml.XmlDocument()
			doc.Load(Server.MapPath("Emails.xml"))
			Dim trans As System.Xml.Xsl.XslTransform = _
			New System.Xml.Xsl.XslTransform
			trans.Load(Server.MapPath("Email_headers.xslt"))
			Xml1.Document = doc
			Xml1.Transform = trans
End Sub
		</Script>
	</head>
	<body>
		<asp:Xml id="Xml1" runat="server"></asp:Xml>
	</body>
</html>

