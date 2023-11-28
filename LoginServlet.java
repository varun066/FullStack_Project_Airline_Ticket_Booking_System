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


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		try {
			PrintWriter out=response.getWriter();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/AirlineTicketBooking", "root", "PHW#84#jeor");
			String useremail=request.getParameter("useremail");
			String cuserpass=request.getParameter("cuserpass");
			PreparedStatement ps=con.prepareStatement("select * from Registration where email=? and cpassword=?");
			ps.setString(1, useremail);
			ps.setString(2, cuserpass);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				//out.println("success");
				out.println("<script>alert('Login successfull!!');</script>");
				
				response.sendRedirect("index.jsp");
				//RequestDispatcher rd=request.getRequestDispatcher("airline.jsp");
				//rd.include(request, response);
				
			}
			else {
				//out.println("Failure");
				out.println("<script>alert('Wrong Username or Password<br>TRY AGAIN');</script>");
				response.sendRedirect("login.jsp");
				//RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
				//rd.include(request, response);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
