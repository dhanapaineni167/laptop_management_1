<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<style>
 body{
     
     background: url(image/update.jpg);
     background-size: cover;
     background-position: center;   
     height: 20px;
     top: 10%;
     font-size: 20px; 
     font-weight: bold;
 }
 
</style>
<body>
<div class="container text-center">
<h1>Update Your Laptops Here..!!</h1>
<form action ="updatelaptop" method ="get">
Enter LaptopId:<input type = "text" name ="lid"><br>
Enter LaptopName:<input type = "text" name ="lname"><br>
Enter LaptopColor:<input type = "text" name ="lcolor"><br>
Enter LaptopCost:<input type = "text" name ="lcost"><br>
<input type ="submit" value ="UPDATELAPTOP">

</form>
</div>


</body>
</html>