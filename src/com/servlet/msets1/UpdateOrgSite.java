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


public class UpdateOrgSite extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		Connection con=null;
		DBconnection db=new DBconnection();
		try
		{
	 con =db.getConnection();
	 PreparedStatement ps=con.prepareStatement("update tblorgsite set sitename=?, siteinchargeuserid=?, siteinchargename=?, contactnumber=?, addressdetails=?,contactdetails=?, status=? where siteid=?");
	 ps.setString(1,request.getParameter("sitename"));
	 ps.setString(2,request.getParameter("siteinchargeuserid"));
	 ps.setString(3,request.getParameter("siteinchargename"));
	 ps.setString(4,request.getParameter("contactnumber"));
	 ps.setString(5,request.getParameter("addressdetails"));
	 ps.setString(6,request.getParameter("contactdetails"));
	 ps.setString(7,request.getParameter("status"));
	 ps.setString(8,request.getParameter("siteid"));
	 int i=ps.executeUpdate();
	 
	 if(i>0)
	 {
		 RequestDispatcher rd = request.getRequestDispatcher("jsp/ViewOrgSite.jsp");
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
