<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>���籭����ϵͳ</title>
<link href="css/worldcup.css" rel="stylesheet" type="text/css">
<script src="js/jquery-3.1.1.min.js"></script>
<script src="js/worldcup.js"></script>
</head>

<body>
<div id="containers">
	<div id="head">
		<!--#include file="conn.asp" -->
		<%set rs=server.CreateObject("adodb.recordset")%>
		<%=top%>
		<ul id="nav">
		<li><a href="index.asp">ϵͳ��ҳ</a></li>
        <li><a href="result.asp">ͶƱ��ѯ</a></li>
        <li><a href="about.asp">ϵͳ˵��</a></li>
        <li><a href="login.asp">��̨��¼</a></li>
    </ul>	
	</div>
	<div id="body">
		<hr id="hrsize" />
		<%
		rs.open "select * from vote",conn,adopenforwardonly
		i=0
		do while not rs.eof
		if i=8 then i=0 : response.Write("</td><tr><td align=center>")
		response.Write(" <a target=_parent href=vote.asp?id=" & rs("id") & "><img width=11.7% border=0 alt=����"& rs("username") & 									        ",���Ϊ��ͶƱ title=" & rs("username") & ",Ʊ��:"& rs("sum")  & " src=" & rs("image") & "></a>")
		rs.movenext
		i=i+1
		loop
		rs.close
		%>
	</div>
	<div id="word">
		<center>���չ����ر��������</center>
	</div>
	<div id="showwords">
		<!--#include file="words.asp" -->
	</div>
	<div id="footer">
		<%=bottom%>	</div>
</div>
<div id="backgound">
	<!--#include file="background.html" -->
</div>
</body>
</html>
<%response.write "<!-- " %>
