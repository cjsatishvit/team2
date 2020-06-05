package collector;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/checkStatus")
public class CheckStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CheckStatus() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		CollectorDAO cs = new StatusDAOImpl();
		String cid = request.getParameter("cid");
		String lid = request.getParameter("lid");
		// double amount = Double.parseDouble(request.getParameter("amount"));
		// System.out.println(cid + " " + lid + " " + amount);
		String submitType = request.getParameter("submit");
		Collector c = new Collector();
		c = cs.getCollector(cid, lid);
		if (submitType.equals("Submit")) {
			request.setAttribute("message",
					"Fetching Details" + " for Customer ID: " + c.getCid() + ": Amount Pending is: " + c.getAmount());
			request.getRequestDispatcher("checkStatus.jsp").forward(request, response);
		} else {
			request.setAttribute("message", "Data Not Found!");
			request.getRequestDispatcher("checkStatus.jsp").forward(request, response);
		}
	}

}
