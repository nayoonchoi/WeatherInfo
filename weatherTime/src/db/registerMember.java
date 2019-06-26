package db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class registerMember {
	public static void main(String[] args) {
		

			
			
			
				try {
					
					DBManager db = DBManager.getInstance();
					Connection con;
				
					con = db.open();
				
				String sql = "select * from member";
				Statement statement;
				
					statement = con.createStatement();
				
				ResultSet resultSet;
				
					resultSet = statement.executeQuery(sql);
				
					while(resultSet.next()) {
						String id=resultSet.getString("id");
						String pw=resultSet.getString("pw");
						System.out.println("아이디"+id+"비밀번호"+pw);
					}
				} catch (ClassNotFoundException e3) {
					// TODO Auto-generated catch block
					e3.printStackTrace();
				} catch (SQLException e3) {
					// TODO Auto-generated catch block
					e3.printStackTrace();
				}
			
			
	}
}
