package airline;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		
		String username=request.getParameter("username");
		String useremail=request.getParameter("useremail");
		String userpass=request.getParameter("userpass");
		String cuserpass=request.getParameter("cuserpass");
		
	try {
		
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/AirlineTicketBooking", "root", "PHW#84#jeor");
		
		PreparedStatement ps=con.prepareStatement("insert into Registration values(?,?,?,?)");
		ps.setString(1, username);
		ps.setString(2, useremail);
		ps.setString(3, userpass);
		ps.setString(4, cuserpass);
		
		
		
		int count=ps.executeUpdate();
 
		if(count>0) {
			
			out.println("<script>alert('User registered successfull!!');</script>");
			
			RequestDispatcher rd=request.getRequestDispatcher("/login.jsp");
		rd.include(request, response);
		}
		else {
			
			out.println("<script>alert('User not registered due to some error<br>TRY AGAIN');</script>");
			
				
		RequestDispatcher rd=request.getRequestDispatcher("/Register.jsp");
			rd.include(request, response);
		}
		}
	catch(Exception e) {
		out.println(e);

	}
		
	}

}
