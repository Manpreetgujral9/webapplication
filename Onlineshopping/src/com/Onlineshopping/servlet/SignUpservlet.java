package com.Onlineshopping.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SignUpservlet
 */
@WebServlet("/SignUpservlet")
public class SignUpservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpservlet() {
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
		String name,pass,ema,Num;
		name=request.getParameter("UserName");
		pass=request.getParameter("Password");
		ema=request.getParameter("UserEmail");
		Num=request.getParameter("Mobile");
		System.out.println(name+","+pass+","+ema+","+Num);
		//Database code missing 
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","manpreet1","pass");
			String str="insert into register2 values(seq_User1.NEXTVAL,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(str);
			ps.setString(1,name);
			ps.setString(2,pass);
			ps.setString(3,ema);
			ps.setString(4,Num);
			int i=ps.executeUpdate();
			if(i>0)
			{
				System.out.print("You are succesfully  registered..... ");
				response.sendRedirect("Login.jsp");
			}
			else{
				response.sendRedirect("ErrorPage.jsp");
			  }
		}catch(Exception e2)
		{System.out.println(e2);
		}

		
	}

}
