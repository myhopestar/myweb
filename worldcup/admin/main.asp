<!DOCTYPE html>
<html>
<head>
<title>���籭����ϵͳ-��̨����</title>
<link rel="stylesheet" href="../css/admin.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>

<body>
<span class='bckg'></span>
<header>
<h1>��̨����</h1>
  <nav>
    <ul>
      <li>
        <a href="main.asp">�༭���</a>      </li>
      <li>
        <a href="addvote.asp?id=">������</a>      </li>
      <li>
        <a href="html.asp">ҳ�沼��</a>      </li>
      <li>
        <a href="words.asp">���Թ���</a>      </li>
      <li>
        <a href="edituser.asp">�޸�����</a>      </li>
      <li>
        <a href="about.asp">����˵��</a>      </li>
    </ul>
  </nav>
</header>
<main>
  <div class='title'>
    <h2>�༭���</h2>
    <a href="../login.asp?msg=userexit">
      �˳�����
    </a>
  </div>
  
<br />
<br />  
<!--#include file="conn.asp" -->
<!--#include file=cookies.asp-->
			<%
			set rs=server.CreateObject("adodb.recordset")
			rs.open "select * from vote",conn,adopenforwardonly
			i=0
			do while not rs.eof
			i=i+1
			response.Write("<a href=addvote.asp?id=" & rs("id") & ">" & rs("username") & "</a>" & "	")
			rs.movenext
			loop
			%>
			<hr />
			<div align="center">����<font color="#FF0000"><%=i%></font>�����</div>
</main>
</body>
</html>
<%response.write "<!-- " %>