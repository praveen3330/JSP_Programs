<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
<title> Output </title>
</head>
<body>
    <c:set var = "data" value = "10"/><br/> <%-- data = 10 --%>
    <h1 style = 'color:red; text-align:center '> THE USERNAME IS :: <c:out value="${data }"></c:out>  </h1>  <br/>  <%-- out.println(data) --%>
    
    <c:set var = 'x' value = '10'/> 
    <c:set var = 'y' value = '20'/> 
    <c:set var = 'z' value = "${ x+y }"/> 
    <h1 style = 'color:blue; text-align:center '> THE RESULT IS :: <c:out value="${ z }"></c:out>  </h1>  <br/>
    
    <c:set scope='request' var = 'username' value = '${param.username }'> </c:set>
    <h1 style = 'color:green; text-align:center '> THE DATA FROM QUERY STRING IS :: <c:out value="${ username }" default="iNeuron"/>  </h1>  <br/>
    
    
    <c:set scope="page" var="x" value="10"/>
    <c:set scope="page" var="y" value="20"/>
    <c:set scope="request" var="z" value="x+y"/>
    
    <h1 style = 'color:red ; text-align:center'> The Sum is :: <c:out value ="${z}"/> </h1>
    
    <c:remove var="x"/>
    <c:remove var="y"/>
    <c:remove var="z"/>
    <h1 style = 'color:red ; text-align:center'> The Sum is :: <c:out value ="${z}" default = "1000"/> </h1>
    
</body>
</html>