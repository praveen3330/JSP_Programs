<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
<title> Output </title>
</head>
<body>

    The result is ::  ${2+3}<br/><br/>
	The result is :: ${null + 3}<br/><br/>
	The result is :: ${""+3}<br/><br/>
	The result is ::${iNeuron+3}<br/><br/>
	<%--The result is :: ${"iNeuron"+3}<br/><br/> --%>
	
	
    The result is :: ${10/2}<br/><br/>
	The result is :: ${10 div 2}<br/><br/>
	The result is :: ${10/0}<br/><br/>
	The result is :: ${0/0 }
</body>
</html>