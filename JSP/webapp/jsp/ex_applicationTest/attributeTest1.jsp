<!-- ��ȿ�� �˻� -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title> Attribute Test Form </title>
<link rel="stylesheet" href="../css/applicationTest.css" type="text/css">
</head>
<body>
<%
	request.setCharacterEncoding("euc-kr");
	application.setAttribute("id", request.getParameter("id"));
	application.setAttribute("name", request.getParameter("name"));
%>
	<h2>������ �Ӽ� �׽�Ʈ</h2>
	<h3><%=application.getAttribute("name")%>�� �ݰ����ϴ�.</h3>
	<h3><%=application.getAttribute("name")%>�� ���̵�� <%=application.getAttribute("id")%>�Դϴ�</h3>
	<form action="attributeTest2.jsp" method="post">
		<table>
			<tr><td colspan=2>Session ������ ������ �����</td></tr>
		
			<tr>
				<td>e-mail�ּ�</td>
				<td><input type="text" name="email" required></td>
			</tr>
			<tr>
				<td>�� �ּ�</td>
				<td><input type="text" name="address" required></td>
			</tr>
			<tr>
				<td>��ȭ��ȣ</td>
				<td><input type="text" name="tel" required></td>
			</tr>
			
			<tr><td colspan=2><input type="submit" value="����"></td></tr>
		</table>
	</form>
</body>
</html>