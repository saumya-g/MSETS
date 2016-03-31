<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'UpdateOrgSite.jsp' starting page</title>
    
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
   <center><h2>Update Org Site</h2></center>
   <form action="UpdateOrgSite">
   <table align="center" border="6" bgcolor="pink">
   
    <tr><td>SiteId</td><td><input type="text" name="siteid" value="<%=request.getParameter("siteid") %>" readonly="readonly">
 
    <tr><td>OrgId</td><td><input type="text" name="orgid" value="<%=request.getParameter("orgid") %>" readonly="readonly">
    <tr><td>SiteName</td><td><input type="text" name="sitename" value="<%=request.getParameter("sitename") %>"></td></tr>
    <tr><td>LocationID</td><td><input type="text" name="locationid" value="<%=request.getParameter("locationid") %>">
     <tr><td>SiteInchargeUserID</td><td><input type="text" name="siteinchargeuserid" value="<%=request.getParameter("siteinchargeuserid") %>"></td></tr>
     <tr><td>SiteInchargeName</td><td><input type="text" name="siteinchargename" value="<%=request.getParameter("siteinchargename") %>"></td></tr>
	 <tr><td>ContactNumber</td><td><input type="text" name="contactnumber" value="<%=request.getParameter("contactnumber") %>"></td></tr>
	 <tr><td>AddressDetails</td><td><input type="text" name="addressdetails" value="<%=request.getParameter("addressdetails") %>"></td></tr>
	 <tr><td>ContactDetails</td><td><input type="text" name="contactdetails" value="<%=request.getParameter("contactdetails") %>"></td></tr>
     
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
