<!-- ��ȿ�� �˻� -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title> Attribute Test Form </title>
<link rel="stylesheet" href="applicationTest.css" type="text/css">
</head>
<body>
<%
	request.setCharacterEncoding("euc-kr");
	session.setAttribute("email", request.getParameter("email"));
	session.setAttribute("address", request.getParameter("address"));
	session.setAttribute("tel", request.getParameter("tel"));

%>
	<h2>������ �Ӽ� �׽�Ʈ</h2>
	<h3><%=application.getAttribute("name")%>�� ������ ��� ����Ǿ����ϴ�.</h3>
	<a href="attributeTest3.jsp" >Ȯ���Ϸ� ����</a>
</body>
</html>