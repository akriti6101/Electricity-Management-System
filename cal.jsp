<%@page import="Customer.Bean.*" %>
<%@page import="Customer.Demo.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Electricity Management System</title>
</head>
<body>
<%
session.setAttribute("units", request.getParameter("units"));
String meter=request.getParameter("meter");
String month=request.getParameter("month");
String units=request.getParameter("units");
double bill=Double.parseDouble(units)*98;
String b=String.valueOf(bill);


CustomerDemo demo=new CustomerDemo();
 demo.calBill(meter,month,b);
 



%>
<script type="text/javascript">
window.location.replace("home.html");
</script>


</body>
</html>