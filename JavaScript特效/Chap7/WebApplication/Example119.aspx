<HTML>
	<HEAD>
	</HEAD>
	<body>
		<form id="Form1" runat="server">
			<asp:label id="lblOutput" runat="server" 
			           Font-Size="10" Font-Name="宋体" 
			           ForeColor="red" 
			           Text="请填写下面的必需字段">
			</asp:label><br>
			卡号：
			<ASP:TEXTBOX id="TextBox1" runat="server">
			</ASP:TEXTBOX>
			<asp:requiredfieldvalidator id="RequiredFieldValidator1" 
			                            runat="server" 
			                            ControlToValidate="TextBox1">
			*</asp:requiredfieldvalidator>
		</form>
	</body>
</HTML>

