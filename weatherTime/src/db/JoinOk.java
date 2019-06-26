package db;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;

/**
 * Servlet implementation class JoinOk
 */
@WebServlet("/JoinOk")
public class JoinOk extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private java.sql.Connection con;
	private Statement stmt;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinOk() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		actionDo(request,response);
	}

	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String id=request.getParameter("id");
		String pw= request.getParameter("pw");
		String name= request.getParameter("name");
		String sql ="insert into member values('"+id+"','"+pw+"','"+name+"')";
		
		try {
		
		
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe" , "scott" , "tiger");
			
			if(con!=null) { System.out.println("DB접속 완료");
			System.out.println(id); 
			System.out.println(pw); 
		System.out.println(name);} 
			else System.out.println("db접속 실패");
			
		// 3. Query 실행 준비
		
		stmt = con.createStatement();
		int i=stmt.executeUpdate(sql);
		

		
		if(i==1)
		{
			System.out.println("insert success");
			
			response.sendRedirect("join_success.jsp");
		}else {
			System.out.println("insert fail");
		
			
			response.sendRedirect("join.jsp");
		}
		}catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			response.sendRedirect("join.jsp");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			response.sendRedirect("join.jsp");
		}
	
	}
	
	

}
