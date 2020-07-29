<HTML>
	<HEAD>
		<title></title>
	</HEAD>
	<script language="vb" runat="server">
		Private Sub ImageButton1_Click _
					(	ByVal sender As System.Object, _
						ByVal e As System.Web.UI.ImageClickEventArgs _
					) 
			Dim msg As String = ""
			Dim x As Integer = e.X
			Dim y As Integer = e.Y

			If x <= 50 And y <= 50 Then
				msg = "小型绿色植物"
			ElseIf x >= 100 And y <= 50 Then
				msg = "大型绿色植物"
			ElseIf (x > 50 And x < 200) And _
				(y >= 50 And y < 200) Then
				msg = "餐桌"
			End If
			Label1.Text = msg
		End Sub

	</script>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:ImageButton id="ImageButton1" ImageUrl="./images/ImageButton.gif" runat="server" OnClick="ImageButton1_Click" Height="200px" Width="274px"></asp:ImageButton>
			<p>
			</p>
			<asp:Label id="Label1" runat="server">Label
        </asp:Label>
		</form>
	</body>
</HTML>

