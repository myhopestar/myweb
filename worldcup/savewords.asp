<!--#include file=conn.asp-->
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<%
words=request("words")
verifycode=request("verifycode")
if len(words)<5 then response.Write("<div align=center>�����������̫����!<br>[<a href=# onclick=history.go(-2)>����</a>]</div>") : response.End()
if len(words)>255 then response.Write("<div align=center>�����������̫����!<br>[<a href=# onclick=history.go(-2)>����</a>]</div>") : response.End()
if verifycode <> session("verifycode") then response.Write("<div align=center>��֤�����!<br>[<a href=# onclick=history.go(-2)>����</a>]</div>") : response.End()
set rs=server.CreateObject("adodb.recordset")
rs.open "select * from words where id is null",conn,1,3
time1=now
ip=request.ServerVariables("REMOTE_ADDR")
rs.addnew array("ip","time","words"),array(ip,time1,words)
rs.update
rs.close
response.Write("<div align=center>���Է���ɹ�!<br>[<a href=index.asp>ȷ��</a>]</div>") : response.End()
%>