<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'UpdateOrgLocation.jsp' starting page</title>
    
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
  <body bgcolor="900bc054">
     <center><h2>Update Org Location</h2></center>
   <form action="UpdateOrgLocation">
   <table align="center" border="6" bgcolor="pink">
    <tr><td>LocationId</td><td><input type="text" name="locationid" value="<%=request.getParameter("locationid") %>" readonly="readonly"></td></tr>
    <tr><td>OrgId</td><td><input type="text" name="orgid" value="<%=request.getParameter("orgid") %>" readonly="readonly"></td></tr>
    <tr><td>LocationName</td><td><input type="text" name="locationname" value="<%=request.getParameter("locationname") %>"></td></tr>
     <tr><td>City</td><td><input type="text" name="city" value="<%=request.getParameter("city") %>"></td></tr>
     <tr><td>State</td><td><input type="text" name="state" value="<%=request.getParameter("state") %>"></td></tr>
	 <tr><td>Country</td><td><input type="text" name="country" value="<%=request.getParameter("country") %>"></td></tr>
     <tr><td>Status</td><td><input type="radio" name="status" value="active" checked="checked">Active<input type="radio" name="status" value="inactive">Inactive</td></tr>
     <tr><td colspan="2" align="center"><input type="submit" value="SUBMIT"><input type="reset" value="RESET"></td></tr>
  
    </table>
    </form>
     <table align="center">
    <tr><td><input type="button" value="back" onclick="fun()"></td></tr>
    <tr><td><input type="button" value="home" onclick="fun1()"></td></tr>
    </table>
  
  </body>
</html>
