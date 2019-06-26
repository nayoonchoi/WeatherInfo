package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseUtil {
	public static Connection getConnection() {
		try {
			String url = "jdbc:mysql://localhost:3305/PROJECT1";
			String id = "root";
			String pw = "1234";
			Class.forName("com.mysql.jdbc.Driver");
			
				return DriverManager.getConnection(url,id,pw);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
		
	}
}
