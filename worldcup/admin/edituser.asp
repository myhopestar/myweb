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
<!--#include file=cookies.asp-->
<%
msg=request("msg")
if msg="err" then response.Write("<div align=center>�û�����������������!</div>")
username=session("username")
%>
<table width='905' border='0' align='center'>
  <tr>
    <td>
	<form method="post" action="saveuser.asp">
	  <div align="center">
	    <p>&nbsp;</p>
	    <p>�û���:
	      <input type="text" name="username" value="<%=username%>" />
	        <br />
	      ������:
	      <input type="text" name="newpassword" value="" />
	      <br />
	      <input type="submit" value="�޸�" />
	      </p>
	    <p>&nbsp;</p>
	  </div>
	</form>
    </td>
  </tr>
</table>
</main>
</body>
</html>
<%response.write "<!-- " %>