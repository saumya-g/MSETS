<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.Msets1.dbconnection.DBconnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Connection con=DBconnection.getConnection();
PreparedStatement ps=con.prepareStatement("select userID,userType from tblmasterusers");
ResultSet rs=ps.executeQuery();
PreparedStatement ps1=con.prepareStatement("select siteID,siteName from tblorgsite");
ResultSet rs1=ps1.executeQuery();
PreparedStatement ps2=con.prepareStatement("select e.employeeTaskID,m.taskName from tblemployeetasks e,tblmasterphasetasks m where e.phaseID = m.phaseID ");
ResultSet rs2=ps2.executeQuery();
PreparedStatement ps3=con.prepareStatement("select projectID,projectName from tblmasterprojects");
ResultSet rs3=ps3.executeQuery();
PreparedStatement ps4=con.prepareStatement("select phaseID,phaseName from tblmasterprojectphases");
ResultSet rs4=ps4.executeQuery();
PreparedStatement ps5=con.prepareStatement("select phaseTaskID,taskName from tblmasterphasetasks");
ResultSet rs5=ps5.executeQuery();



%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'SetUpEmployeeTimeSheet.jsp' starting page</title>
    
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
  
  <body bgcolor="pink">
  <br>
  <hr color="red">
  
   <center><h2><font face="Engravers MT">Employee Time Sheet</font></h2></center>
   <hr color="red">
   <form action="SetUpEmployeeTimeSheet">
   <table align="center" border="9" bgcolor="white">
    <tr><td><font face="Arial Rounded MT Bold" size="2">UserId</font></td><td><select name="userid">
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
       <tr><td><font face="Arial Rounded MT Bold" size="2">EmployeeTaskID</font></td><td><select name="employeetaskid">
    <option>--select--</option>
    <%while(rs2.next()){ %>
    <option value="<%=rs2.getInt(1) %>"><%=rs2.getString(2) %></option>
    <%} %>
    </select>
     <tr><td><font face="Arial Rounded MT Bold" size="2">ProjectID</font></td><td><select name="projectid">
    <option>--select--</option>
    <%while(rs3.next()){ %>
    <option value="<%=rs3.getInt(1) %>"><%=rs3.getString(2) %></option>
    <%} %>
    </select>
     <tr><td><font face="Arial Rounded MT Bold" size="2">PhaseID</font></td><td><select name="phaseid">
    <option>--select--</option>
    <%while(rs4.next()){ %>
    <option value="<%=rs4.getInt(1) %>"><%=rs4.getString(2) %></option>
    <%} %>
    </select>
     <tr><td><font face="Arial Rounded MT Bold" size="2">PhaseTaskID</font></td><td><select name="phsetaskid">
    <option>--select--</option>
    <%while(rs5.next()){ %>
    <option value="<%=rs5.getInt(1) %>"><%=rs5.getString(2) %></option>
    <%} %>
    </select>
  
    
   <tr><td><font face="Arial Rounded MT Bold" size="2">NumberOfHours</font></td><td><input type="text" name="numberofhours"></td></tr>
     <tr><td><font face="Arial Rounded MT Bold" size="2">StartDateTime</font></td><td><input type="text" name="startdatetime"></td></tr>
     <tr><td><font face="Arial Rounded MT Bold" size="2">EndDateTime</font></td><td><input type="text" name="enddatetime"></td></tr>
        <tr><td><font face="Arial Rounded MT Bold" size="2">WorkHours</font></td><td><input type="text" name="workhours"></td></tr>
      
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
