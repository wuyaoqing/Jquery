<%@ Page codePage="936" %>
<%@ Import Namespace="System.Web.UI.HtmlControls" %>
<HTML>
	<script language="VB" runat="server">
    Sub Page_Load(Sender As Object, E As EventArgs)
        Dim i,num as integer
        num=Request.Params("num")
        For i=1 to num
            Dim clicker As HtmlButton = New HtmlButton()
            clicker.InnerText = "��ť" & i.tostring()
            Bullseye.Controls.Add(clicker)
        Next
    End Sub
	</script>
	<body>
		<h3>ռλ��ʾ��</h3>
		<asp:PlaceHolder id="Bullseye" runat="server" />
		</asp>
	</body>
</HTML>

