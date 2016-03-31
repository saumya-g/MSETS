<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'UpdateMasterProjects.jsp' starting page</title>
    
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
  <center><h2>Master Projects</h2></center>
   <form action="UpdateMasterProjects">
   <table align="center" border="6" bgcolor="pink">
   <tr><td>ProjectId</td><td><input type="text" name="projectid" value="<%=request.getParameter("projectid") %>" readonly="readonly"></td></tr>
     <tr><td>SiteId</td><td><input type="text" name="siteid" value="<%=request.getParameter("siteid") %>" readonly="readonly"></td></tr>
   <tr><td>ProjectName</td><td><input type="text" name="projectname" value="<%=request.getParameter("projectname") %>"></td></tr>
     <tr><td>StartDate</td><td><input type="text" name="startdate" value="<%=request.getParameter("startdate") %>"></td></tr>
      <tr><td>EndDate</td><td><input type="text" name="enddate" value="<%=request.getParameter("enddate") %>"></td></tr>
      <tr><td>ProjectManager</td><td><input type="text" name="projectmanager" value="<%=request.getParameter("projectmanager") %>"></td></tr>
      <tr><td>ClientName</td><td><input type="text" name="clientname" value="<%=request.getParameter("clientname") %>"></td></tr>
     
          <tr><td>Status</td><td><input type="radio" name="status" value="active" checked="checked">Active<input type="radio" name="status" value="inactive" checked="checked">Inactive</td></tr>
  			<tr><td colspan="2" align="center"><input type="submit" value="SUBMIT"><input type="reset" value="RESET"></td></tr>
  
  
  
  
  
  
   </table>
   
   </form>
  
  <table align="center">
    <tr><td><input type="button" value="back" onclick="fun()"></td></tr>
    <tr><td><input type="button" value="home" onclick="fun1()"></td></tr>
    </table>
  </body>
</html>
