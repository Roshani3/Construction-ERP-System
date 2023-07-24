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
 * Servlet implementation class AddDeptTask
 */
public class AddDeptTask extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddDeptTask() {
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
		
		int did=Integer.parseInt(request.getParameter("did"));
		String title=request.getParameter("title");
		String assigner=request.getParameter("assigner");
		String priority=request.getParameter("priority");
		String location=request.getParameter("location");
		String startdate=request.getParameter("startdate");
		String enddate=request.getParameter("enddate");
		String manreq=request.getParameter("manreq");
		String resdept=request.getParameter("resdept");
		try
		{
			Connection con=ConnectDB.getConnect();
			PreparedStatement s1=con.prepareStatement("insert into depttask values(?,?,?,?,?,?,?,?,?,?,?)");
			s1.setInt(1,0);
			int pid=SetGet.getPid();
			s1.setInt(2,pid);
			s1.setInt(3,did);
			s1.setString(4, title);
			s1.setString(5, assigner);
			s1.setString(6,priority);
			s1.setString(7, location);
			s1.setString(8,startdate);
			s1.setString(9,enddate);
			s1.setString(10,manreq);
			s1.setString(11,resdept);
			int i=s1.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("success3.html");
			}
			else
			{
				response.sendRedirect("adddepttask.html");
			}
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

		

		
	}

}
