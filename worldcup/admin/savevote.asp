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
<%
id=request("id")
username=request("username")
sum=request("sum")
description1=request("description1")
image=request("image")
set rs=server.CreateObject("adodb.recordset")
if  username="" then response.Write("<div align=center><br><br>����������!<br><a href=javascript:history.go(-1)>����</a></div>") : response.End()
if len(id)>0 then 
rs.open "select * from vote where id=" & id,conn,1,3
rs("username")=username
rs("sum")=sum
rs("description")=description1
rs("image")=image
else
rs.open "select * from vote where id is null",conn,1,3
rs.addnew array("username","sum","description","image"),array(username,sum,description1,image) 
end if
rs.update
rs.close
response.Write("<div align=center><br><br>" & username & "��Ϣ����ɹ�!<br><a href=main.asp>ȷ��</a></div>")
%>
</main>
</body>
</html>
<%response.write "<!-- " %>