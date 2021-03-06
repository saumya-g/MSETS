package com.servlet.msets1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Msets1.dbconnection.DBconnection;

public class SetUpMasterUsers extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		Connection con=null;
		DBconnection db=new DBconnection();
		try
		{
	 con =db.getConnection();
	 PreparedStatement ps=con.prepareStatement("insert into tblmasterusers(userType, firstName, lastName, phone, mobile, email, loginID, pwd, status) values(?,?,?,?,?,?,?,?,?)");
	 ps.setString(1,request.getParameter("usertype"));
	 ps.setString(2,request.getParameter("firstname"));
	 ps.setString(3,request.getParameter("lastname"));
	 ps.setString(4,request.getParameter("phone"));
	 ps.setString(5,request.getParameter("mobile"));
	 ps.setString(6,request.getParameter("email"));
	 ps.setString(7,request.getParameter("loginid"));	
	 ps.setString(8,request.getParameter("pwd"));
	 ps.setString(9,request.getParameter("status"));
	 int i=ps.executeUpdate();
	 
	 if(i>0)
	 {
		 RequestDispatcher rd = request.getRequestDispatcher("jsp/SetUpMasterUsers.jsp");
		 rd.forward(request,response);
	 }
	 else{
		 
		 RequestDispatcher rd = request.getRequestDispatcher("jsp/failure.jsp");
		 rd.forward(request,response); 
	 }
	
		
	    	}catch (Exception e) {

	    	e.printStackTrace();
	    	}

}
}