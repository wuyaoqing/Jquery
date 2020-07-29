<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Data" %>
<HTML>
  <script language="VB" runat="server">
    Sub Page_Load(Sender As Object, E As EventArgs)
        Dim DS As New DataSet
        Dim FS As FileStream
        Dim Schema, Reader As StreamReader
        Dim swXML As New StringWriter()
        FS = New FileStream(Server.MapPath("Authors.xml"), _
            FileMode.Open,FileAccess.Read)
        Reader = New StreamReader(FS)
        DS.ReadXml(Reader)
        FS.Close()
        DS.WriteXmlSchema(swXML)
        TextBox1.Text = swXML.ToString
    End Sub
  </script>
  <body>
    <form id="Form1" runat="server">
      <asp:TextBox id="TextBox1" runat="server" 
          TextMode="MultiLine" Width=350 Height=160>
      </asp:TextBox>
    </form>
  </body>
</HTML>

