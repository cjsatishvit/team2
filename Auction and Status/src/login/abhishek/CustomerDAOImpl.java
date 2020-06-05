package login.abhishek;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CustomerDAOImpl implements CustomerDAO {

	static Connection con;
	static PreparedStatement ps;

	public Customer getCustomer(String userid, String pass) {
		Customer c = new Customer();

		try {
			con = ConnectionProvider.getCon();
			ps = con.prepareStatement("select * from customer where userid=? and password=?");
			ps.setString(1, userid);
			ps.setString(2, pass);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				c.setUsername(rs.getString(1));
				c.setPassword(rs.getString(2));
				c.setName(rs.getString(3));
			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}
}
