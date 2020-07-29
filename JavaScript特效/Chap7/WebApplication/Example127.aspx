<HTML>
	<HEAD>
		<title>Adrotator Web·þÎñÆ÷¿Ø¼þ</title>
	</HEAD>
	<script language="vb" runat="server">
	    Private Sub AdCreated(ByVal sender As System.Object, _
	                ByVal e As System.Web.UI.WebControls.AdCreatedEventArgs)
        e.ImageUrl = "images/banner2.gif"
        e.NavigateUrl = "http://www.phei.com.cn"
        e.AlternateText = "Phei"
    End Sub
	</script>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:AdRotator id="AdRotator1" runat="server" 
			               onAdCreated="AdCreated" Width="468px" 
			               Height="60px">
			 </asp:AdRotator></TD>
		</form>
	</body>
</HTML>

