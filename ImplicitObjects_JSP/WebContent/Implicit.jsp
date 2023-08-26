<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%@ page language = "java" isELIgnored = "false" %>
    <h1> working with implicit objects(9)</h1>
    <h1> Request method type is :: <%= request.getMethod() %></h1> <br/>
    <h1> Request parameter is :: <%= request.getParameter("username") %></h1> <br/>
    <h1> client ip address is :: <%= request.getRemoteAddr() %></h1> <br/>
    <h1> Content Type info is :: <%= response.getContentType() %></h1>  <br/>
    
    
    <h1>
     Session id is :: <%= session.getId() %>  <br/>
     is session newly created :: <%= session.isNew() %> <br/>
     Session Time out is :: <%= session.getMaxInactiveInterval() %> seconds <br/>
    </h1>
</body>
</html>