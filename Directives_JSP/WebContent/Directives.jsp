<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP DIRECTIVES PRACTICE</title>
</head>
<body>
    <%@ page language = "java" %>
    
    <%@ page import = "java.util.Date" %>   <%@ page import = "java.util.ArrayList , java.util.Scanner" %>
     <h1> The Server Time is :: <%= new Date() %></h1>
    <h2> ArrayList Object Creation is :: <%= new ArrayList().size() %></h2>
    
    <%@ page session = "false" %>
    
    <%@ page isELIgnored = "false" %>
    <h1> user name is :: <%= request.getParameter("username") %>  </h1>
    <h1> Accessing user name through EL Syntax :: ${param.username} </h1>
    
    <%@ page info = "Application Developed by iNeuron" %>
    <h1> Servlet Information is ::  <%= getServletInfo() %></h1>
    
    <%@ page buffer = "52kb" autoFlush = "true" %>
    <h1> Working with Page Directives</h1>
    <% for(int i=0;i<=100;i++)
    	out.println("iNeuron"); %>
    	
    
    
</body>
</html>