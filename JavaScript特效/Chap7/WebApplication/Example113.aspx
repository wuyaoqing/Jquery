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
           '�����û������붨�岢��ʼ��SqlConnection��SqlDataAdapter����
           DS = New DataSet()
           MyCommand.Fill(DS, "��")
           'ʹ��SQL����������ݼ�
           DS.WriteXmlSchema(Server.MapPath("1.xml"))
           DS.WriteXml(Server.MapPath("2.xml"))
           '�����ݼ���XML����д��2.xml
           '��XML�ܹ�д��1.xml
           DS.Clear
           '---------������ݼ��е�����--------------
           Dim FS As FileStream
           Dim Schema, Reader As StreamReader
           FS = New FileStream(Server.MapPath("2.xml"), _
               FileMode.Open,FileAccess.Read)
           Reader = New StreamReader(FS)
           DS.ReadXml(Reader)
           FS.Close
           '--------------��2.xml�������ݼ�--------------
           FS = New FileStream(Server.MapPath("1.xml"), _
                FileMode.Open,FileAccess.Read)
           Schema = New StreamReader(FS)
           DS.ReadXmlSchema(Schema)
           '��1.xml�������ݼ�
           FS.Close
           Source = New DataView(DS.Tables(0))
           '������ݼ�������DataView����
           MyDataGrid.DataSource=Source
           MyDataGrid.DataBind()
           'ΪDataGrid�ؼ�������
         End If
      End Sub
		</script>
	</HEAD>
	<body>
		<form id="Form1" runat="server">
			<P><b>�����ַ���:</b><br>
				<input id="ConnectString" type="text" size="43" value="���������������ַ���" name="ConnectString" runat="server"><br>
				<b>��ѯ:</b><br>
				<input id="myText" type="text" size="23" value="SELECT * FROM Jobs" name="myText" runat="server">
				<input id="Submit1" type="submit" value="�ύ��ѯ����" name="Submit1" runat="server" OnServerClick="Submit_Click"><br>
				<b>���ݣ�</b><br>
				<ASP:DATAGRID id="MyDataGrid" runat="server" EnableViewState="False" HeaderStyle-BackColor="#DC6035"></ASP:DATAGRID></P>
		</form>
	</body>
</HTML>

