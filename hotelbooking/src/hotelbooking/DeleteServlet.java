package hotelbooking;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		int hotelid=Integer.parseInt(req.getParameter("hotelid"));
		
		try
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","root");
			PreparedStatement ps=con.prepareStatement("delete from hotel where hotelid=?");
			ps.setInt(1, hotelid);
			ps.executeUpdate();
			PrintWriter out=resp.getWriter();
			resp.sendRedirect("hotel.jsp");
		}
		catch (Exception e) 
		{
			System.out.println(e);
		}
	}
}
