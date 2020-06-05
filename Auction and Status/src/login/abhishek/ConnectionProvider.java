package login.abhishek;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {

	static Connection con = null;

	public static Connection getCon() {
		try {
			Class.forName("con.mysql.jdbc.driver");
			String connUrl = null;
			String username = null;
			String pwd = null;
			con = DriverManager.getConnection(connUrl, username, pwd);
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}
}
