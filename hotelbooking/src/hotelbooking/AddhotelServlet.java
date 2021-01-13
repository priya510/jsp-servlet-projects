package hotelbooking;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/AddhotelServlet")
@MultipartConfig(maxFileSize=99999999999L)
public class AddhotelServlet extends HttpServlet 
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		
		String hotelname=req.getParameter("hotelname");
		
		
		float hotelprice=Float.parseFloat(req.getParameter("hotelprice"));
	
		Part part=req.getPart("image");
		InputStream is=part.getInputStream();
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","root");
			PreparedStatement ps=con.prepareStatement("insert into hotel (hotelname,hotelprice,image) values(?,?,?)");
			ps.setString(1, hotelname);
			
			ps.setFloat(2, hotelprice);
		
			ps.setBlob(3, is);
			ps.executeUpdate();
			PrintWriter out=resp.getWriter();
			out.println("<script>"
					+ "alert('hotel Added Successfully!!!');"
					+ "window.location='hotel.jsp'"
					+ "</script>");
		}
		catch (Exception e) 
		{
			System.out.println(e);
		}
	}
}
