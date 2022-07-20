<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%
	request.setCharacterEncoding("euc-kr");  // post ��� �ѱ� ó��	

	String name = request.getParameter("name");
	String subject = request.getParameter("subject");
	String systemName = request.getParameter("systemName");
	String origfileName = request.getParameter("origfileName");
	String uploadPath = request.getParameter("uploadPath");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ���ε� Ȯ�� �� �ٿ�ε�</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
	<div class="container" style="text-align:center">
		<h4>���� �ٿ�ε� ��</h4>
		<table class="table table-bordered table-striped">
			<tr>
				<td>�ۼ���</td><td><%=name%></td>
			</tr>
			<tr>
				<td>����</td><td><%=subject%></td>
			</tr>
			<tr>
				<td>���ϸ�</td><td><a href="fileDownload.jsp?file_name=<%=systemName%>"><%=origfileName%></a></td>
			</tr>
			<tr>
				<td>uploadPath</td><td><%=uploadPath%></td>
			</tr>
		</table>
	</div>
</body>
</html>