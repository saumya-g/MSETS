 package com.servlet.msets1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Msets1.dbconnection.*;

public class LoginServlet extends HttpServlet {

	

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		String usertype= request.getParameter("usertype");
		String loginid=request.getParameter("loginid");
		String pwd=request.getParameter("pwd");
		String status="login";
		String query="select * from tblmasterusers where userType=? and loginID=? and pwd=?";
		try {
			con=DBconnection.getConnection();
			ps =con.prepareStatement(query);
			ps.setString(1,usertype);
		    ps .setString(2, loginid);
			ps.setString(3, pwd);
			rs=ps.executeQuery();
			if(rs.next())
				status=usertype;
			HttpSession ses=request.getSession();
			ses.setAttribute("usertype", status);
			RequestDispatcher rd=request.getRequestDispatcher("jsp/"+status+".jsp");
			rd.forward(request, response);
		} catch (Exception e)
		{
          e.printStackTrace();		
          }
		
		out.close();
	}
}

