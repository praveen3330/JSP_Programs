<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    <h1 style = 'color:red; text-align:center'> Working With Expression Tag</h1>
    <h1 style = 'color:green; text-align:center'>
    Username is :: <%= request.getParameter("username") %> <br/>
    Password is :: <%= request.getParameter("password") %> <br/>
     </h1>
     
     
     <h1 style = 'color:red; text-align:center'> Working With Scriptlet Tag</h1>
     <%
       int x = 10;
       out.println(x);
     %>
     
     
     
    <h1 style = 'color:red; text-align:center'> Working with Declarative Tag </h1>
    <%!
      int x = 10;
      static int y = 20;
      int a[] = {10,20,30};
      public String m1(){
    	  System.out.println(a[0]);
    	  System.out.println(x);
    	  return "Working With Declarative Tag";
      }
    %>
    <%= m1() %>
    
    
    <%!
      
      public String m2(){
    	  int x1 = 10;
    	  System.out.println(x1);
    	  return "Working With Declarative Tag";
      }
    %>
     <%= m1() %>
     

  
</body>
</html>