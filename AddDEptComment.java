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
 * Servlet implementation class AddDEptComment
 */
public class AddDEptComment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddDEptComment() {
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
		
		
       int cid=Integer.parseInt(request.getParameter("cid"));
		
		String com=request.getParameter("comment");
		
		try
		{
			Connection con=ConnectDB.getConnect();
			PreparedStatement s1=con.prepareStatement("insert into depttaskcomment values(?,?,?,?,?)");
			int tid=SetGet.getTid();
			s1.setInt(1,tid);
			s1.setInt(2,cid);
			int pid=SetGet.getPid();
			s1.setInt(3,pid);
			s1.setString(4, com);
			int did=SetGet.getDid();
			s1.setInt(5,did);
			int i=s1.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("success4.html");
			}
			else
			{
				response.sendRedirect("adddeptcomment.html");
			}
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

	}

}
