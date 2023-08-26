<%@ page language="java" %>
<jsp:useBean id = "calculator" class="in.ineuron.bean.Student" />

<h1> The Square of 5 is :: <%= calculator.squareIt(5) %></h1>  <br/>
 <h1> The Square of 100 is :: <%= calculator.squareIt(100) %></h1>  <br/>