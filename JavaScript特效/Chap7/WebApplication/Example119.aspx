<HTML>
	<HEAD>
	</HEAD>
	<body>
		<form id="Form1" runat="server">
			<asp:label id="lblOutput" runat="server" 
			           Font-Size="10" Font-Name="����" 
			           ForeColor="red" 
			           Text="����д����ı����ֶ�">
			</asp:label><br>
			���ţ�
			<ASP:TEXTBOX id="TextBox1" runat="server">
			</ASP:TEXTBOX>
			<asp:requiredfieldvalidator id="RequiredFieldValidator1" 
			                            runat="server" 
			                            ControlToValidate="TextBox1">
			*</asp:requiredfieldvalidator>
		</form>
	</body>
</HTML>

