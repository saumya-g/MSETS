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
DBconnection db=new DBconnection();
Connection con=null;
con=db.getConnection();
PreparedStatement ps=con.prepareStatement("select * from tblmasterusers");
ResultSet rs=ps.executeQuery();


 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ViewMasterUsers.jsp' starting page</title>
    
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
</script>

  </head>
  
  <body>
  <center>
  <h2><font color="red">View User</font></h2>
   <table border="1">
   <tr><th>userid</th>
   <th>usertype</th>
   <th>firstname</th>
   <th>lastname</th>
   <th>phone</th>
   <th>mobile</th>
   <th>email</th>
   <th>loginid</th>
   <th>pwd</th>
   <th>status</th>
   
   <%while(rs.next()){ %>
   
   <tr><td><%=rs.getString(1) %></td>
   <td><%=rs.getString(2) %></td>
   <td><%=rs.getString(3) %></td>
   <td><%=rs.getString(4) %></td>
   <td><%=rs.getString(5) %></td>
   <td><%=rs.getString(6) %></td>
   <td><%=rs.getString(7) %></td>
   <td><%=rs.getString(8) %></td>
   <td><%=rs.getString(9) %></td>
   <td><%=rs.getString(10) %></td>
   <td><a href="jsp/UpdateUser.jsp?userid=<%=rs.getString(1) %>&usertype=<%=rs.getString(2) %>&firstname=<%=rs.getString(3) %>&lastname=<%=rs.getString(4) %>&phone=<%=rs.getString(5) %>&mobile=<%=rs.getString(6) %>&email=<%=rs.getString(7) %>&loginid=<%=rs.getString(8) %>&pwd=<%=rs.getString(9) %>&status=<%=rs.getString(10) %>">update</a>
   
   
   <%} %>
   </table>
   <table align="center">
    <tr><td><input type="button" value="back" onclick="fun()"></td></tr>
    <tr><td><input type="button" value="home" onclick="fun1()"></td></tr>
    </table>
   </center>
   </body>
</html>
