<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title> ��Ű�׽�Ʈ </title>
</head>
<body>
<%
	// ��Ű ����
	Cookie cookie = new Cookie ("name", "KimJava");
	
	// ��Ű ���� �ð�
	cookie.setMaxAge(5);  // ��Ű 5�ʵ��� ����
	
	// ��Ű�� Ŭ���̾�Ʈ�� ����
	response.addCookie(cookie);
%>
<h2>��Ű �̸�: <%=cookie.getName() %></h2>
<h2>��Ű ��: <%=cookie.getValue() %></h2>

<a href="cookieTest2.jsp">��Ű�׽�Ʈ</a>

</body>
</html>