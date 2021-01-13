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
import javax.servlet.http.HttpSession;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet 
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		int hotelid=Integer.parseInt(req.getParameter("hotelid"));
		String hotelname=req.getParameter("hotelname");
		float price=Float.parseFloat(req.getParameter("hotelprice"));
		
		
		HttpSession hs=req.getSession();
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","root");
			PreparedStatement ps=con.prepareStatement("update hotel set hotelname=?,hotelprice=? where hotelid=?");
			ps.setString(1,hotelname);
			ps.setFloat(2, price);
			ps.setInt(3, hotelid);
			ps.execute();
			PrintWriter out=resp.getWriter();
			hs.setAttribute("msg", "hotel Updated Successfully!!!");
			hs.setAttribute("pagename", "hotel.jsp");
			hs.setAttribute("type", "success");
			resp.sendRedirect("popup.jsp");
		}
		catch (Exception e) 
		{
			System.out.println(e);
		}
	}
}
