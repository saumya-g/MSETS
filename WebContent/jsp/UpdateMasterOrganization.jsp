<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'UpdateMasterOrganization.jsp' starting page</title>
    
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
  
   <body bgcolor="900bc054">
    <center><h2>Update Master Organization</h2></center>
   <form action="UpdateMasterOrganization">
   <table align="center" border="1" bgcolor="pink">
   
    <tr><td>OrgID</td><td><input type="text" name="orgid" value="<%=request.getParameter("orgid") %>" readonly="readonly" ></td></tr>
 
    <tr><td>orgName</td><td><input type="text" name="orgname" value="<%=request.getParameter("orgname") %>"></td></tr>
     <tr><td>AddressDetails</td><td><input type="text" name="addressdetails" value="<%=request.getParameter("addressdetails") %>"></td></tr>
      <tr><td>ContactDetails</td><td><input type="text" name="contactdetails" value="<%=request.getParameter("contactdetails") %>"></td></tr>
       <tr><td>Status</td><td><input type="radio" name="status" value="active" checked="checked">Active<input type="radio" name="status" value="inactive">Inactive</td></tr>
  		<tr><td colspan="2" align="center"><input type="submit" value="SUBMIT"><input type="reset" value="RESET"></td></tr>
  
    </table>
    </form>
   <table align="center">
    <tr><td><input type="button" value="back" onclick="fun()"></td></tr>
    </table>
  </body>
</html>
