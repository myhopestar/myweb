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
    <h2>ҳ�沼��</h2>
    <a href="../login.asp?msg=userexit">
      �˳�����
    </a>
  </div>
<br />
<br />
<!--#include file="conn.asp" -->
<!--#include file=cookies.asp-->
<%
msg=request("msg")
if msg="save" then response.Write("<div align=center><font color=#FF0000 size=4><b>ҳ�沼���޸ĳɹ�!</b></font></div>")
set rs2=server.CreateObject("adodb.recordset")
rs2.open "select * from html",conn,1,1
top=rs2("top")
bottom=rs2("bottom")
rs2.close
%>
<table align="center" border="0" width="968px">
<tr>
<td><div align="center"><form method="post" action="savehtml.asp">
	ͷ��HTML��<br /><textarea name="top" cols="100%" rows="8"><%=top%></textarea><br />
	�ײ�HTML��<br /><textarea name="bottom" cols="100%" rows="8"><%=bottom%></textarea><br />
	<input type="submit" value="����" /></form></div>
</td>
</tr>
</table>
	
</main>
</body>
</html>
<%response.write "<!-- " %>