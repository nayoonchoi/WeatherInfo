package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import util.DatabaseUtil;

public class memberDAO {
public void join(String id,String pw) {
	String sql="insert  * from member";
	try {
		Connection conn= DatabaseUtil.getConnection();
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.executeQuery(sql);
	} catch (Exception e) {
		// TODO: handle exception
	}
}
}
