package com.LoginPage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Profile")
public class Profile extends HttpServlet {
	
	protected void get(HttpServletRequest req, HttpServletResponse res) throws ServletException, Exception {
		
		PrintWriter out = res.getWriter();
		
		Class.forName("com.mysql.jdbc.Driver");
		
		//Create Connection with Object
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login_page", "root", "root");
		
		//Create statement
		String query = "select * from  register";
		
		PreparedStatement pt = con.prepareStatement(query);
		
		ResultSet rs = pt.executeQuery();
		while(rs.next()) {
			out.println(rs.getInt(1) + " " + rs.getString(2) + " " + rs.getString(3)+ " " + rs.getString(4) + " " + rs.getString(5) + rs.getString(6));
		}
		
	}

}
