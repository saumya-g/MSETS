<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'UpdateMasterPhaseTasks.jsp' starting page</title>
    
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
<center><h2>Update Master Phase Tasks</h2></center>
   <form action="UpdateMasterPhaseTasks">
   <table align="center" border="6" bgcolor="pink">
   <tr><td>PhaseTaskId</td><td><input type="text" name="phasetaskid" value="<%=request.getParameter("phasetaskid") %>"readonly="readonly"></td></tr>
     <tr><td>PhaseId</td><td><input type="text" name="phaseid" value="<%=request.getParameter("phaseid") %>"readonly="readonly"></td></tr>
   <tr><td>SiteId</td><td><input type="text" name="siteid" value="<%=request.getParameter("siteid") %>"readonly="readonly">
     <tr><td>TaskName</td><td><input type="text" name="taskname" value="<%=request.getParameter("taskname") %>"></td></tr>
      <tr><td>Details</td><td><input type="text" name="details" value="<%=request.getParameter("details") %>"></td></tr>
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
