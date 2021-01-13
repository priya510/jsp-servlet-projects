package hotelbooking;


import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class registerServlet extends HttpServlet 
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		String username=req.getParameter("username");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		String mobile=req.getParameter("mobile");
		
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","root");
			PreparedStatement ps=con.prepareStatement("insert into users (username,email,password,mobile,role) values(?,?,?,?,?)");
			ps.setString(1, username);
			ps.setString(2, email);
			ps.setString(3, password);
			ps.setString(4, mobile);
            ps.setString(5,"user");  
			ps.executeUpdate();
			Email e=new Email(email, "Registered Sucessfully!!!", "Welcome to Hotel Booking");
			e.sendEmail();
			resp.sendRedirect("login.jsp");
		}
		catch (Exception e) 
		{
			System.out.println(e);
		}
	}
}
