package com.construction.operation;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.construction.dbconnect.ConnectDB;

/**
 * Servlet implementation class AddEngineer
 */
public class AddEngineer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddEngineer() {
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
		doGet(request, response);
		
		
		
		String name=request.getParameter("name");
		String mobile=request.getParameter("mobile");
		String em=request.getParameter("email");	
		String dept=request.getParameter("dept");
		String pname=request.getParameter("prjname");
		String pass=request.getParameter("pass");
		try
		{
			Connection con=ConnectDB.getConnect();
			PreparedStatement s1=con.prepareStatement("insert into engineer values(?,?,?,?,?,?,?)");
			s1.setInt(1,0);
			s1.setString(2, name);
			s1.setString(3, mobile);
			s1.setString(4, em);
			
			s1.setString(5, dept);
			s1.setString(6,pname);
			s1.setString(7,pass);
			int i=s1.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("success.html");
			}
			else
			{
				response.sendRedirect("addEng.html");
			}
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}


	}

}
