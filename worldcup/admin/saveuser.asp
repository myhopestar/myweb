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
    <h2>�޸�����</h2>
    <a href="../login.asp?msg=userexit">
      �˳�����
    </a>
  </div>
<!--#include file="conn.asp" -->
<!--#include file=cookies.asp-->
<%
username=request("username")
password=request("newpassword")
if username="" or password="" then response.Redirect("edituser.asp?Msg=err") : response.End() '����û���������ĺϷ���
'�������
mm=""
for i = 1 to len(password)
mm=mm & (asc(mid(password,i,1))+3)
next
'�������ݿ�
set rs=server.createobject("adodb.recordset")
sql="select * from admin where id=1" 
rs.open sql,conn,1,3
rs("username")=username
rs("password")=mm
rs.update
rs.close
set rs=nothing
%>
<table width='968px' border='0' align='center'>
  <tr>
    <td>
	  <p>&nbsp;</p>
	  <p align="center"><%=username%>�����޸ĳɹ�,�����µ�¼<br />
      <a href="../login.asp?msg=edituser" target="_parent">ȷ��</a></p>
    <p>&nbsp;          </p></td>
  </tr>
</table>
</main>
</body>
</html>
<%response.write "<!-- " %>