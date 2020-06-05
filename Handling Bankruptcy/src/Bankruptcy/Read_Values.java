package Bankruptcy;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import bankruptcygenerations.DB_Connection3;
import bankruptcygenerations.User_Bean;
import Bankruptcy.Read_Values;

public class Read_Values {
	public static void main(String[] args) {
		Read_Values obj_Read_Values=new Read_Values();
		
		obj_Read_Values.get_values();
	}
	
	
	public List<User_Bean> get_values(){
		DB_Connection3 obj_DB_Connection3=new DB_Connection3();
		Connection connection=obj_DB_Connection3.get_connection();
		
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		 List<User_Bean> list=new ArrayList<User_Bean>();
		
		try {
			String querry="select * from bankruptcy.applicants";
			ps=connection.prepareStatement(querry);		
			rs=ps.executeQuery();
			
			
			while(rs.next()){
				
				User_Bean obj_User_Bean=new User_Bean();
				System.out.println(rs.getString("FirstName"));
				System.out.println(rs.getString("LastName"));
				System.out.println(rs.getString("LoanId"));
				System.out.println(rs.getString("BankruptcyId"));
				System.out.println(rs.getString("Phone"));
				
				
				obj_User_Bean.setFirstName(rs.getString("FirstName"));
				obj_User_Bean.setLastName(rs.getString("LastName"));
				obj_User_Bean.setLoanId(rs.getString("LoanId"));
				obj_User_Bean.setBankruptcyId(rs.getString("BankruptcyId"));
				obj_User_Bean.setPhone(rs.getString("Phone"));
				
				
				list.add(obj_User_Bean);
				
			}
			
			
			
		} catch (Exception e) {
				System.out.println(e);
		}
		return list;
		
		
		
	}
}
