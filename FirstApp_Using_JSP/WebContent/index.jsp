<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>First App Using JSP</title>
</head>
<body>

    <%!
        static {
    	System.out.println("Servlet Loading");
    }
    %>
    
    
    <%!
        public void jspInit(){
    	System.out.println("JSP Initialization activities");
    }
    %>

    <h1 style = 'color:red; text-align:center;'> This Server time is  </h1>
    <h1 style = 'color:green; text-align:center;'> <%= new java.util.Date() %></h1>
    
     <%!
        public void jspDestroy(){
    	System.out.println("JSP Clean Up Activities");
    }
    %>
    
</body>
</html>