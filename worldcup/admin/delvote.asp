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
<!--#include file="conn.asp" -->
<!--#include file=cookies.asp-->
<br />
<br />
<%
id=request("id")
if len(id)=0 then response.Write("<div align=center><br><br>��Ӳ鿴��Ŀ�����Ҫ��ɾ������Ŀ������,Ȼ����ɾ��!<br><a href=main.asp>ȷ��</a></div>") : response.End()
set rs=server.CreateObject("adodb.recordset")
rs.open "select * from vote where id=" & id,conn,1,3
username=rs("username")
rs.delete
rs.close
response.Write("<div align=center><br><br>ɾ�� " & username & " ��Ŀ�ɹ�!<br><a href=main.asp>ȷ��</a></div>")
%>
</main>
</body>
</html>
<%response.write "<!-- " %>