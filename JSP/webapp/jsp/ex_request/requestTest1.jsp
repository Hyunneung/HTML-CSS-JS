<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title> ��� </title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
	.container{width:70%; margin-top:30px; vertical-align: middle}
	h3{text-align:center}
</style>
</head>
<body>
	<div class="container">
		<h3> Request �����Դϴ�. </h3>
		<form action="requestTest1.jsp" method="get">
			<table class="table">
				<tr>
					<td>�̸�</td>
					<td><%=request.getParameter("name")%></td>
				</tr>
				<tr>
					<td>����</td>
					<td>
					<%
						if(request.getParameter("gender").equals("male")) {
							out.println("����");
						} else {
							out.println("����");
						}
					%>
					</td>
				</tr>
				<tr>
					<td>���</td>
					<td>
					<%
						String hobby = "";
						for (String h : request.getParameterValues("hobby")) {
							out.println(h + " ");
						}
					%>
					</td>
				</tr>
			</table>
		</form>	
	</div>
</body>
</html>