<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>���籭����ϵͳ-����</title>
<link href="css/worldcup.css" rel="stylesheet" type="text/css" />
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
			<hr />
			<div id="words">
<p align="center">ϵͳ����:���籭����ϵͳ</p>
<p align="center">��Ҫ���ܣ�Ϊ��ϲ�������ͶƱ�����Ի���</p>
<p align="center">ϵͳ����ʱ��:2014��6��11��</p>
<p align="center">ϵͳ����:����Ǭ</p>
<p align="center">ָ����ʦ�����Է�</p>
<p align="center">˵������ϵͳԭΪ�����ۺϿγ���ƣ���ҵ���ֽ����˴������޸�</p>
			</div>
		</div>
		<div id="footer"><%=bottom%></div>
	</div>
	
	<div id="backgound">
		<!--#include file="background.html" -->
	</div>

</body>
</html>
<%response.write "<!-- " %>
