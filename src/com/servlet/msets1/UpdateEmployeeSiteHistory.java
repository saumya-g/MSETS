package com.servlet.msets1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Msets1.dbconnection.DBconnection;

public class UpdateEmployeeSiteHistory extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		Connection con=null;
		DBconnection db=new DBconnection();
		try
		{
	 con =db.getConnection();
	 PreparedStatement ps=con.prepareStatement("update tblemployeesitehistory set disignation=?, startdate=?, enddate=?, status=? where historyid=?");
	 ps.setString(1,request.getParameter("disignation"));
	 ps.setString(2,request.getParameter("startdate"));
	 ps.setString(3,request.getParameter("enddate"));
	 ps.setString(4,request.getParameter("status"));
	 ps.setString(5,request.getParameter("historyid"));
	 int i=ps.executeUpdate();
	 
	 if(i>0)
	 {
		 RequestDispatcher rd = request.getRequestDispatcher("jsp/ViewEmployeeSiteHistory.jsp");
		 rd.forward(request,response);
	 }
	 else{
		 
		 RequestDispatcher rd = request.getRequestDispatcher("jsp/failure.jsp");
		 rd.forward(request,response); 
	 }
	
	
			
		}catch (Exception e) 
		{
			e.printStackTrace();
		}
	}

}
