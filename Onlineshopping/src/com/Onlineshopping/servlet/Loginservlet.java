package com.Onlineshopping.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Loginservlet
 */
@WebServlet("/Loginservlet")
public class Loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Loginservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name,password;
		name=request.getParameter("Username");
		password=request.getParameter("Password");
		
		
		if(name.equals("manpreet1")&& password.equals("pass"))
		{
		response.sendRedirect("AdminPage.jsp");
	    }
		
	
		else{
		
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","manpreet1","pass");
			String str="select * from register2 where UserName=? and UserPass=?";
			PreparedStatement ps=con.prepareStatement(str);
			ps.setString(1, name);
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery();
			System.out.println(name+" has logged in...");
		
	           if(rs.next())
	          {
	           con.close();
	           response.sendRedirect("Product.jsp");
	          }
		
	           else
	          {
		        response.sendRedirect("index.jsp");
	          }
	           
	           
		    }
    
		      catch(Exception e)
		      {
	            e.printStackTrace();
	          }
	  }
    }
}
	
	
	
	
	
	