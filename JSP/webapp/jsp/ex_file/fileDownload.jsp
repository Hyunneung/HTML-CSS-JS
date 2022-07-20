<%@ page language="java" contentType="text/html; charset=EUC-KR"%>

<%@ page import="java.io.*" %>
<%@ page trimDirectiveWhitespaces = "true"%> <!-- ���ʿ��� ���� �ڵ� ���� -->

<%
	String fileName = request.getParameter("file_name"); // file_name�� fileCheck.jsp�� a�±׿��� ������Ʈ�� �� �κ�
	System.out.println("fileName = " + fileName);
	
	String savePath = "ex_imageupload";  // ������ �ٿ�ε� �� �� (����)
	
	ServletContext context = pageContext.getServletContext();
	String sDownloadPath = context.getRealPath(savePath);
		
	String sFilePath = sDownloadPath + "//" + fileName;
	System.out.println("sFilePath = " + sFilePath);
	
	byte b[] = new byte[4096];
	
	String sMimeType = context.getMimeType(sFilePath);
	System.out.println("sMimeType >>>" + sMimeType);
	
	if (sMimeType == null) {
		sMimeType = "application/octet-stream";  // �������� ���� ���� ����
	}
	
	response.setContentType(sMimeType);
	
	// ���ϸ� �ѱ� ó��
	String sEncoding = new String(fileName.getBytes("euc-kr"), "ISO-8859-1");
	
	response.setHeader("Content-Disposition", "attachment; filename = " + sEncoding);
	
	try (
			BufferedOutputStream out2 = new BufferedOutputStream(response.getOutputStream());  // ��½�Ʈ��
			BufferedInputStream in = new BufferedInputStream(new FileInputStream(sFilePath));  // �Է½�Ʈ��
		)
		{
			int numRead;
			
			while((numRead = in.read(b, 0, b.length)) != -1) {  // ���� �����Ͱ� �����ϴ� ���
				out2.write(b, 0, numRead);  // ����Ʈ �迭 b�� 0������ numRead��ŭ ���
			}
	} catch(Exception e) {
		e.printStackTrace();
	}
%>
