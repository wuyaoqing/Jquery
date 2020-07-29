<%@ Language=VBScript%>
<HTML>
<HEAD>
<TITLE></TITLE>
</HEAD>
<BODY>
<%
	dim username,password
	username=Request.Form("username")
	password=Request.Form("pwd")
	'取得客户信息，存储在变量中
	if username<>"" and password<>"" then
		if username="sa" and  password="pass" then
			Response.Write "欢迎登录"
			Response.End 
		else 
			Response.Write "请输入正确的登录信息"
		end if
	end if
	%>
	<FORM action="Example093.asp" method=post name=form1>
	用户:<INPUT name=username height="20" width="10"> <BR>
    密码:<INPUT name=pwd type=password width="6"><BR>
	<INPUT id=submit1 name=submit1 type=submit value=提交信息>
</FORM>
</BODY>
</HTML>

