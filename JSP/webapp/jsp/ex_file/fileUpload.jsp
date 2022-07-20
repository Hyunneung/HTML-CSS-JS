<%@ page language="java" contentType="text/html; charset=EUC-KR"%>

<!-- cos.jar -->
<%@ page import="com.oreilly.servlet.MultipartRequest" %>  <!-- ���� ���ε� -->
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>  <!-- ���� �̸� �ߺ� ó�� -->

<%
	String uploadPath = application.getRealPath("ex_imageupload");  // ������ ���ε� �Ǵ� ��(����)
	out.print("upload ��� : " + uploadPath);
	
	int size = 10*1024*1024;
	
	String name = "";
	String subject = "";
	String systemName = "";
	String origfileName = "";
	
	try {
		// ���� ���ε�
		MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "euc-kr", new DefaultFileRenamePolicy());
		
		// <form enctype=��multipart/form-data��> �� �ѱ� �Ķ���ʹ� MultipartRequest�� ���ؼ� �Ķ���͸� �����ؾ� �Ѵ�
		name = multi.getParameter("name");
		subject = multi.getParameter("subject");
		
		systemName = multi.getFilesystemName("fileName"); // �ý��ۻ� ���ϸ�
		origfileName = multi.getOriginalFileName("fileName"); //  ���� ���ϸ�
	} catch (Exception e) {
		e.printStackTrace();
		out.print("���� ���ε忡���Դϴ�");
	}
%>
<html>
<head>
<title>���� ���ε�</title>
</head>
<body>
	<form action="fileCheck.jsp" method="post">
		<input type="hidden" name="name" value="<%=name%>">
		<input type="hidden" name="subject" value="<%=subject%>">
		<input type="hidden" name="systemName" value="<%=systemName%>">
		<input type="hidden" name="origfileName" value="<%=origfileName%>">
		<input type="hidden" name="uploadPath" value="<%=uploadPath%>">
		
		<input type="submit" value="���ε� Ȯ�� �� �ٿ�ε� ������ �̵�">
	</form>
</body>
</html>