<%@ page isELIgnored = "false"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = 'sql' %>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = 'c' %>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>Data</title>
</head>
<body>
    <sql:setDataSource url = "jdbc:mysql://localhost:3306/ineuron" user = "root" password = "Harish16#" 
                  driver = "com.mysql.cj.jdbc.Driver" var = "dataSource"/>
                
    <sql:query var="result" dataSource = "${dataSource }">
                select * from employees
    </sql:query>
     
     
    <h1 style = 'color:green; text-align:center'> EMPLOYEE DATA OF INEURON </h1>
         <table border='1' >
            <tr> 
               <th> EID </th>
               <th> ENAME </th>
               <th> EAGE </th>
               <th> EADDRESS </th>
               <th> ESALARY </th>  
            </tr>
            <c:forEach var = 'row' items = '${result.rows}'>
               <tr>
                  <td> ${row.id} </td>
                  <td> ${row.name} </td>
                  <td> ${row.age} </td>
                  <td> ${row.address} </td>
                  <td> ${row.salary} </td>
               </tr>
            </c:forEach>
         </table>
         
         
  <%--   <sql:update dataSource = "${dataSource }" var = 'count'>
          insert into employees(name,age,address,salary) values ('RutuRaj Gaikwad',26,'CSK',4000) </sql:update>
     <h1 style =  "color:red; text-align:center"> The no of rows updated are :: ${count}</h1>
     
     <sql:update dataSource = "${dataSource}" var = 'count'>
          insert into employees(name,age,address,salary) values (?,?,?,?) 
          <sql:param value = 'conway'/>
          <sql:param value = '35'/>
          <sql:param value = 'CSK'/>
          <sql:param value = '6000'/>
      </sql:update>
     <h1 style =  "color:red; text-align:center"> The no of rows updated are :: ${count}</h1>     --%>
     
     
     <sql:transaction dataSource = "${dataSource}"> 
         <sql:update>
              update employees set salary = salary + 1000
         </sql:update>
         
         <sql:update>
              update employees set salary = salary + 2000 where name = 'harish'
         </sql:update>
              
     
     </sql:transaction>s
     
     
</body>
</html>