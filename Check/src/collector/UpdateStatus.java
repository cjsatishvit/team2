package collector;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Calendar;

@WebServlet("/updateStatus")
public class UpdateStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//Get object from db for the given ids
		//Check promise counter, if it is greater than 2 then return Promise to Pay Denied
		String message = " ";
		LoanDAO loanDAO = new LoanDAOImpl();
		Loan loan = new Loan();
		String cid = request.getParameter("cid");
		String lid = request.getParameter("lid");
		int days =   Integer.parseInt(request.getParameter("days"));
		
		loan.setCid(cid);
	    loan.setLid(lid);
		
	    String paid="Paid";
	    //String ptr=null;
		
		String submitType = request.getParameter("submit");//changed from submit
		loan = loanDAO.getLoan(cid, lid, days);
		loan.setDays(days);
		LoanProcessor loanProcessor= new LoanProcessor();
		
		System.out.println(loan.getStatus());
		
		boolean isDaysRangeValid = loanProcessor.checkDaysConstraint(loan);
		if(!isDaysRangeValid)
		{
			message="Invalid Days Range: For Promise to Pay 1: days between 1 and 15 and For Promise to Pay 2: days between 1 and 5";
		}
		else if(loan.getStatus()==null)
        {
			message= "Invalid data entry";
		}
		else if(loan.getStatus().equals(paid))
        {
			message= "Loan is already "+loan.getStatus();
		}
		else if(loan!=null && loan.getPromiseCounter()>=2)
		{
			message="Promise to Pay Denied!!!";
		}
		else{
			System.out.println("Testing");
			
			// System.out.println(cid + " " + lid + " " + days);
			
			
//			int newPromiseCounter=loan.getPromiseCounter()+1;
//			loan.setPromiseCounter(newPromiseCounter);
//			
//			Calendar cal = Calendar.getInstance();
//	        cal.add(Calendar.DATE, days);
//	        loan.setPromiseToPayEndDate(cal.getTime());
//			loan = loanProcessor.findStatus(loan);
//			if(loan.getStatus()=="Paid")
//			{
//				message= "Loan is "+loan.getStatus();
//			}
//			if(loan.getStatus()=="Pending")
//			{
//				message= "Loan Status changed to "+ loan.getStatus();
//			}
//			else
//			{
//			loanDAO.updateLoan(loan);
//			message= "Loan Status changed to "+ loan.getStatus() +" " + days + " days granted for Customer ID: " + cid;
//			}
			
			int newPromiseCounter=loan.getPromiseCounter()+1;
			loan.setPromiseCounter(newPromiseCounter);
			//loan.setPromiseCounter(loan.getPromiseCounter());
			
			
//			System.out.println("**Updating loan object"+newPromiseCounter);
//			loanDAO.updateLoan(loan);
//			System.out.println("Updated loan object successfully");
			
			
//			loan = loanDAO.getLoan(cid, lid, days);
//			System.out.println("Getting Loan");
		
			
			
			
			
			Calendar cal = Calendar.getInstance();
	        cal.add(Calendar.DATE, days);//for normal condition
			//cal.add(Calendar.DATE, -1);//for checking Pending condition after Promise to Pay duration passes
	        loan.setPromiseToPayEndDate(cal.getTime());
			loan = loanProcessor.findStatus(loan);
			String pending="Pending";
			if(loan.getStatus().equals(pending))
			{
				message= "Loan Status changed to "+ loan.getStatus();
			}
			else
			{
			loanDAO.updateLoan(loan);
			message= "Loan Status changed to "+ loan.getStatus() +" " + days + " days granted for Customer ID: " + cid;
			}
		}
		
		
	
		
		if (submitType.equals("Submit")) {
			//System.out.println("Testing");
			request.setAttribute("message",message);
			request.getRequestDispatcher("updateStatus.jsp").forward(request, response);
		} else {
			request.setAttribute("message", "Data Not Found!");
			request.getRequestDispatcher("updateStatus.jsp").forward(request, response);
		}
	}

}