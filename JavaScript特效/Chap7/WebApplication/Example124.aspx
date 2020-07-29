<%@ Page %>
<html>
	<head>
		<script language="VB" runat="server">

        Sub Page_Load(sender As Object, e As EventArgs) 
        
            Dim numlabels as Integer
            '声明变量存储所需的标签数目
            Dim numtexts as Integer
            '声明变量存储所需的文本框数目
            Dim i as Integer
        
            If Check1.Checked Then
                Panel1.Visible = False
            Else
                Panel1.Visible = True
            End If
            '显示/隐藏面板内容

            numlabels = CInt(DropDown1.SelectedItem.Value)
            For i = 1 To numlabels
                Dim objLabel As Label = New Label()
                objLabel.Text = "标签" & i
                objLabel.ID = "Label" & i
                Panel1.Controls.Add(objLabel)
                Panel1.Controls.Add(new LiteralControl("<br>"))
            Next
            '生成标签控件

            numtexts = CInt(DropDown2.SelectedItem.Value)
            For i = 1 To numtexts
                Dim objText As TextBox = New TextBox()
                objText.Text = "文本框" & i
                objText.ID = "TextBox" & i
                Panel1.Controls.Add(objText)
                Panel1.Controls.Add(new LiteralControl("<br>"))
            Next
            '生成文本框控件
        End Sub

		</script>
	</head>
	<body>
		<h3><font face="宋体">Panel控件</font></h3>
		<form runat="server" ID="Form1">
			<asp:Panel id="Panel1" runat="server" BackColor="gainsboro" Height="200px" Width="300px">

            面板 
<P>

        </asp:Panel></P> 选择标签的数目：
			<asp:DropDownList id="DropDown1" runat="server">
				<asp:ListItem Value="0">0</asp:ListItem>
				<asp:ListItem Value="1">1</asp:ListItem>
				<asp:ListItem Value="2">2</asp:ListItem>
				<asp:ListItem Value="3">3</asp:ListItem>
			</asp:DropDownList>
			<br>
			选择文本框的数目：
			<asp:DropDownList id="DropDown2" runat="server">
				<asp:ListItem Value="0">0</asp:ListItem>
				<asp:ListItem Value="1">1</asp:ListItem>
				<asp:ListItem Value="2">2</asp:ListItem>
				<asp:ListItem Value="3">3</asp:ListItem>
			</asp:DropDownList><br>
			<p>
				<asp:CheckBox id="Check1" Text="隐藏面板" runat="server" />
			</p>
			<asp:Button Text="刷新面板" runat="server" ID="Button1" /></FONT>
		</form>
		<P></P>
	</body>
</html>

