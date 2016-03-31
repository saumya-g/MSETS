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

public class SetUpOrgSite extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		Connection con = null;
		DBconnection db = new DBconnection();
		try
		{
			con=db.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into tblorgsite (orgID, siteName, locatonID, siteInChargeUserID, siteInChargeName, contactNumber, addressDetails, contactDetails, status) values (?,?,?,?,?,?,?,?,?)");
			ps.setString(1,request.getParameter("orgid"));
			ps.setString(2,request.getParameter("sitename"));
			ps.setString(3,request.getParameter("locationid"));
			ps.setString(4,request.getParameter("siteinchargeuserid"));
			ps.setString(5,request.getParameter("siteinchargename"));
			ps.setString(6,request.getParameter("contactnumber"));
			ps.setString(7,request.getParameter("addressdetails"));
			ps.setString(8,request.getParameter("contactdetails"));
			ps.setString(9,request.getParameter("status"));
			int i = ps.executeUpdate();
			 if(i>0)
			 {
				 RequestDispatcher rd = request.getRequestDispatcher("jsp/SetUpOrgSite.jsp");
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


