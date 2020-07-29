<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.IO" %>
<HTML>
  <script language="VB" runat="server">
    Sub Page_Load(Sender As Object, E As EventArgs)
        Dim DS As New DataSet
        Dim FS As FileStream
        Dim Reader As StreamReader
        '声明所需变量
        FS = New FileStream(Server.MapPath("Authors.xml"), FileMode.Open,FileAccess.Read)
        Reader = New StreamReader(FS)
        DS.ReadXml(Reader)
        FS.Close()
        '---------将XML文件读入到数据集-------------
        Dim Source As DataView
        Source = new DataView(ds.Tables(0))
        '---------根据DataSet对象创建DataView----------
        MyLiteral.Text = Source.Table.TableName
        '---------显示表名--------------------------
        MyDataGrid.DataSource = Source
        MyDataGrid.DataBind()
        '--------在DataGrid控件中显示XML数据--------
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

