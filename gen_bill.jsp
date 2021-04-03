<%@page import="Customer.Demo.*" %>
<%@ page import="Customer.Bean.*" %>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>Electricity Management System</title>
</head>
<body>

<div class="outer">
     

         
     <img src="bulb.jpg">
   
     <div>
          <select class="one" name="admin" onchange="location=this.options[this.selectedIndex].value;">
          <option value="home.html">ADMIN</option>
         <option value="New_Customer.jsp">New Customer</option>
         <option value="Customer_details.jsp">Customer Details</option>
         </select>
    
         
  </div>
<div>
          <select class="two"name="user "onchange="location=this.options[this.selectedIndex].value;">
          <option value="home.html">USER</option>
         <option value="Cal_Bill.jsp">Calculate Bill</option>
         <option value="https://paytm.com/electricity-bill-payment">Pay Bill</option>
         </select>
         </div>
         <div>
          <select class="three"name="report "onchange="location=this.options[this.selectedIndex].value;">
          <option value="home.html">REPORT</option>
         <option value="gen_bill.jsp">Generate Bill</option>

         </select>
         </div>
  </div>
<form action="show.jsp">
<div >
 <b class="b1">Meter Number:</b>
<select class="out" name="m">
<option value="none">Meter_no</option>
<%  ArrayList<Customer> ls=new ArrayList<Customer>();
CustomerDemo demo=new CustomerDemo();
ls=demo.getList();%>


<%for(Customer c: ls)
{%>
<option value=<%=c.getMeter_no()%>><%=c.getMeter_no() %></option>
<% }%>
</select>


 <b class="b2">Month:</b>
<select class="in" name="mon">
<option value="none">Month</option>
<option value="January">January</option>
<option value="February">February</option>
<option value="March">March</option>
<option value="April">April</option>
<option value="May">May</option>
<option value="June">June</option>
<option value="July">July</option>
<option value="August">August</option>
<option value="September">September</option>
<option value="October">October</option>
<option value="November">November</option>
<option value="December">December</option>
</select>
</div>
<button type="Submit" class="btn5">Generate</button>


</form>

</body>
</html>