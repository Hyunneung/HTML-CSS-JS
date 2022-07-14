package ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet ("/ex/Login_ok")
public class LoginTest2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public LoginTest2 () {
		super();
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
									throws ServletException, IOException {
		// �ѱ�ó��
		request.setCharacterEncoding("euc-kr");
		
		// ������ ������ ����
		response.setContentType("text/html;charset=euc-kr");
		
		// ��½�Ʈ��
		PrintWriter out = response.getWriter();
		
		// request�� id, passwd �Ӽ� ����
		String id = request.getParameter("id");
		String pw = request.getParameter("passwd");
		
		// id, pw�� java��� ����
		if(id.equals("java") && pw.equals("java")) { // id, pw ��ġ�� ��
			// ���� ����
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			
			// redirect ��� ����
			response.sendRedirect("ex_loginSuccess.jsp");
		} else if (id.equals("java")) {  // id�� ��ġ�� �� (pw Ʋ�� ��)
			out.println("<script>");
			out.println("alert('��й�ȣ�� ��ġ���� �ʽ��ϴ�.')");
			out.println("history.back()"); // �ٷ� �� �������� �̵�
			out.println("</script>");
			out.close();
		} else {  // pw�� ��ġ�� �� (id Ʋ�� ��)
			out.println("<script>");
			out.println("alert('���̵� ��ġ���� �ʽ��ϴ�.')");
			out.println("history.back()"); // �ٷ� �� �������� �̵�
			out.println("</script>");
			out.close();
		}
	}
}
