<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.Msets1.dbconnection.DBconnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Connection con=DBconnection.getConnection();
PreparedStatement ps=con.prepareStatement("select phaseID,phaseName from tblmasterprojectphases");
ResultSet rs=ps.executeQuery();
PreparedStatement ps1=con.prepareStatement("select siteID,siteName from tblorgsite");
ResultSet rs1=ps1.executeQuery();

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MasterPhaseTasks.jsp' starting page</title>
    
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
  <br>
  <hr color="red">
  <body bgcolor="pink">
<center><h2><font face="Engravers MT">Master Phase Tasks</font></h2></center>
<hr color="red">
   <form action="SetUpMasterPhaseTasks">
   <table align="center" border="9" bgcolor="white">
     <tr><td><font face="Arial Rounded MT Bold" size="2">PhaseId</font></td><td><select name="phaseid">
    <option>--select--</option>
    <%while(rs.next()){ %>
    <option value="<%=rs.getInt(1) %>"><%=rs.getString(2) %></option>
    <%} %>
    </select>
   <tr><td><font face="Arial Rounded MT Bold" size="2">SiteId</font></td><td><select name="siteid">
    <option>--select--</option>
    <%while(rs1.next()){ %>
    <option value="<%=rs1.getInt(1) %>"><%=rs1.getString(2) %></option>
    <%} %>
    </select>
   
     <tr><td><font face="Arial Rounded MT Bold" size="2">TaskName</font></td><td><input type="text" name="taskname"></td></tr>
      <tr><td><font face="Arial Rounded MT Bold" size="2">Details</font></td><td><input type="text" name="details"></td></tr>
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
