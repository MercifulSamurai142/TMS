package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class CredsCheck {
	public int check(Credentials crds) throws SQLException {//receive the credentials from login page
		Connection conn=new ConnectDB().connect();
		String sql_login ="select * from login where uid = ? and password = ?";
		PreparedStatement ps = conn.prepareStatement(sql_login);
		ps.setString(1, (crds.getUid()));
		ps.setString(2, (crds.getPassword()));
		ResultSet rs = ps.executeQuery();
		//ArrayList<Credentials> list=new ArrayList<>();
//		Credentials checkcrds = null;
//		while(rs.next()) {
//			checkcrds=new Credentials();
//			
//			checkcrds.setUid(rs.getString("uid"));
//			
//			checkcrds.setPassword(rs.getString("password"));
//			
//			list.add(checkcrds);
//		}
		try {
			//if((crds.getPassword()).equals(checkcrds.getPassword())) {
			//set credentials of user if login successful 
			if(rs.next()) {
				crds.setType(rs.getString("type"));
				crds.setName(rs.getString("name"));
				crds.setDate(rs.getDate("birthday"));
				crds.setGender(rs.getString("gender"));
				crds.setEmail(rs.getString("email"));
				crds.setPhone(rs.getString("number"));
				crds.setTable_name(rs.getString("type")+crds.getUid());;
				Credentials.setCrds(crds);
				System.out.println(rs.getDate("birthday"));
				
				System.out.println(crds.getTable_name());
				System.out.println(crds.getDate());
				return 1;
			}
		} 
		catch (Exception e) {
		}
		return 0;
	}
}
