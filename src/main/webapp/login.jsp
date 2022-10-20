<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Form Design</title>
  <link rel = "stylesheet" type = "text/css" href = "style.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style>
 body{
     
     background: url(image/bgimage.jpg);
     background-size: cover;
     background-position: center;
     font-family: sans-serif;
 }/*
 .loginbox{
     width: 320px;
     height: 420px;
     background: #000;
     color: #fff;
     top: 50%;
     left: 50%;
     position: absolute;
     transform: translate(-50%, -50%);
     box-sizing: border-box;
     padding: 70px 30px;
 }
 .avatar{
     width: 100px;
     height: 100px;
     border-radius: 50%;
     position: absolute;
     top: -50px;
     left: calc(50% -50px);
 }
 h1{
     margin: 0;
     padding: 0 0 20px;
     text-align: center;
     font-size: 22px;
 }
 .loginbox p{
     margin: 0;
     padding: 0;
     font-weight: bold;
 }
 .loginbox input{
     width: 100%;
     margin-bottom: 20px;
 }
.loginbox input[type = "text"], input[type = "Password"]{
     border: none;
     border-bottom: 1px solid #fff;
     background: transparent;
     otline: none;
     height: 40px;
     color: #fff;
     font-size: 16px;
  }
  .loginbox input[type = "Submit"]{
     border: none;
     outline: none;
     height: 40px;
     background: #fb2525;
     color: #fff;
     font-size: 18px;
     border-radius: 20px;
  }
.loginbox input[type = "Submit"]:hover{
     cursor: pointer;
     background: #ffc107;
     color: #000;
 }
 .loginbox a{
     text-decoration: none;
     font-size: 12px;
     line-height: 20px;
     color: darkgrey;
 }
  .loginbox a:hover{
     color: #ffc107;
  }*/
 </style>
</head>
<body>
 <!-- <div class = "loginbox">
 <img src = "avatar.png" class = "avatar">
 </div>
 <h1>Login Here</h1>
  <form>
       <p>User Name</p>
       <input type = "text" name = "" placeholder = "Enter User Name">
        <p>Password</p>
       <input type = "Password" name = "" placeholder = "Enter Password">
       <input type = "Submit" placeholder = "Login">
       <a href = "#">Lost your password..?</a><br>
       <a href = "#">Don't have an account..?</a>
  </form> -->
  
  <section class="vh-100 gradient-custom">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card bg-dark text-white" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">

            <div class="mb-md-5 mt-md-4 pb-5">

              <h2 class="fw-bold mb-2 text-uppercase">Login</h2>
              <p class="text-white-50 mb-5">Please enter your login and password!</p>
			<form action = "signin" method="post">
              <div class="form-outline form-white mb-4">
              	<input type="text" id="userid" name="userId" class="form-control form-control-lg">
                <!-- <input type="text" id="typeTextX" class="form-control form-control-lg" name="userId" /> -->
                <label class="form-label" for="typeTextX">User ID</label>
              </div>

              <div class="form-outline form-white mb-4">
                <input type="password" id="typePasswordX" class="form-control form-control-lg" name="password" />
                <label class="form-label" for="typePasswordX">Password</label>
              </div>

              <p class="small mb-5 pb-lg-2"><a class="text-white-50" href="#!">Forgot password?</a></p>

              <button class="btn btn-outline-light btn-lg px-5" type="submit">Login</button>

              </form>
            </div>

            <div>
              <p class="mb-0">Don't have an account? <a href="signup.jsp" class="text-white-50 fw-bold">Sign Up</a>
              </p>
            </div>

          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>