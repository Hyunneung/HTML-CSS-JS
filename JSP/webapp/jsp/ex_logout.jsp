<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>�α׾ƿ� ������</title>
</head>
<body>
	<%=session.getAttribute("id") %>�� �α׾ƿ� �Ǽ̽��ϴ�.
	<%session.invalidate();%>  <!-- ���� ��� �Ӽ� ���� -->
	<a href="ex_login.jsp">�α���</a>
</body>
</html>