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
<!--#include FILE="upload.inc"--> 
<!--#include file=cookies.asp-->
<html> 
<head> 
<title>�ļ��ϴ�</title> 
</head> 
<body> 
<% 
dim upload,file,formName,formPath 
set upload=new upload_5xSoft ''�����ϴ����� 
formPath=upload.form("filepath") ''��Ŀ¼���(/) 
if right(formPath,1)<>"/" then formPath=formPath&"/" 
for each formName in upload.file ''�г������ϴ��˵��ļ� 
set file=upload.file(formName) ''����һ���ļ����� 
if file.filename="" or len(file.filename)<5 then response.Write("<div align=center>δѡ��Ҫ�ϴ����ļ����ļ�����!<br>[<a href=# onclick=history.go(-1)>�����ϴ�</a>]</div>") : response.End()
filehsw=mid(file.filename,len(file.filename)-2,len(file.filename))
if filehsw<>"jpg" and filehsw<>"png" and filehsw<>"gif" and filehsw<>"bmp" then response.Write("<div align=center>ֻ�����ϴ�JPG��GIF��PNG��BMP���͵��ļ�!<br>[<a href=# onclick=history.go(-1)>�����ϴ�</a>]</div>") : response.End()
if file.filesize<100 then 
response.write "<font size=2>����ѡ����Ҫ�ϴ����ļ�[ <a href=# onclick=history.go(-1)>�����ϴ�</a> ]</font>" 
response.end 
end if 
if file.filesize>500*1000 then '�����ϴ��ļ���СΪ500K 
response.write "<font size=2>�ļ���С���������� 500K[ <a href=# onclick=history.go(-1)>�����ϴ�</a> ]</font>" 
response.end 
end if 
if file.FileSize>0 then ''��� FileSize > 0 ˵�����ļ����� 
file.SaveAs Server.mappath("..\images\"&file.FileName) ''�����ļ� 
filename=file.filename
end if 
set file=nothing 
next 
set upload=nothing 
response.write "<div align=center><font size=3>�ļ��ϴ��ɹ�!·��Ϊ:images\" & FileName & "<br>����·����ճ����ͼƬ·����<br> [ <a href=# onclick=history.go(-1)>�����ϴ�</a> ]</font></div>" 
%> 
</body> 
</html> 
</main>
</body>
</html>