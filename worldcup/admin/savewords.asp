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
<%
on error resume next
id=request("id")
words=request("words")
set rs=server.CreateObject("adodb.recordset")
rs.open "select * from words where id=" & id,conn,1,3
if words="" then 
rs.delete
msg="ɾ��"
else
rs("words")=words
msg="�޸�"
end if
rs.update
rs.close
if err.number<>0 then response.Write("<div align=center>" & err.description & "<br><a href=# onclick=history.go(-1)>����</a></div>") :response.End()
response.Write("<div align=center>����" & msg &"�ɹ�!<br><a href=words.asp>ȷ��</a></div>")
%>
</main>
</body>
</html>
<%response.write "<!-- " %>