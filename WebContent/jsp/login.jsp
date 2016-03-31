<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body bgcolor="skyblue">
  <center><h2><font color="red" face="Engravers MT">LOGIN PAGE</font></h2></center>
   <hr color="green">
   
  <br>
  <br>
  <br>
   <form action="LoginServlet">
   <table align="center" border="9" bgcolor="pink">
   <tr><td><font face="Lucida Console" size="4">UserType</font></td><td><select name="usertype">
   <option>--select--</option>
   <option value="admin">Admin</option> 
   <option value="org">Org</option>
   <option value="emp">Emp</option> 
   </select></td></tr>
  
        <tr><td><font face="Lucida Console" size="4">LoginID</font></td><td><input type="text" name="loginid"></td></tr>
         <tr><td><font face="Lucida Console " size="4">PWD</font></td><td><input type="password" name="pwd"></td></tr>
          
  			<tr><td colspan="2" align="center"><input type="submit" value="SUBMIT"><input type="reset" value="RESET"></td></tr>
  
  
  
  
  
  
   </table>
   
   </form>
  
  </body>
</html>
