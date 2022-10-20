<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
<style>
*{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
    font-family: sans-serif;
}
body {
    background-image: url("image/user_registration.jpg");
	width: 100%;
	background-size: cover;
}

.SignUp {
	width: 75%;
	height: 100px;
	margin: auto;
	background-color: white;
	border-radius: 3px;
}

h1 {
	text-align: center;
	padding-top: 15px;
	
}

h4 {
	text-align: center;
}

form {
	position: absolute;
	top: 75%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 480px;
	background: #fff;
	border-radius: 5px;
	text-align: center;
	padding: 30px 30px 5px 30px;
	box-shadow: 0px 5px 20px 10px rgba(0, 0, 0, 0.2);
}

form label {
	display: flex;
	margin-top: 20px;
	font-size: 18px;
}

form input {
	width: 100%;
	padding: 7px;
	border: none;
	border: 1px solid gray;
	border-radius: 6px;
	outline: none;
}

input[type=submit] {
	width: 30%;
	background-color: #4CAF50;
	color: white;
	padding: 10px 20px;
	margin: 5px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

p {
	text-align: center;
	padding-top: 20px;
	font-size: 15px;
}

.para-2 {
	text-align: center;
	color: white;
	font-size: 15px;
	margin-top: -10px;
}

para-2 a {
	color: #49c1a2;
}
</style>
</head>
<body>
  <div class="wrapper">
	<h1>Register To Laptop management store</h1>

	<form action="userregister" method="get">
		<label for="userId">UserId:</label><br> <input type="text"
			id="userId" name="userId" placeholder="UserId"><br> <label
			for="fname">First name:</label><br> <input type="text"
			id="fname" name="firstName" placeholder="Your first name.."><br>
		<label for="lname">Last name:</label><br> <input type="text"
			id="lname" name="lastName" placeholder="Your last name.."><br>
		<label for="email">EmailId:</label><br> <input type="text"
			id="email" name="emailId" placeholder="EmailId"><br> <label
			for="MblNo">MobileNo:</label><br> <input type="text" id="MblNo"
			name="mobileno" placeholder="mobileno"><br> <label
			for="pswd">Password:</label><br> <input type="password"
			id="pswd" name="password" placeholder="set password"><br>
		<label for="address">address:</label><br> <input type="text"
			id="rpswd" name="address" placeholder="address "><br> <input
			type="submit" id="rpswd" value="submit"><br>

		<h3>
			Already have an account ? <a href="login.jsp">login</a>
		</h3>

	</form>
	</div>
</body>
</html>