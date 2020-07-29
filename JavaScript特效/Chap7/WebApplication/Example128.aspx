<%@ Page %>
<HTML>
	<HEAD>
		<script language="VB" runat="server">

       Sub Button1_OnClick(sender As Object, e As EventArgs)
	   '在服务器端对客户端单击按钮的行为做出响应
          Span1.InnerHtml="您单击了 Button1"
       End Sub
       
		</script>
	</HEAD>
	<body>
		<form runat="server" ID="Form1">
			<P>
				<button id="Button1" onServerClick="Button1_OnClick" style="BORDER-LEFT-COLOR: black; BORDER-BOTTOM-COLOR: black; FONT: 9pt 宋体; WIDTH: 100px; BORDER-TOP-COLOR: black; HEIGHT: 30px; BACKGROUND-COLOR: lightgreen; BORDER-RIGHT-COLOR: black" runat="server" type="button">
				   <img src="./images/right.gif"> 请单击我！
            </button>
				&nbsp;</P>
			<P>具有嵌入的 &lt;img&gt; 标记
			</P>
			<span id="Span1" runat="server">
				<FONT face="宋体"></FONT>
			</span>
		</form>
	</body>
</HTML>

