<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>�α��� ������</title>
<link href="../css/login.css" type="text/css" rel="stylesheet">
</head>
<body>
<form action="Login_ok" method="post">
	���̵�: <input type="text" name="id" required><br>
	��й�ȣ: <input type="password" name="passwd" required><br>
	
	<div class="clearfix">
		<button type="submit" class="submitbtn">����</button>
		<button type="reset" class="cancelbtn">���</button>
	</div>
</form>	
</body>
</html>