<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<style>
 body{
     
     background: url(image/Laptops.jpg);
     background-size: cover;
     background-position: center;  
     height: 20px;
     top: 2%;   
     font-size: 20px; 
     font-weight: bold;
 }
 
</style>
<body>
  
<div class="container text-center">
	<h1>Welcome To Our Lucky Laptops...!!!</h1>	
	<div>
		<p><a href="addlaptop.jsp"><button class="btn btn-dark">Add laptop</button></a></p>
		<p><a href="viewlaptop.jsp"><button class="btn btn-dark">View laptop</button></a></p>
		<p><a href="deletelaptop.jsp"><button class="btn btn-dark">Delete laptop</button></a></p>
		<p><a href="updatelaptop.jsp"><button class="btn btn-dark">Update laptop</button></a></p>											

	</div>
</div>
</body>
</html>