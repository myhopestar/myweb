<!--#include file="conn.asp" -->
<table align="center" border="0" width=960px>
	<tr>
		<td>
		<table width=960px border=0 cellpadding="1" cellspacing="1" bordercolor="#FF0000" bordercolordark="#FF0000" bordercolorlight="#FF0000">
		<tr>
			<td>�û�������</td>
		</tr>
		<%
		set rs2=server.CreateObject("adodb.recordset")
		rs2.open "select * from words",conn,adopenforwardonly
		l=0
		do while not rs2.eof
		l=l+1
		response.Write("<tr valign=middle><td><hr class=hrsize><font size=4><b>" & l & "</b></font><font size=2>¥ �ο�IP:" & rs2("ip") & " ����ʱ��:" & rs2("time") & " �������ݡ�</font><hr class=hrsize></td></tr><tr valign=middle><td><textarea class=inputsize  style=border:hidden;background-color:#99CCCC;color:#333333 readonly=readonly>" & rs2("words") & "</textarea></td></tr>")
		rs2.movenext
		loop
		rs2.close
		'��֤������
		dim num1,rndnum
		Randomize
		Do While Len(rndnum)<4
		num1=CStr(Chr((57-48)*rnd+48))
		rndnum=rndnum&num1
		loop
		session("verifycode")=rndnum
		%>
		<tr valign=middle>
			<td bordercolor="#99CCCC"><hr class=hrsize />��Ҫ����:</td>
		</tr>
		<tr valign=middle>
			<td bordercolor="#99CCCC"><div align="center">
			<form method="post" action="savewords.asp">
			<textarea class=inputsize name="words"></textarea><br />
			��֤��:<input type="text" name="verifycode" size="15" style="font-size:11px" />
			<span style="background-color: #FFFFFF"><font color=#000000><%=session("verifycode")%></font></span><br />
			<input type="submit" value="�ύ" /></form></div></td>
		</tr>
		</table>
		</td>
	</tr>	
</table>