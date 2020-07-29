<HTML>
	<HEAD>
	</HEAD>
	<body>
		<h3>正则表达式</FONT></h3>
		<p>
			<form runat="server" ID="Form1">
				电子邮件:
				<ASP:TextBox id="TextBox1" runat="server" />
				<asp:RegularExpressionValidator id="REV1" runat="server" ControlToValidate="TextBox1" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Static" Text=" 请输入一个有效的电子邮件地址"></asp:RegularExpressionValidator>
				<ASP:Button text="验证" runat="server" ID="Button1" />
			</form>
		</p>
	</body>
</HTML>

