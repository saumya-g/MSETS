<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.Msets1.dbconnection.DBconnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
DBconnection db = new DBconnection();
Connection con=null;
con=db.getConnection();
PreparedStatement ps=con.prepareStatement("select * from tblemployeesitehistory");
ResultSet rs=ps.executeQuery();

 %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ViewEmployeeSiteHistory.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
function fun()
{
window.history.back();
}
function fun1()
{
window.location="jsp/login.jsp"
}
</script>
	

  </head>
  
  <body>
     <body>
  <center>
  <h2><font color="red">View Employee Site History</font></h2>
   <table border="1">
   <tr><th>historyid</th>
   <th>siteid</th>
   <th>userid</th>
   <th>disignation</th>
   <th>startdate</th>
   <th>enddate</th>
   <th>status</th>
   
   <%while(rs.next()){ %>
   
   <tr><td><%=rs.getString(1) %></td>
   <td><%=rs.getString(2) %></td>
   <td><%=rs.getString(3) %></td>
   <td><%=rs.getString(4) %></td>
   <td><%=rs.getString(5) %></td>
   <td><%=rs.getString(6) %></td>
   <td><%=rs.getString(7) %></td>
   <td><a href="jsp/UpdateEmpolyeeSiteHistory.jsp?historyid=<%=rs.getString(1) %>&siteid=<%=rs.getString(2) %>&userid=<%=rs.getString(3) %>&disignation=<%=rs.getString(4) %>&startdate=<%=rs.getString(5) %>&enddate=<%=rs.getString(6) %>&status=<%=rs.getString(7) %>">update</a>
   
   
   <%} %>
   </table>
   </center>
    <table align="center">
    <tr><td><input type="button" value="back" onclick="fun()"></td></tr>
     <tr><td><input type="button" value="home" onclick="fun1()"></td></tr>
    </table>
  </body>
</html>
