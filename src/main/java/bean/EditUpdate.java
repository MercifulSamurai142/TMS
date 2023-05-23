package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class EditUpdate {
	public void update(Credentials crds) throws SQLException {//receive the credentials from login page
		Connection conn=new ConnectDB().connect();
		String sql_login ="select * from login where uid = ? and password = ?";
		PreparedStatement ps = conn.prepareStatement(sql_login);
		
	}
}
