package collectorlogin;

public class Defaulter_paymentinfo {

/*
	Function  Installment_Status_Update(Integer Loan.loanID): 
        If Loan.Installment_Status == �Pending payment�: 
                  Loan.Installment_Status = �Defaulter stage 1� 
                   Loan.InstallmentDueDate increment by 3 months 
       Function  Installment_Status_Update(Integer Loan.loanID): 
        If Loan.Installment_Status == �Pending payment�: 
                  Loan.Installment_Status = �Defaulter stage 1� 
                   Loan.InstallmentDueDate increment by 3 months 
       If Loan.Installment_Status == �Defaulter stage 1� 
                   Loan.Installment_Status = �Defaulter stage 2� 
                   Loan.InstallmentDueDate  increment by 3 more months 
        If Loan.InstallmentStatus == �Defaulter stage 2� 
                   Print(�Not eligible for time period extension�) 
                   Print(�Assign Third Party Agent�) 
         If Loan.InstallmentStatus == �Paid�; 
                    Print(�No due Installments � PAID�) 
End Function 


Function Issue_Notice(Loan.Loan_ID): 
            If Loan.Installment_Status == �Defaulter stage 1�; 
            Loan.Issue_Notice = true; 
            If Loan.Installment_Status == �Defaulter stage 2�; 
            Loan.Issue_Notice = true; 
End Function 
                  

Function Generate_Report_loans(String Loan_id): 
    Print(Report_Title); 
    Print (Customer_Details (Branch_ID , Customer ID, Customer_Name , 
Customer_Address, Due_Amount , Due_Date)); 
End Function 


Function  Send_Report(): 
         If time==end of working day: 
              Send Report to the Bank Manager; 
End Function 


Function ThirdPartyAgent(Integer Loan.loanID): 
              If Loan.InstallmentStatus == �Defaulter stage 2� 
               Loan.ThirdPartAgentStatus = True 
End Functio
        If Loan.InstallmentStatus == �Defaulter stage 2� 
                   Print(�Not eligible for time period extension�) 
                   Print(�Assign Third Party Agent�) 
         If Loan.InstallmentStatus == �Paid�; 
                    Print(�No due Installments � PAID�) 
End Function 


Function Issue_Notice(Loan.Loan_ID): 
            If Loan.Installment_Status == �Defaulter stage 1�; 
            Loan.Issue_Notice = true; 
            If Loan.Installment_Status == �Defaulter stage 2�; 
            Loan.Issue_Notice = true; 
End Function 
                  

Function Generate_Report_loans(String Loan_id): 
    Print(Report_Title); 
    Print (Customer_Details (Branch_ID , Customer ID, Customer_Name , 
Customer_Address, Due_Amount , Due_Date)); 
End Function 


Function  Send_Report(): 
         If time==end of working day: 
              Send Report to the Bank Manager; 
End Function 


Function ThirdPartyAgent(Integer Loan.loanID): 
              If Loan.InstallmentStatus == �Defaulter stage 2� 
               Loan.ThirdPartAgentStatus = True 
End Function
*/
}
