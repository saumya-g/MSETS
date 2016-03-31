<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'org.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor="pink">
   <center></center>
    <table align="center">
    <tr><td><a href="jsp/SetUpOrgLocation.jsp"><font color="007700" size="5">SetupOrgLocation</font></a></td></tr>
    <tr><td><a href="jsp/ViewOrgLocation.jsp"><font color="007700" size="5">View/UpdateOrgLocation</font></a></td></tr>
    <tr><td><a href="jsp/SetUpOrgSite.jsp"><font color="007700" size="5">SetUpOrgSite</font></a></td></tr>
    <tr><td><a href="jsp/ViewOrgSite.jsp"><font color="007700" size="5">View/UpdateOrgSite</font></a></td></tr>
    <tr><td><a href="jsp/SetUpSiteEmployees.jsp"><font color="007700" size="5">SetupSiteEmployees</font></a></td></tr>
    <tr><td><a href="jsp/ViewSiteEmployees.jsp"><font color="007700" size="5">View/UpdateSiteEmployees</font></a></td></tr>
    <tr><td><a href="jsp/SetUpMasterProjectPhases.jsp"><font color="007700" size="5">SetUpMasterProjectsPhases</font></a></td></tr>
    <tr><td><a href="jsp/ViewMasterProjectPhases.jsp"><font color="007700" size="5">View/UpdateMasterProjectPhases</font></a></td></tr>
    <tr><td><a href="jsp/SetUpMasterPhaseTasks.jsp"><font color="007700" size="5">SetUpMasterProjectTasks</font></a></td></tr>
    <tr><td><a href="jsp/ViewMasterPhaseTasks.jsp"><font color="007700" size="5">View/UpdateMasterProjectTasks</font></a></td></tr>
    <tr><td><a href="jsp/SetUpMasterProjects.jsp"><font color="007700" size="5">SetUpMasterProjects</font></a></td></tr>
    <tr><td><a href="jsp/ViewMasterProjects.jsp"><font color="007700" size="5">View/UpdateMasterProjects</font></a></td></tr>
    <tr><td><a href="jsp/SetUpProjectsPhases.jsp"><font color="007700" size="5">SetUpProjectsPhases</font></a></td></tr>
    <tr><td><a href="jsp/ViewProjectsPhases.jsp"><font color="007700" size="5">View/UpdateProjectsPhases</font></a></td></tr>
	<tr><td><a href="jsp/SetUpProjectsPhaseTasks.jsp"><font color="007700" size="5">SetUpProjectsPhaseTasks</font></a></td></tr>
    <tr><td><a href="jsp/ViewProjectsPhaseTasks.jsp"><font color="007700" size="5">View/UpdateProjectPhaseTasks</font></a></td></tr>
    <tr><td><a href="jsp/SetUpEmployeeSiteHistory.jsp"><font color="007700" size="5">SetUpEmployeeSiteHistory</font></a></td></tr>
    <tr><td><a href="jsp/ViewEmployeeSiteHistory.jsp"><font color="007700" size="5">View/UpdateEmployeeSiteHistory</font></a></td></tr>
    <tr><td><a href="jsp/SetUpEmployeeTasks.jsp"><font color="007700" size="5">SetUpEmployeeTasks</font></a></td></tr>
    <tr><td><a href="jsp/ViewEmployeeTasks.jsp"><font color="007700" size="5">View/UpdateEmployeeTasks</font></a></td></tr>
      
    
    
    </table>
   
  </body>
</html>
