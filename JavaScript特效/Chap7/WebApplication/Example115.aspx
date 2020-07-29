<%@ Page %>
<HTML>
	<HEAD>
		<title></title>
		<SCRIPT language="vb" runat="server">
	 Private Sub CheckBox1_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs)
       If CheckBox1.Checked Then
            Xml1.TransformSource = "email_headers.xslt"
        Else
            Xml1.TransformSource = "email_all.xslt"
        End If

    End Sub
		</SCRIPT>
	</HEAD>
	<body>
		<form id="Form2" method="post" runat="server">
			<p><asp:checkbox id="CheckBox1" runat="server" Text="只显示邮件头" OnCheckedChanged="CheckBox1_CheckedChanged" AutoPostBack="True" Checked="True"></asp:checkbox></p>
			<asp:Xml id="Xml1" runat="server" DocumentSource="Emails.xml" TransformSource="Email_headers.xslt"></asp:Xml></form>
	</body>
</HTML>

