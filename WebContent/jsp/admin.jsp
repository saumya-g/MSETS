<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'admin.jsp' starting page</title>
    
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
    <table align="center">
  
    <tr><td><a href="jsp/SetUpMasterOrganization.jsp" ><font color="007700" size="5">SetupMasterOrganizations</font></a></td></tr>
     <tr><td><a href="jsp/ViewMasterOrganization.jsp"><font color="007700" size="5">View/UpdateMasterOrganizations</font></a></td></tr>

    <tr><td><a href="jsp/SetUpMasterUsers.jsp"><font color="007700" size="5">SetupUsers</font></a></td></tr>

    <tr><td><a href="jsp/ViewMasterUsers.jsp"><font color="007700" size="5">View/UpdateMasterUsers</font></a></td></tr>
    
    </table>
    
  </body>
</html>
