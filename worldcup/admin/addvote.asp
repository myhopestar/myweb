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
    <h2>������</h2>
    <a href="../login.asp?msg=userexit">
      �˳�����
    </a>
  </div>
<br />
<br />
<!--#include file="conn.asp" -->
<!--#include file=cookies.asp-->
<%
id=request("id")
sum=0
if len(id)>0 then 
set rs=server.CreateObject("adodb.recordset")
rs.open "select * from vote where id=" & id,conn,1,3
username=rs("username")
sum=rs("sum")
description1=rs("description")
image=rs("image")
rs.close
end if
%>
<div align="center">
	<form method="post" action="savevote.asp">
	����:
	<input type="text" name="username" value="<%=username%>" />(����)<br />
	Ʊ��:
	<input type="text" name="sum" value="<%=sum%>" />(����)<br />
	ͼƬ:
	<input type="text" name="image" value="<%=image%>" />(<a style="display:inline" href="upload.asp" target="_blank">�ϴ�</a>)<br />
	<input type="text" name="id" style="visibility:hidden" value="<%=id%>" /><br />
	��ϸ����:(�˴�Ϊhtml����,���ú������ƣ�username������Ʊ����sum����ͼƬ��image��)<br />
	<textarea name="description1" cols="100%" rows="20"><%=description1%></textarea><br />
	<input type="submit" value="����" /> <a href="delvote.asp?id=<%=id%>" title="������ȷ��,�����ʹ��!">ɾ��</a>
	</form>
</div>
</main>
</body>
</html>
<%response.write "<!-- " %>