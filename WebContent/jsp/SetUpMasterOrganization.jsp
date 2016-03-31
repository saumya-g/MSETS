<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'SetUpMasterOrganization.jsp' starting page</title>
    
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
window.location="login.jsp"
}
</script>
  </head>
  <br>
  <hr color="yellow">
  <body bgcolor=pink>
    <center><h2><font face="Engravers MT">Master Organization</font></h2></center>
    <hr color="red">
   <form action="SetUpMasterOrganization">
   <table align="center" border="9" bgcolor="white">
    <tr><td><font face="Arial Rounded MT Bold" size="2">orgName</font></td><td><input type="text" name="orgname"></td></tr>
     <tr><td><font face="Arial Rounded MT Bold" size="2">addressDetails</font></td><td><input type="text" name="addressdetails"></td></tr>
      <tr><td><font face="Arial Rounded MT Bold" size="2">contactDetails</font></td><td><input type="text" name="contactdetails"></td></tr>
       <tr><td><font face="Arial Rounded MT Bold" size="2">Status</font></td><td><input type="radio" name="status" value="active">Active<input type="radio" name="status" value="inactive">Inactive</td></tr>
  		<tr><td colspan="2" align="center"><input type="submit" value="SUBMIT"><input type="reset" value="RESET"></td></tr>
  
    </table>
    </form>
    <table align="center">
    <tr><td><input type="button" value="BACK" onclick="fun()"></td></tr>
    <tr><td><input type="button" value="HOME" onclick="fun1()"></td></tr>
    </table>
  </body>
</html>
