<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'emp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor="pink">
  <center></center>
  <br>
  
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  
    <table align="center">
    <tr><td><a href="jsp/SetUpEmployeeTimeSheet.jsp"><font color="007700" size="5">SetUpEmployeeTimeSheet</font></a></td></tr>
    
    <br>
    <tr><td><a href="jsp/ViewEmployeeTimeSheet.jsp"><font color="007700" size="5">View/UpdateEmployeeTimeSheet</font></a></td></tr>
    <br>
    <tr><td><a href="jsp/SetUpEmployeeVacation.jsp"><font color="007700" size="5">SetUpEmployeeVacation</font></a></td></tr>
    <br>
    <tr><td><a href="jsp/ViewEmployeeVacation.jsp"><font color="007700" size="5">View/UpdateEmployeeVacation</font></a></td></tr>
      
    
    
    </table>
  
  </body>
</html>
