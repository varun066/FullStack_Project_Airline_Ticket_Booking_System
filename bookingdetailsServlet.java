package airline;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/bookingdetailsServlet")
public class bookingdetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		 response.setContentType("text/html;charset=UTF-8");
	        PrintWriter out = response.getWriter();

	        

	        try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/AirlineTicketBooking", "root",
	                    "PHW#84#jeor");
	            
	            out.println("<link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\" />");

	            PreparedStatement ps = con.prepareStatement("select * from bookingdetails ");
	            
	            
	            out.println("<table width=75% border=1>");
	            out.println("<caption>Booking details : </caption>");

	            ResultSet rs = ps.executeQuery();
	            ResultSetMetaData rsmd = rs.getMetaData();
	            int totalcoulmn = rsmd.getColumnCount();

	            if (rs.next()) {
	                out.println("<tr>");
	                for (int i = 1; i <= totalcoulmn; i++) {
	                    out.println("<th>" + rsmd.getColumnName(i) + "</th>");
	                }
	                out.println("</tr>");

	                
	                do {
	                    out.println("<tr><td>" + rs.getString(1) + "</td><td>" + rs.getString(2) + "</td><td>"
	                            + rs.getString(3) + "</td><td>" + rs.getString(4) + "</td><td>" + rs.getString(5)
	                            + "</td><td>" + rs.getInt(6) + "</td><td>" + rs.getString(7) + "</td></tr>");

	                } while (rs.next());
	            } else {
	                out.println("<tr><td colspan='" + totalcoulmn + "'>No flights available</td></tr>");
	            }
	            out.println("</table>");

	        } catch (Exception e) {
	            e.printStackTrace();
	        }
		
	}

}
