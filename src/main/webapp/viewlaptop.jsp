	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Laptop</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<style>
 body{
     
     background: url(image/view.jpg);
     background-size: cover;
     background-position: center;
     height: 20px;
     top: 2%;
     font-size: 20px; 
     font-weight: bold;
     font-color: white;
 }
 
</style>
<body>
<div class="container text-center">

<h1>View All Your Laptops Here..!!</h1>
<form action ="viewlaptop" method ="get">
Enter LaptopId:<input type = "text" name ="lid"><br>
<input type ="submit" value ="VIEWLAPTOP">
</form><br>
<form action ="viewalllaptop" method ="get">
<input type ="submit" value ="VIEWALLLAPTOP">
</form>
</div>
</body>
</htm>