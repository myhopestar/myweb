<!--#include file="conn.asp" -->
<%
on error resume next
dim r
UserName=request.Form("UserName")
Password=request.Form("Password")
Verifycode=request.Form("Verifycode")
set r=server.CreateObject("adodb.recordset")
'�������
mm=""
for i = 1 to len(password)
mm=mm & (asc(mid(password,i,1))+3)
next
'�������ݿ�
sql="select * from admin where username='"&UserName&"'"
r.open sql,conn,1,3
'�û������Ƿ���ȷ
if mm <> r("Password") or Verifycode<>session("Verifycode") then
response.Redirect("../login.asp?msg=errpassword")
response.End()
else
response.Cookies("UserName")=r("UserName")
response.Cookies("Password")=r("Password")
r.close
set r=nothing
session("username")=username
response.Redirect("main.asp")
end if 
%>