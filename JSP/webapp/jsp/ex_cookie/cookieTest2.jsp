<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title> ��Ű�׽�Ʈ </title>
</head>
<body>
<%
	String name = "";
	String value = "";

	// ��Ű �ִ��� Ȯ��
	String cookie = request.getHeader("Cookie");
	
	if (cookie != null) {
		Cookie cookies[] = request.getCookies();  // ��Ű�� �迭�� �����´� 
		for(int i=0; i<cookies.length; i++) {
			if(cookies[i].getName().equals("name")) { // ��Ű �̸��� "name" �� �� ã��
				name = cookies[i].getName();  // ��Ű �̸�
				value = cookies[i].getValue();  // ��Ű ��
			}
		} // for ��
%>
		<h2>��Ű �̸�: <%=name%></h2>
		<h2>��Ű ��: <%=value%></h2>
<%
	} else {
%>
		<h2>�����ϴ� ��Ű�� �����ϴ�.</h2>
<%	} %>
</body>
</html>