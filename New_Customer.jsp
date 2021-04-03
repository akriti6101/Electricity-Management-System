<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>Electricity Management System</title>

<script type="text/javascript">
 function fun()
 {  alert("Data Submitted!!!!");
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
     <form action="dis.jsp" onsubmit="fun()">
  <div class="form">
   <br/><br/><br/>
   <div class="data">
      Name : <input type="text" name="Name" placeholder="Name" pattern="[A-z][A-z a-z \s]+" required/><br/><br/>
      <br/>
          
     Meter no :<input type="number" name="Meter_no"placeholder="Meter-no." pattern="[0-9]+" required/><br/><br/>
     <br/>
     Address  :<input type="text" name="Address" placeholder=" Address " pattern ="[A-Z a-z 0-9 - \s]+"required /><br/><br/>
     <br/>
     State :<input type="text" name="State"placeholder="State" pattern="[A-Z a-z\s]+" required/><br/><br/><br/>
     City : <input type="text" name="City"placeholder="City" pattern="[A-Z a-z\s]+" required/><br/><br/><br/>
     Email : <input type="email"name="Email" placeholder="Email" pattern="[a-z \.$ & * 0-9][a-z 0-9]+[@][a-z]+[.][a-z]+" required/><br/><br/><br/>
     Phone Number : <input  name="Phone_Number" type="text" placeholder="Phone Number" pattern="[7-9][0-9]{9}" required/><br/><br/><br/>
     <br/><br/>
     <button class="btn1"type="submit">SUBMIT</button> <button class="btn2"type="submit">CANCEL</button>
     </div>
   </div>
 
     </form>
</body>
</html>