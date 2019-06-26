package db;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.Connection;

import java.sql.ResultSet;

import java.sql.Statement;

/**
 * Servlet implementation class registerArea
 */
@WebServlet("/registerArea")
public class registerArea extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Connection con;
	private Statement stmt;

	
	
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public registerArea() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doPost");
		actionDo(request, response);
	}

	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		request.setCharacterEncoding("UTF-8");
		

		String city = request.getParameter("city");
		HttpSession session = request.getSession();

		String id = (String) session.getAttribute("id");

		String sql = "insert into memberWithArea values('" +id+ "','" + city + "')";

		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");

			if (con != null) {
				System.out.println("DB접속 완료");
				System.out.println(id);
				System.out.println(city);

			} else
				System.out.println("db접속 실패");

			// 3. Query 실행 준비

			stmt = con.createStatement();
			int i = stmt.executeUpdate(sql);

			if (i == 1) {
				System.out.println("insert success");

				response.sendRedirect("register_area.jsp");
			} else {
				System.out.println("insert fail");

				response.sendRedirect("register_area.jsp");
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			response.sendRedirect("register_area.jsp");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

			response.sendRedirect("register_area.jsp");
		}

	}

}
