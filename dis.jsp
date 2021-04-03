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

<% Customer c=new Customer();
 CustomerDemo demo=new CustomerDemo();
 c.setName(request.getParameter("Name"));
 c.setMeter_no(request.getParameter("Meter_no"));
 c.setAddress(request.getParameter("Address"));
 c.setState(request.getParameter("State"));
 c.setCity(request.getParameter("City"));
 c.setEmail(request.getParameter("Email"));
 c.setPhone_Number(request.getParameter("Phone_Number"));
 demo.setData(c);

 
%>

<script type="text/javascript">
window.location.replace("home.html");</script>

</body>
</html>