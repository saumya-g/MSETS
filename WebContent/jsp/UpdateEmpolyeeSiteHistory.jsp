<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'UpdateEmpolyeeSiteHistory.jsp' starting page</title>
    
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
</script>

  </head>
  
  <body>
   <body bgcolor="900bc054">
  <center><h2>Employee Site History</h2></center>
   <form action="UpdateEmployeeSiteHistory">
   <table align="center" border="6" bgcolor="pink">
   
    <tr><td>HistoryId</td><td><input type="text" name="historyid" value="<%=request.getParameter("historyid") %>" readonly="readonly"></td></tr>
    <tr><td>SiteId</td><td><input type="text" name="siteid" value="<%=request.getParameter("siteid") %>" readonly="readonly"></td></tr>
     <tr><td>UserId</td><td><input type="text" name="userid" value="<%=request.getParameter("userid") %>" readonly="readonly"></td></tr>
   <tr><td>Disignation</td><td><input type="text" name="disignation" value="<%=request.getParameter("disignation") %>"></td></tr>
     <tr><td>Startdate</td><td><input type="text" name="startdate" value="<%=request.getParameter("startdate") %>"></td></tr>
        <tr><td>Enddate</td><td><input type="text" name="enddate" value="<%=request.getParameter("enddate") %>"></td></tr>
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
