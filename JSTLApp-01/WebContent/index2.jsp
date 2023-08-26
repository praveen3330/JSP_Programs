<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
<title> Output </title>
</head>
<body>
  <c:catch var = "e">
   <jsp:scriptlet>
      int x = Integer.parseInt("Ten");
      out.println(x);
      </jsp:scriptlet>
      </c:catch>
      <c:if test = "&{!empty e}">
      <br/> <h1 style ='color:red; text-align:center'> The Exception raise is :: ${e}  </h1>
      </c:if>
      <h1 style ='color:blue; text-align:center'> The code after the evaluation of dynamic content :: ${e}  </h1>
</body>
</html>