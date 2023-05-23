package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectDB {
	public Connection connect() throws SQLException {
		//Register driver
		DriverManager.registerDriver(new com.mysql.jdbc.Driver());
		//Connection
		String url="jdbc:mysql://localhost:3306/tms";
		String user="root";
		String password="";
		
		Connection conn = DriverManager.getConnection(url,user,password);
		return conn;
	}
}
