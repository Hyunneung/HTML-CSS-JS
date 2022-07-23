<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.util.Properties" %>

<!-- �ڹ� ���� API ��� -->
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>

<%
	request.setCharacterEncoding("euc-kr");  // post ��� �ѱ� ó��
	String sender = request.getParameter("sender");
	String receiver = request.getParameter("receiver");
	String subject = request.getParameter("subject");
	String content = request.getParameter("content");
	
	// SMTP ���� �ּ� ����
	String server = "smtp.naver.com";  // ���̹� ���� ȯ�ἳ���� �ִ� SMTP ������
	int port = 587;
	
	try {
		// ���� ������ Properties ��ü�� ����
		Properties properties = new Properties();
		
		// SMTP ���� ���� ����
		properties.put("mail.smtp.host", server);  // smtp.naver.com
		properties.put("mail.smtp.port", port);  // 587
		
		// ��ȣȭ ��������
		properties.put("mail.smtp.ssl.protocols", "TLSv1.2");
		
		Session s = Session.getInstance(properties);
		
		Address sender_address = new InternetAddress(sender);
		Address receiver_address = new InternetAddress(receiver);
		
		// ���� ������ ���� Message ��ü ����
		Message message = new MimeMessage(s);
		
		// ���� �ѱ� ó��
		message.setHeader("content-type", "text/html;charset=euc-kr");
		
		message.setFrom(sender_address);  // ������ ���� �ּ� ���� ����
		message.addRecipient(Message.RecipientType.TO, receiver_address);  // �޴� ���� �ּ� ���� ����
		message.setSubject(subject); // ���� ���� ����
		message.setContent(content, "text/html;charset=euc-kr"); // ���� ���� ����
		message.setSentDate(new java.util.Date()); // ������ ��¥ ����
		
		Transport transport = s.getTransport("smtp");
		
		transport.connect(server, ex_mail.MyMail.naverId, ex_mail.MyMail.naverPw);  // ���� ���� ���̵�, ��й�ȣ
		
		transport.sendMessage(message, message.getAllRecipients());
		
		transport.close();
		
		out.print("<h3>������ ���������� ���۵Ǿ����ϴ�.</h3>");
	} catch(Exception e) {
		out.print("<h3>SMTP ������ �߸� �����Ǿ��ų�, ���񽺿� ������ �ֽ��ϴ�.</h3>");
		e.printStackTrace();
	}
%>