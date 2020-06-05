package bankruptcygenerations;

public class User_Bean {
	private String FirstName;
	private String LastName;
	private String LoanId;
	private String BankruptcyId;
	private String Phone;
	public String getFirstName() {
		return FirstName;
	}
	public void setFirstName(String FirstName) {
		this.FirstName = FirstName;
	}
	public String getLastName() {
		return LastName;
	}
	public void setLastName(String LastName) {
		this.LastName = LastName;
	}
	public String getLoanId() {
		return LoanId;
	}
	public void setLoanId(String LoanId) {
		this.LoanId = LoanId;
	}
	public String getPhone() {
		return Phone;
	}

	public String getBankruptcyId() {
		return BankruptcyId;
	}
	public void setBankruptcyId(String bankruptcyId) {
		BankruptcyId = bankruptcyId;
	}
	public void setPhone(String Phone) {
		this.Phone = Phone;
	}


}
