<HTML>
	<HEAD>
		<script language="VB" runat="server">
        Sub Button1_Click(sender As Object, e As EventArgs)
           CompareValDate.Validate()
           If (Not CompareValDate.IsValid) Then
               Label1.Text  =CompareValDate.ErrorMessage
           End If
        End Sub

		</script>
	</HEAD>
	<body>
		<p>
			<form runat="server" ID="Form1">
				��������:<br>
				<asp:TextBox id="txtComp1" runat="server" />
				<asp:CompareValidator id="CompareValDate" runat="server" ErrorMessage="��������ݲ��ǿ���ʶ������ڸ�ʽ" ControlToValidate="txtComp1" Type="Date" Operator="DataTypeCheck" EnableClientScript="False">
				*
				</asp:CompareValidator>
				<asp:Label id="Label1" runat="server" /><br>
				<asp:Button Text="��֤" ID="Button1" onclick="Button1_Click" runat="server" />
				<br>
			</form>
		</p>
	</body>
</HTML>

