<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'UpdateProjectsPhaseTasks.jsp' starting page</title>
    
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
  
  <body bgcolor="900bc054">
   <center><h2>Projects Phase Tasks</h2></center>
   <form action="UpdateProjectsPhaseTasks">
   <table align="center" border="6" bgcolor="pink">
     <tr><td>ProjectId</td><td><input type="text" name="projectid" value="<%=request.getParameter("projectid") %>" readonly="readonly"></td></tr>
    
      <tr><td>PhaseTaskId</td><td><input type="text" name="phasetaskid" value="<%=request.getParameter("phasetaskid") %>" readonly="readonly"></td></tr>
    
   
     <tr><td>PhaseTaskName</td><td><input type="text" name="phasetaskname" value="<%=request.getParameter("phasetaskname") %>"></td></tr>
     <tr><td>Startdate</td><td><input type="text" name="startdate" value="<%=request.getParameter("startdate") %>"></td></tr>
        <tr><td>Enddate</td><td><input type="text" name="enddate" value="<%=request.getParameter("enddate") %>"></td></tr>
          <tr><td>Status</td><td><input type="radio" name="status" value="active" checked="checked">Active<input type="radio" name="status" value="inactive" checked="checked">Inactive</td></tr>
  			<tr><td colspan="2" align="center"><input type="submit" value="SUBMIT"><input type="reset" value="RESET"></td></tr>
  </table>
  </form>
   <table align="center">
    <tr><td><input type="button" value="back" onclick="fun()"></td></tr>
    <tr><td><input type="button" value="home" onclick="fun1()"></td></tr>
    </table>
</html>
