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
 * Servlet implementation class AdminReporting
 */
public class AdminReporting extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminReporting() {
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
		
		
		
		String rt=request.getParameter("rdate");
		String asg=request.getParameter("assigner");
		String wth=request.getParameter("weather");
		String wthi=request.getParameter("weatherimpact");
		String acc=request.getParameter("accident");
		String in=request.getParameter("injuri");
		String wd=request.getParameter("workdone");
		String equ=request.getParameter("equipment");
		String dlv=request.getParameter("delivery");
		String qua=request.getParameter("quality");
		try
		{
			Connection con=ConnectDB.getConnect();
			PreparedStatement s1=con.prepareStatement("insert into reporting values(?,?,?,?,?,?,?,?,?,?,?)");
			int eid=SetGet.getEmpid();
			s1.setInt(1,eid);
			
			s1.setString(2,rt);
			s1.setString(3,asg);
			s1.setString(4, wth);
			s1.setString(5, wthi);
			s1.setString(6,acc);
			s1.setString(7, in);
			s1.setString(8,wd);
			s1.setString(9,equ);
			s1.setString(10,dlv);
			s1.setString(11,qua);
			int i=s1.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("success1.html");
			}
			else
			{
				response.sendRedirect("adminReporting.html");
			}
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

		


	}

}
