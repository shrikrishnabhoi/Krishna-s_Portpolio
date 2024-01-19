package com.LoginPage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/register")
public class LoginP extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		String myname = req.getParameter("name1");
		String Email = req.getParameter("email1");
		String pass = req.getParameter("pass1");
		String gender = req.getParameter("gender");
		String city = req.getParameter("city1");
		
		int num = (int) Math.random();
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Login_Page", "root", "root");
			
			PreparedStatement ps = con.prepareStatement("insert into register values (?, ?, ?, ?, ?, ?)");
			ps.setInt(1, num);
			ps.setString(2, myname);
			ps.setString(3, Email);
			ps.setString(4, pass);
			ps.setString(5, gender);
			ps.setString(6, city);
			
			int count = ps.executeUpdate();
			if(count > 0) {
				
//				out.println("<h1 style='color:green'> Wecome "+ myname +"</h1>");
				HttpSession session = req.getSession();
				session.setAttribute("name", myname);
				
				HttpSession session2 = req.getSession();
				session2.setAttribute("email", Email);
				
				HttpSession session4 = req.getSession();
				session4.setAttribute("gender", gender);
				
				HttpSession session5 = req.getSession();
				session5.setAttribute("city", city);
				
				RequestDispatcher rd = req.getRequestDispatcher("portindex.jsp");
				rd.include(req, res);
				
			}
			else {
				out.println("<h1 style='color:red'> Somthing goes wrong please try again </h1>");
				RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
				rd.include(req, res);
				
			}
		   
		}
		catch (Exception e) {
			e.printStackTrace();
			out.println("<script> alert(\"exception Accurd see : "+ e.getMessage()+"\"); </script>");
			RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
			rd.include(req, res);
		
	}
  }
}
