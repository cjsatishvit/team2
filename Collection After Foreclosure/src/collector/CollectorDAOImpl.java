package collector;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CollectorDAOImpl implements CollectorDAO {
	static Connection con;
	static PreparedStatement ps;

	@Override
	public int insertCollector(Collector c) {
		int status = 0;
		try {
			con = MyConnectionProvider.getCon();
			ps = con.prepareStatement("insert into loan value(?,?,?)");
			ps.setString(1, c.getCid());
			ps.setString(2, c.getLid());
			ps.setDouble(3, c.getAmount());
			status = ps.executeUpdate();
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	@Override
	public Collector getCollector(String cid, String lid, double amount) {
		Collector c = new Collector();
		try {
			con = MyConnectionProvider.getCon();
			ps = con.prepareStatement("select * from loan where cid=? and lid=?");
			ps.setString(1, cid);
			ps.setString(2, lid);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				c.setCid(rs.getString(1));
				c.setLid(rs.getString(2));
				c.setAmount(rs.getDouble(3));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return c;
	}

}