<%@ Import Namespace="System.Web.Security" %>
<html>
	<head>
		<script language="VB" runat="server"> 
		Sub encryptString(sender As Object, e As EventArgs)
			'�ڷ������˶Կͻ��˵�����ť����Ϊ������Ӧ
��			SHA1.Text = _
��			           FormsAuthentication.HashPasswordForStoringInConfigFile _
��			           (txtPassword.Text,"MD5")
		End Sub
		</script>
	</head>
	<body>
		<form runat="server" ID="Form1">
			<p>
				<asp:Textbox id="txtPassword" runat="server" />
				<asp:Button runat="server" text="Encrypt String" onClick="encryptString" ID="Button1" />
			</p>
			<p>
				<b>Encrypted Password In MD5: </b>
				<asp:label id="SHA1" runat="server" />
			</p>
		</form>
	</body>
</html>

