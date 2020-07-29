<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.IO" %>
<%@ Page %>
<HTML>
	<HEAD>
		<script language="VB" runat="server">
      Sub Submit_Click(Sender As Object, E As EventArgs)
         If (Page.IsPostBack)
           Dim MyConnection As SqlConnection
           Dim MyCommand As SqlDataAdapter
           Dim DS As DataSet
           Dim Source As DataView
           MyConnection = New SqlConnection(ConnectString.Value)
           MyCommand = New SqlDataAdapter(MyText.Value, MyConnection)
           '根据用户的输入定义并初始化SqlConnection和SqlDataAdapter对象
           DS = New DataSet()
           MyCommand.Fill(DS, "表")
           '使用SQL数据填充数据集
           DS.WriteXmlSchema(Server.MapPath("1.xml"))
           DS.WriteXml(Server.MapPath("2.xml"))
           '从数据集将XML数据写入2.xml
           '将XML架构写入1.xml
           DS.Clear
           '---------清除数据集中的数据--------------
           Dim FS As FileStream
           Dim Schema, Reader As StreamReader
           FS = New FileStream(Server.MapPath("2.xml"), _
               FileMode.Open,FileAccess.Read)
           Reader = New StreamReader(FS)
           DS.ReadXml(Reader)
           FS.Close
           '--------------将2.xml读入数据集--------------
           FS = New FileStream(Server.MapPath("1.xml"), _
                FileMode.Open,FileAccess.Read)
           Schema = New StreamReader(FS)
           DS.ReadXmlSchema(Schema)
           '将1.xml读入数据集
           FS.Close
           Source = New DataView(DS.Tables(0))
           '填充数据集并创建DataView对象
           MyDataGrid.DataSource=Source
           MyDataGrid.DataBind()
           '为DataGrid控件绑定数据
         End If
      End Sub
		</script>
	</HEAD>
	<body>
		<form id="Form1" runat="server">
			<P><b>连接字符串:</b><br>
				<input id="ConnectString" type="text" size="43" value="在这里输入链接字符串" name="ConnectString" runat="server"><br>
				<b>查询:</b><br>
				<input id="myText" type="text" size="23" value="SELECT * FROM Jobs" name="myText" runat="server">
				<input id="Submit1" type="submit" value="提交查询内容" name="Submit1" runat="server" OnServerClick="Submit_Click"><br>
				<b>数据：</b><br>
				<ASP:DATAGRID id="MyDataGrid" runat="server" EnableViewState="False" HeaderStyle-BackColor="#DC6035"></ASP:DATAGRID></P>
		</form>
	</body>
</HTML>

