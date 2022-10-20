<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.List" %>
   <%@ page import="com.sboot.laptopManagement.entity.Laptop" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
 body{
     
     background: url(image/dashboard.jpg);
     background-size: cover;
     background-position: center;
     width: 600px;
     height: 10px;
     top: 15%;
     left: 35%;
     position: absolute;
     font-size: 20px; 
     font-weight: bold;
 }
 table, tr, th, td{
   width: 800px;
   margin: auto;
   font-size: 30px;
   padding: 20px;
   text-align: center;
   border: 2px solid #000;
}
h1{
   left: 37%;
}
 
</style>
</head>
<body>
<div align=center">
<h1>Want To Purchase More Laptops..!!</h1>
</div>
<%
   List<Laptop> l = (List<Laptop>)request.getAttribute("list");
   out.println("<table><tr><th>Product ID</th><th>laptop name</th><th>laptop color</th><th>laptop cost</th><th>stock available</th></tr>");
	for(Laptop p: l){
		out.println("<tr><td>"+p.getLid()+"</td><td>"+p.getLname()+"</td><td>"+p.getLcolor()+"</td><td>"+p.getLcost()+"</td><td>"+p.getQuantity()+"</td></tr>");
	}
	
	out.println("</table>");
%>
<h1>Want to purchase one???</h1>
<form action="purchaseLaptop" method="get">
 <label for="uid">User ID</label> 
   <input type="text" id="uid"name="userId" >
   <label for="pid">Product ID</label> 
   <input type="text" id="pid" name="lid" >
   <input type ="submit" value="BUY IT">
   
</form>
<h1>Want to get your invoice..??</h1>
<form action="getinvoice" method="get">
  <label for="uid">User ID</label> 
  <input type="text" id="uid"name="uid" >
  <input type="submit" value="GET INVOICE">
</form>
</body>

</html>