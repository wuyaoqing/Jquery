<%@ Language=VBScript %>
<HTML>
<HEAD>
</HEAD>
<BODY>
<FORM method=post name=form1 action=Example108.asp?action=y>
<%
dim choice
if Request.QueryString("action")="y" then
	call SetCookie
	Response.Write "Ñ¡ÔñµÄÊÇ:" & Request.Form("radio") 
	Response.End 
else
	call GetCookie
end if 

sub GetCookie
	choice=Request.Cookies("choice") 	
end sub

sub SetCookie
	Response.Cookies("choice")=Request.Form("radio")
	Response.Cookies("choice").Expires=DateAdd("m",2,Date) 
end sub
%>
<P><INPUT type=radio name=radio value=1
	<%
		Response.Write choice
		if choice=1 then
			Response.Write " checked"
		end if
	%>>1</P>
<P><INPUT type=radio name=radio value=2
	<%
		if choice=2 then
			Response.Write " checked"
		end if
	%>>2</P>
<P><INPUT type=radio name=radio value=3
	<%
		if choice=3 then
			Response.Write " checked"
		end if
	%>>3</P>
<P>
<INPUT id=submit1 type=submit value=Submit name=submit1></P>
</FORM>
</BODY>
</HTML>

