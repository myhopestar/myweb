<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>���籭ͶƱϵͳ-�鿴ͶƱ���</title>
<link href="css/worldcup.css" type="text/css" rel="stylesheet" />
</head>

<body>
<div id="container">
	<div id="head">
		<!--#include file=conn.asp-->
		<%
		set rs=server.CreateObject("adodb.recordset")
		rs.open "select * from vote",conn,adopenforwardonly
		do while not rs.eof
		zsum=zsum+rs("sum")
		rs.movenext
		loop
		rs.movefirst
		%>
		<%=top%>
		<ul id="nav">
		<li><a href="index.asp">ϵͳ��ҳ</a></li>
        <li><a href="result.asp">ͶƱ��ѯ</a></li>
        <li><a href="about.asp">ϵͳ˵��</a></li>
        <li><a href="login.asp">��̨��¼</a></li>
    	</ul>	
	</div>
	<div id="body">
		<hr />
		<h2 align=center><a href="chart.asp" target="_blank">����˴��鿴���ӵ�Ʊ��ͼ��</a></h2>
		<hr />
		<div id="words">
		<table align="center" border="0" width="900">
			<tr>
				<th width="33%" align="center">����</th>
				<th width="33%" align="center">��Ʊ��</th>
				<th width="34%" align="center">ռ�ٷֱ�</th>
			</tr>
			<%
			do while not rs.eof
			bfb=rs("sum")/zsum * 100
			if mid(bfb,1,1)="." then bfb="0" & bfb
			response.Write("<tr><td align=center>" & rs("username") & "</td><td align=center>" & rs("sum") & "</td><td align=center><font 						color=#FF0000>" & clng(bfb) & "</font></td></tr>")
			rs.movenext
			loop
			%>
		</table>
		</div>
	</div>
	<div id="footer">
		<%=bottom%>
	</div>
</div>

<div id="backgound">
	<!--#include file="background.html" -->
</div>

</body>
</html>
<%response.write "<!-- " %>