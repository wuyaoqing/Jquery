<%@ Page clienttarget=downlevel %>
<HTML>
	<HEAD>
		<script language="VB" runat="server">
        Sub Button1_Click(sender As Object, e As EventArgs)
           rangeValDate.Validate()
           If (rangeValDate.IsValid) Then
               Label1.Text ="输入的日期有效！"
           Else
               Label1.Text =rangeValDate.ErrorMessage
           End If
        End Sub

		</script>
	</HEAD>
	<body>
		<p>
			<form runat="server" ID="Form1">
				出生日期:<br>
				<asp:TextBox id="txtComp1" runat="server" />
				<asp:RangeValidator id="rangeValDate" Type="Date" 
				                    ControlToValidate="txtComp1" 
				                    MaximumValue="2004/1/1" 
				                    MinimumValue="1900/1/1" 
				                    runat="server" 
				                    ErrorMessage="日期错误！">
				*</asp:RangeValidator>
				<asp:Label id="Label1" runat="server" /><br>
				<asp:Button Text="验证" ID="Button1" 
				            onclick="Button1_Click" runat="server" />
				<br>
			</form>
		</p>
	</body>
</HTML>

