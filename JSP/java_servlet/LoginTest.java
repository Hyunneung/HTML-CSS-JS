package ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet ("/ex/LoginTest")
public class LoginTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
									throws IOException {
		
		response.setContentType("text/html;charset=euc-kr");
		
		String id = request.getParameter("id"); 
		String passwd = request.getParameter("passwd");
		
		PrintWriter out = response.getWriter();
		out.println("�� ���ø����̼� ����: " + request.getContextPath());
		out.println("<br>���̵�=" + id);
		out.println("<br>��й�ȣ=" + passwd);
		out.close();
	}
}
