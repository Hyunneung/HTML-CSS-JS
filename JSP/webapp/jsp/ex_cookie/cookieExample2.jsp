<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%	
	// cookieExample.jsp���� üũ�� language�� ��Ű�� ����
	Cookie cookie = new Cookie("language", request.getParameter("language"));
	
	cookie.setMaxAge(60*60*24);
	response.addCookie(cookie);
%>
<script>
	location.href = "cookieExample.jsp"
</script>