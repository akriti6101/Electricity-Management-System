
<%@page import="Customer.Demo.*" %>
<%@page import="Customer.Bean.*" %>
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
         <option value="Cal_bill.jsp">Calculate Bill</option>
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
     <%CustomerDemo demo=new CustomerDemo();
     ArrayList<Customer> ls=new ArrayList<Customer>();
    ls=demo.getList();
     
     %>    
         
         
         
         
         
         
         
         
         
         
         
  

<div>

  <table >
  <tr>
  <th>Name</th>
     <th>Meter No.</th>
       <th>Address</th>
         <th>State</th>
           <th>City</th>
             <th>Email</th>
               <th>Phone Number</th>
           
  </tr>
 <%for(Customer c: ls){ %>
  <tr>
    <td><%=c.getName() %></td>
      <td><%=c.getMeter_no() %></td>
        <td><%=c.getAddress() %></td>
            <td><%=c.getState() %></td>
              
                    <td><%=c.getCity() %></td>
                        <td><%=c.getEmail() %></td>
                            <td><%=c.getPhone_Number() %></td>
  </tr>
 <%}%>

  </table>
</div>

</body>
</html>