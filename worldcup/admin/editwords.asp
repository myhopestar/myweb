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
    <h2>���Թ���</h2>
    <a href="../login.asp?msg=userexit">
      �˳�����
    </a>
  </div>
<!--#include file="conn.asp" -->
<!--#include file=cookies.asp-->
<br />
<br />
<%
id=request("id")
set rs=server.CreateObject("adodb.recordset")
rs.open "select * from words where id=" & id,conn,1,3
words=rs("words")
rs.close
%>
<table align="center" width="968px" border="0">
<tr>
	<td align="center">
		<form method="post" action="savewords.asp?id=<%=id%>">
		<textarea name="words" cols="100%" rows="20"><%=words%></textarea><br />
		ע:�������������Ϊɾ������!<br />
		<input type="submit" value="����" /></form>
	</td>
</tr>
</table>
</main>
</body>
</html>
<%response.write "<!-- " %>