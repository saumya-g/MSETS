<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'UpdateUser.jsp' starting page</title>
    
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
  <center><h2>Update User</h2></center>
   <form action="UpdateUser">
   <table align="center" border="6" bgcolor="pink">
   <tr><td>UserID</td><td><input type="text" name="userid" value="<%=request.getParameter("userid") %>" readonly="readonly"></td></tr>
   <tr><td>UserType</td><td><input type="text" name="usertype" value="<%=request.getParameter("usertype") %>"></td></tr>
   <tr><td>FirstName</td><td><input type="text" name="firstname" value="<%=request.getParameter("firstname") %>"></td></tr>
    <tr><td>LastName</td><td><input type="text" name="lastname" value="<%=request.getParameter("lastname") %>"></td></tr>
     <tr><td>Phone</td><td><input type="text" name="phone" value="<%=request.getParameter("phone") %>"></td></tr>
      <tr><td>Mobile</td><td><input type="text" name="mobile" value="<%=request.getParameter("mobile") %>"></td></tr>
       <tr><td>Email</td><td><input type="text" name="email" value="<%=request.getParameter("email") %>"></td></tr>
        <tr><td>LoginID</td><td><input type="text" name="loginid" value="<%=request.getParameter("loginid") %>"></td></tr>
         <tr><td>PWD</td><td><input type="password" name="pwd" value="<%=request.getParameter("pwd") %>"></td></tr>
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
