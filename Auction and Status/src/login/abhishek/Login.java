package login.abhishek;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Login() {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		CustomerDAO cd = new CustomerDAOImpl();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String submitType = request.getParameter("submit");
		Customer c = cd.getCustomer(username, password);
		if (submitType.equals("Login") && c != null && c.getName() != null) {
			request.setAttribute("message",c.getName());
			request.getRequestDispatcher("home.jsp").forward(request, response);
		} else {
			request.setAttribute("message", "Data not found , go and register!!!");
			request.getRequestDispatcher("login.jsp").forward(request, response); 
		}
	}

}
