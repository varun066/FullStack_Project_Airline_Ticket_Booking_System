package airline;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/bookticketServlet")
public class bookticketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
	
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		
		String Flight=request.getParameter("Flight");
		String from=request.getParameter("from");
		String to=request.getParameter("to");
		String departuredate=request.getParameter("departuredate");
		String returndate=request.getParameter("returndate");
		int passengers = Integer.parseInt(request.getParameter("passengers"));
		String classname=request.getParameter("classname");
		
	try {
		
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/AirlineTicketBooking", "root", "PHW#84#jeor");
		
		PreparedStatement ps=con.prepareStatement("insert into bookingdetails values(?,?,?,?,?,?,?)");
		ps.setString(1, Flight);
		ps.setString(2, from);
		ps.setString(3, to);
		ps.setString(4, departuredate);
		ps.setString(5, returndate);
		ps.setInt(6, passengers);
		ps.setString(7, classname);
		
		
		
		int count=ps.executeUpdate();

		if(count>0) {
			//out.println("successfull");
			
			out.println("<script>alert('Ticket Booked successfull!!');</script>");
			
			
//			RequestDispatcher rd=request.getRequestDispatcher("/bookingdetails.jsp");
//		rd.include(request, response);
		}
		else {
			
			out.println("<script>alert('ticket not booked due to some error<br>TRY AGAIN');</script>");
//			
//		RequestDispatcher rd=request.getRequestDispatcher("/Register.jsp");
//			rd.include(request, response);
		}
		}
	catch(Exception e) {
		out.println(e);

	}
		
		
	}

}
