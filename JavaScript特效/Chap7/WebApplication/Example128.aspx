<%@ Page %>
<HTML>
	<HEAD>
		<script language="VB" runat="server">

       Sub Button1_OnClick(sender As Object, e As EventArgs)
	   '�ڷ������˶Կͻ��˵�����ť����Ϊ������Ӧ
          Span1.InnerHtml="�������� Button1"
       End Sub
       
		</script>
	</HEAD>
	<body>
		<form runat="server" ID="Form1">
			<P>
				<button id="Button1" onServerClick="Button1_OnClick" style="BORDER-LEFT-COLOR: black; BORDER-BOTTOM-COLOR: black; FONT: 9pt ����; WIDTH: 100px; BORDER-TOP-COLOR: black; HEIGHT: 30px; BACKGROUND-COLOR: lightgreen; BORDER-RIGHT-COLOR: black" runat="server" type="button">
				   <img src="./images/right.gif"> �뵥���ң�
            </button>
				&nbsp;</P>
			<P>����Ƕ��� &lt;img&gt; ���
			</P>
			<span id="Span1" runat="server">
				<FONT face="����"></FONT>
			</span>
		</form>
	</body>
</HTML>

