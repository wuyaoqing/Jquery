<%@ Page %>
<html>
	<head>
		<script language="VB" runat="server">

        Sub Page_Load(sender As Object, e As EventArgs) 
        
            Dim numlabels as Integer
            '���������洢����ı�ǩ��Ŀ
            Dim numtexts as Integer
            '���������洢������ı�����Ŀ
            Dim i as Integer
        
            If Check1.Checked Then
                Panel1.Visible = False
            Else
                Panel1.Visible = True
            End If
            '��ʾ/�����������

            numlabels = CInt(DropDown1.SelectedItem.Value)
            For i = 1 To numlabels
                Dim objLabel As Label = New Label()
                objLabel.Text = "��ǩ" & i
                objLabel.ID = "Label" & i
                Panel1.Controls.Add(objLabel)
                Panel1.Controls.Add(new LiteralControl("<br>"))
            Next
            '���ɱ�ǩ�ؼ�

            numtexts = CInt(DropDown2.SelectedItem.Value)
            For i = 1 To numtexts
                Dim objText As TextBox = New TextBox()
                objText.Text = "�ı���" & i
                objText.ID = "TextBox" & i
                Panel1.Controls.Add(objText)
                Panel1.Controls.Add(new LiteralControl("<br>"))
            Next
            '�����ı���ؼ�
        End Sub

		</script>
	</head>
	<body>
		<h3><font face="����">Panel�ؼ�</font></h3>
		<form runat="server" ID="Form1">
			<asp:Panel id="Panel1" runat="server" BackColor="gainsboro" Height="200px" Width="300px">

            ��� 
<P>

        </asp:Panel></P> ѡ���ǩ����Ŀ��
			<asp:DropDownList id="DropDown1" runat="server">
				<asp:ListItem Value="0">0</asp:ListItem>
				<asp:ListItem Value="1">1</asp:ListItem>
				<asp:ListItem Value="2">2</asp:ListItem>
				<asp:ListItem Value="3">3</asp:ListItem>
			</asp:DropDownList>
			<br>
			ѡ���ı������Ŀ��
			<asp:DropDownList id="DropDown2" runat="server">
				<asp:ListItem Value="0">0</asp:ListItem>
				<asp:ListItem Value="1">1</asp:ListItem>
				<asp:ListItem Value="2">2</asp:ListItem>
				<asp:ListItem Value="3">3</asp:ListItem>
			</asp:DropDownList><br>
			<p>
				<asp:CheckBox id="Check1" Text="�������" runat="server" />
			</p>
			<asp:Button Text="ˢ�����" runat="server" ID="Button1" /></FONT>
		</form>
		<P></P>
	</body>
</html>

