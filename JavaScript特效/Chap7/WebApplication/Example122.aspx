<HTML>
	<HEAD>
	</HEAD>
	<body>
		<h3>������ʽ</FONT></h3>
		<p>
			<form runat="server" ID="Form1">
				�����ʼ�:
				<ASP:TextBox id="TextBox1" runat="server" />
				<asp:RegularExpressionValidator id="REV1" runat="server" ControlToValidate="TextBox1" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Static" Text=" ������һ����Ч�ĵ����ʼ���ַ"></asp:RegularExpressionValidator>
				<ASP:Button text="��֤" runat="server" ID="Button1" />
			</form>
		</p>
	</body>
</HTML>

