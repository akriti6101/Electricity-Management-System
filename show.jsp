<%@page import="Customer.Demo.*" %>
<%@ page import="Customer.Bean.*" %>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Electricity Management System</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

<div class="outer" >
     

         
     <img src="bulb.jpg" style="height:900px;">
   
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
  
  <%String m=request.getParameter("m");
  String mon=request.getParameter("mon");
  CustomerDemo demo=new CustomerDemo();
  Customer c=new Customer();
  ArrayList<Customer> ls=new ArrayList<Customer>();
  c=demo.getData(m,mon);
  if(c==null)
  {%>
	  <script type="text/javascript">
	  alert("First Go and Calculate Bill!!!");
	  window.location.replace("Cal_bill.jsp");</script>
  <%}
  String b="";
  if(mon.equals("January"))
	     b=c.getJanuary();
  if(mon.equals("February"))
	     b=c.getFebruary();
  if(mon.equals("March"))
	     b=c.getMarch();
  if(mon.equals("April"))
	     b=c.getApril();
  if(mon.equals("May"))
	     b=c.getMay();
  if(mon.equals("June"))
	     b=c.getJune();
  if(mon.equals("July"))
	     b=c.getJuly();
  if(mon.equals("August"))
	     b=c.getAugust();
  if(mon.equals("September"))
	     b=c.getSeptember();
  if(mon.equals("October"))
	     b=c.getOctober();
  if(mon.equals("November"))
	     b=c.getNovember();
  if(mon.equals("December"))
	     b=c.getDecember();
  if(b==null)
  {%>
	  <script type="text/javascript">
	  alert("First Go and Calculate Bill!!!");
	  window.location.replace("Cal_bill.jsp");</script>
  <%}else
  {
  Double gst=Double.parseDouble(b)*9/100;
  Double t=Double.parseDouble(b)+gst;
  %>
  <div style="background-color:white;border-color:black;border-radius:3px;border-style:double;position:absolute;
  top:55px;left:200px;width:400px;height:700px;">
    <center><u><h3>Reliance Power Limited</h3></u></center>
    <em><h4>Electricity Bill for the month of <%=mon %>,2021</h4 >
   <h5>Name :<%=c.getName() %><br/>
     Meter Number :<%=c.getMeter_no() %><br/>
       Address :<%=c.getAddress() %><br/>
         State :<%=c.getState() %><br/>
           City :<%=c.getCity() %><br/>
             Email :<%=c.getEmail() %><br/>
               Phone Number :<%=c.getPhone_Number() %></h5></em>
  ---------------------------------------------------------------------------
  **************************************************
  <em> <h5>Meter Location : INSIDE<br/>
     Meter Type : ELECTRONIC <br/>
       Phase Code : 1 <br/>
     
           Bill Type : NORMAL <br/>
             Days : 30<br/>
            </h5></em>
 ---------------------------------------------------------------------------
  **************************************************
    <em> <h5>Meter Rent : 98<br/>
     MCB Rent: 42 <br/>
       Service Tax : 112 <br/>
     
           GST@9% :<%=gst %> <br/>
             Current Month :<%=mon %><br/>
             Units Consumed : <%=session.getAttribute("units") %><br/>
             Total Charges : <%=t %><br/>
 
            </h5></em>
  ---------------------------------------------------------------------------
  <h5>TOTAL PAY :<%=t %></h5>
  <% }%>
  </div>



</body>
</html>