<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>���籭����ϵͳ-�����¼</title>
<link href="css/worldcup.css" rel="stylesheet" type="text/css"  />
<script src="js/jquery-3.1.1.min.js"></script>
<script src="js/worldcup.js"></script>
</head>

<body>
<div id="containers">
	<div id="head">
		<!--#include file="conn.asp" -->
		<%set rs=server.CreateObject("adodb.recordset")%>
		<%=top%>
		<ul id="nav">
		<li><a href="index.asp">ϵͳ��ҳ</a></li>
        <li><a href="result.asp">ͶƱ��ѯ</a></li>
        <li><a href="about.asp">ϵͳ˵��</a></li>
        <li><a href="login.asp">��̨��¼</a></li>
    	</ul>	
	</div>
	<div id="body">
		<%
		response.cookies("UserName")=""
		response.Cookies("Password")=""
		if request("msg")="edituser" then response.Write("<div align=center>�û������޸ĳɹ�,�����µ�¼!</div>")
		if request("msg")="cookies" then response.Write("<div align=center>cookies�ѹ���,�����µ�¼!</div>")
		if request("msg")="errpassword" then response.Write("<div align=center>��������ȷ���û����������Լ���֤��!</div>")
		if request("msg")="userexit" then response.Write("<div align=center>�û��ѳɹ��˳�ϵͳ!</div>")
		%>
		<hr />
		<form method="post" action="admin/chklogin.asp">
		<table border="1" width="500" bgcolor="#00FF99" align=center cellspacing="2" cellpadding="6">
		<tr>
			<td width="100%" align="center" height="40">
			<font size="4" color="#FFFFFF">��̨�����¼</font></td>
		</tr>
		<tr>
			<td width="100%" align="center" height="166">
			<table border="0" width="300" cellpadding="6">
			<tr>
				<td align="right">�û�����</td>
				<td><input name="UserName" size="20" font face="����" style="font-size: 9pt"></td>
			</tr>
			<tr>
				<td align="right">��&nbsp; �룺</td>
  				<td><input type="password" name="Password" size="20" font face="����" style="font-size: 9pt"></td>
			</tr>
			<tr>
				<td align="right">��֤�룺</td>
				<td><%dim num1,rndnum
				Randomize
				Do While Len(rndnum)<4
				num1=CStr(Chr((57-48)*rnd+48))
				rndnum=rndnum&num1
				loop
				session("verifycode")=rndnum
				%>
				<input type="text" name="Verifycode" size="15" font face="����" style="font-size: 9pt">
				<b><span style="background-color: #FFFFFF"><font color=#000000><%=session("verifycode")%></font></span></b>
				</td>
			</tr>
			<tr>
				<td align="center" colspan="2">
				<p><input type="submit" name="Submit" value="��¼"></p>
              	</td>
			</tr>
			</table>
		</tr>
		</table>
		</form>
	</div>
	<div id="footer"><%=bottom%></div>
</div>

<div id="backgound">
	<!--#include file="background.html" -->
</div>

</body>
</html>
<%response.write "<!-- " %>