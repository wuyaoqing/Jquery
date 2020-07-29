<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.IO" %>
<HTML>
  <script language="VB" runat="server">
    Sub Page_Load(Sender As Object, E As EventArgs)
        Dim DS As New DataSet
        Dim FS As FileStream
        Dim Reader As StreamReader
        '�����������
        FS = New FileStream(Server.MapPath("Authors.xml"), FileMode.Open,FileAccess.Read)
        Reader = New StreamReader(FS)
        DS.ReadXml(Reader)
        FS.Close()
        '---------��XML�ļ����뵽���ݼ�-------------
        Dim Source As DataView
        Source = new DataView(ds.Tables(0))
        '---------����DataSet���󴴽�DataView----------
        MyLiteral.Text = Source.Table.TableName
        '---------��ʾ����--------------------------
        MyDataGrid.DataSource = Source
        MyDataGrid.DataBind()
        '--------��DataGrid�ؼ�����ʾXML����--------
    End Sub
  </script>
  <body>
    <h3><asp:Literal id="MyLiteral" runat="server" /></h3>
    <ASP:DataGrid id="MyDataGrid" 
         runat="server" 
         HeaderStyle-BackColor="#aaaadd" 
         EnableViewState="False" />
  </body>
</HTML>

