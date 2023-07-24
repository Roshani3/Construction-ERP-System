package com.construction.operation;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.construction.dbconnect.ConnectDB;
import com.construction.dbconnect.SetGet;

/**
 * Servlet implementation class AddResEmp
 */
public class AddResEmp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddResEmp() {
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
		
		
		
		String name=request.getParameter("ename");
		try
		{
			Connection con=ConnectDB.getConnect();
			PreparedStatement s1=con.prepareStatement("insert into resemp values(?,?,?)");
			s1.setInt(1,0);
			int id=SetGet.getPid();
			s1.setInt(2, id);
			s1.setString(3, name);
			
			int i=s1.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("success3.html");
			}
			else
			{
				response.sendRedirect("addProject.html");
			}
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}


		
		
		
		
	}

}
