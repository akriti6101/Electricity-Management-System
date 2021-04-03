
<%@page import="Customer.Bean.*" %>
<%@page import="Customer.Demo.*" %>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>Electricity Management System</title>
<script type="text/javascript">
  function funcal()
  {
	  alert("Bill Calculated!!!");
  }
</script>
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
     <form onsubmit="funcal()"action="cal.jsp">
 
   <br/><br/><br/>
   <div class="data1">
     
          <div style="margin-left:20px;margin-top:20px;
          ">
     Meter no :
     <select style="width:120px;"name="meter"
     >
     <option>select</option>
     <% CustomerDemo demo=new CustomerDemo();
      ArrayList<Customer> ls=new ArrayList<Customer>();
      ls=demo.getList();
      for(Customer c:ls){  
     %>
     <option value=<%=c.getMeter_no() %>>
     <%=c.getMeter_no()%></option>
     
     <%}%>
     </select>
        <br/><br/><br/>  <br/><br/><br/>
     Month :
     <select style="width:120px;"name="month"
     >
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
        <br/><br/><br/>   <br/><br/><br/>
     Units Consumed :<input type="text" style="color:white;width:100px;" name="units"
     placeholder="units"
     pattern="[0-9 \.]+" required/>
     
        <br/><br/><br/>
     
     <button class="btn3" type="submit">SUBMIT
     </button> <button class="btn4"
     type="submit">CANCEL</button>
     
   </div>
   </div>
 
     </form>

</body>
</html>