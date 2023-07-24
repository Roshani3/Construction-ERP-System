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
 * Servlet implementation class AddEmpTask
 */
public class AddEmpTask extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddEmpTask() {
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
		
		int eid=Integer.parseInt(request.getParameter("eid"));
		String title=request.getParameter("title");
		String assigner=request.getParameter("assigner");
		String priority=request.getParameter("priority");
		String location=request.getParameter("location");
		String startdate=request.getParameter("startdate");
		String enddate=request.getParameter("enddate");
		String manreq=request.getParameter("manreq");
		String resemp=request.getParameter("resemp");
		try
		{
			Connection con=ConnectDB.getConnect();
			PreparedStatement s1=con.prepareStatement("insert into emptask values(?,?,?,?,?,?,?,?,?,?,?)");
			s1.setInt(1,0);
			int pid=SetGet.getPid();
			s1.setInt(2,pid);
			s1.setInt(3,eid);
			s1.setString(4, title);
			s1.setString(5, assigner);
			s1.setString(6,priority);
			s1.setString(7, location);
			s1.setString(8,startdate);
			s1.setString(9,enddate);
			s1.setString(10,manreq);
			s1.setString(11,resemp);
			int i=s1.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("success3.html");
			}
			else
			{
				response.sendRedirect("addemptask.html");
			}
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

		

		
	}

		
		
		
	}


