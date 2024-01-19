package com.LoginPage;

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
import javax.servlet.http.HttpSession;

@WebServlet("/profile")
public class ARegister extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String pass = req.getParameter("pass");
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Login_Page", "root", "root");
            
			PreparedStatement ps = con.prepareStatement("select * from register where U_email = ? and U_password = ?");
			ps.setString(1, email);
			ps.setString(2, pass);
	
			ResultSet rs = ps.executeQuery();
			
			if(rs.next())
			{
				HttpSession session = req.getSession();
				session.setAttribute("name", name);
				
				RequestDispatcher rd = req.getRequestDispatcher("portindex.jsp");
				rd.include(req, res);
			}
			else
			{
				RequestDispatcher rd = req.getRequestDispatcher("LoginPage.jsp");
				rd.include(req, res);
				out.println("<script> alert(\"Email ID and Password are not matched please log in first\");</script>");

			}
			
		}
		catch(Exception e) {
			
			e.printStackTrace();
			out.println("<h1> Exception accurd "+e.getMessage()+" </h1>");
			RequestDispatcher rd = req.getRequestDispatcher("LoginPage.jsp");
			rd.include(req, res);
			
		}
	}

}
