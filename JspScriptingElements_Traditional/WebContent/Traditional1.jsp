<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Output</title>
</head>
<body bgcolor = 'yellow' >
    <h1 style='color:blue;text-align:center;'>Working with Scripting Elements</h1>
  <%!
    java.util.Date d = null;
    String date =null;
  %>
  <%
    d = new java.util.Date();
    date = d.toString();
    %>
    <b>
    <font>
       Today date is <%= date%>
    </font>
    </b>
    
  %>
</body>
</html>