<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.Calendar"%>
<%
	Calendar c = Calendar.getInstance();
	int hour = c.get(Calendar.HOUR_OF_DAY);
	int minute = c.get(Calendar.MINUTE);
	int second = c.get(Calendar.SECOND);
%>

<!DOCTYPE html>
<html>
<head>
<title> ���� �ð� </title>
<script src="../js/jquery-3.6.0.js"></script>
<script>
	$(function() {
		var color = "yellow";
		if( <%=hour%> <= 12 ) {
			color = "skyblue";
		}
		$("body").css("background",color)
	})
</script>
</head>
<body>
	<h1>���� �ð���
	<%=hour%>�� <%=minute%>�� <%=second%>�� �Դϴ�.</h1>
	
	������ �ϴû�, ���Ĵ� ������� ������ �����˴ϴ�.
</body>
</html>