package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class MemberWithAreaDAO {
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String uid = "scott";
	private String upw = "tiger";
	
	
	public MemberWithAreaDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<String> AreaSelectByMemberId(String memberId) {
		
		ArrayList<String> dtos = new ArrayList<String>();
		
		Connection con =null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql="select * from MemberWithArea where id=?";
		
		try {
			con = DriverManager.getConnection(url, uid, upw);
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, memberId);
//			
//			String sql="select * from MemberWithArea";
//			Statement ps=con.createStatement();
//			//ps.setString(1, memberId);
			
			rs = pstmt.executeQuery();
			System.out.println(rs.getMetaData().getColumnCount());
			while (rs.next()) {
				String area = rs.getString("area");
					
				
//				MemberWithAreaDTO dto = new MemberWithAreaDTO(id,area);
				dtos.add(area);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return dtos;
	}
public void DeleteRegisteredArea(String memberId, String area) {
		
		
		
		Connection con =null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql="delete from MemberWithArea where id=? and area=?";
		
		try {
			con = DriverManager.getConnection(url, uid, upw);
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, memberId);
			pstmt.setString(2, area);

			rs = pstmt.executeQuery();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		
	}
}
