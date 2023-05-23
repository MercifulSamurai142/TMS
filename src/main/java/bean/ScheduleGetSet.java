package bean;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ScheduleGetSet {
	static Date date;
	public ArrayList<ScheduleDetail> getDetail(Date dt) throws SQLException{//receives date for query and return schedule
		date=dt;
		ArrayList<ScheduleDetail> list=new ArrayList<>();//list of time purpose priority
		Connection conn=new ConnectDB().connect();
		String sql_date ="select time,purpose,priority from "+Credentials.getCrds().getTable_name()+" where date='"+String.valueOf(dt)+"';";
		PreparedStatement ps = conn.prepareStatement(sql_date);
		ResultSet rs = ps.executeQuery();
		ScheduleDetail sdob=null;
		while(rs.next()) {
			sdob=new ScheduleDetail();
			sdob.setTime(rs.getInt("time"));
			sdob.setPurpose(rs.getString("purpose"));
			sdob.setPriority(rs.getString("priority").charAt(0));//varchar in database needs conversion
			list.add(sdob);
		}
		
		return list;
	}
	
	public void setDetail(int time, String purpose,String priority) throws SQLException {
		int rs;
		Connection conn=new ConnectDB().connect();
		String sql_insert="insert into "+Credentials.getCrds().getTable_name()+" (date, time, purpose, priority) values (? , ? ,? ,? );";
		System.out.println(String.valueOf(date));
		//insert into s10000035 (date, time, purpose, priority) values ('2023-05-10' , 6 ,'insertTest' ,'H' );
		
		String sql_update="update "+Credentials.getCrds().getTable_name()+" set purpose = ?, priority= ? where (date=? and time=?);";
		//update  s10000035 set purpose = 'test change', priority= 'A' where (date='2023-05-03' and time=0);
		PreparedStatement ps = conn.prepareStatement(sql_insert);
		ps.setString(1,String.valueOf(date));
		ps.setInt(2, time);
		ps.setString(3, purpose);
		ps.setString(4, priority);
		try {
			rs = ps.executeUpdate();
		} 
		catch (SQLException e) {
			ps = conn.prepareStatement(sql_update);
			ps.setString(1, purpose);
			ps.setString(2, priority);
			ps.setString(3,String.valueOf(date));
			ps.setInt(4, time);
			rs = ps.executeUpdate();
		}
		
	}
	
}