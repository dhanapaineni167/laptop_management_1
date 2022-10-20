<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="com.sboot.laptopManagement.entity.User" %>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compitable" content="IE=edge">
<meta name="viewport"
	content="width = device-width, initial-sacale = 1.0">
<title>Laptop Management</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajaz/libs/font-awesome/6.2.0/css/all.min.css">
<!-- bootstrap links -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<!-- bootstrap links -->
<!-- fonts links -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Merriweather&display=swap"
	rel="stylesheet">
<!-- fonts links -->
<!-- Bootstrap Font Icon CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<!-- Bootstrap Font Icon CSS -->
</head>
<body>
	<div align="right">
	<a href="login.jsp"><button class= "btn btn-secondary">Sign Out</button></a> 
	</div>
	<!-- top navbar -->
	<%
	User u = (User)request.getAttribute("user");
	%>
	<div class="top navbar">
		<div class="container text-center">
			<h3>Hello <%=u.getFirstName()+" "+u.getLastName()%>Welcome To Our Lucky Laptops...!!</h3>
		</div>
	</div>
	<!-- top navbar -->

	<!-- navbar -->
	<nav class="navbar navbar-expand-lg" id="navbar">
		<div class="container-fluid">
			<a class="navbar-brand" href="index.html" id="logo"><span>Laptop
					shop</span></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
				aria-controls="navbarNavDropdown" aria-expanded="false"
				aria-label="Toggle navigation">
				<span><img src="image/menu.jpg" alt=""></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavDropdown">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#home">Home</a></li>

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#"
						id="navbarDropdownMenuLink" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> Category </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown"
							style="background-color: rgb(67, 0, 86);">
							<li><a class="dropdown-item" href="#dell">DELL</a></li>
							<li><a class="dropdown-item" href="#hp">HP</a></li>
							<li><a class="dropdown-item" href="#lenova">LENOVO </a></li>
							<li><a class="dropdown-item" href="#asus">ASUS </a></li>
							<li><a class="dropdown-item" href="#macbook">MACBOOK </a></li>
							<li><a class="dropdown-item" href="#samsung">SAMSUNG </a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link" href="#about">About</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#ReachUs">ReachUs</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#ShopNow">ShopNow</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#OurServices">OurServices</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- navbar -->


	<!-- home content -->
	<div class="container" id="home">
		<div class="content">
			<h1>
				<span>The Best Laptops</span> <br> Up to <span id="span1">50%</span>off
			</h1>
			<p>
				Lightweight, powerful, built to last. <br>A laptop you can
				count on. <br>It's more than a laptop it's a way of life. <br>The
				laptop that is always by your side. <br>The ultimate
				workstation.
			</p>
		</div>
		<div class="img">
			<img src="image/banner1.jpg" alt="">
		</div>
	</div>
	<!-- home content -->







	<div class="container" id="about">
		<h3>LAPTOPS</h3>
		<hr>
		<p>A laptop, laptop computer, or notebook computer is a small,
			portable personal computer (PC) with a screen and alphanumeric
			keyboard. Laptops typically have a clam shell form factor with the
			screen mounted on the inside of the upper lid and the keyboard on the
			inside of the lower lid, although 2-in-1 PCs with a detachable
			keyboard are often marketed as laptops or as having a "laptop mode".
			Laptops are folded shut for transportation, and thus are suitable for
			mobile use. They are so named because they can be practically placed
			on a person's lap when being used.</p>
		<div class="row" style="margin-top: 50px;">
			<div class="c0l-md-5 py-3 py-md-0">
				<div class="card">
					<img src="image/lapi.jfif" alt="">
				</div>
			</div>
			<div class="c0l-md-7 py-3 py-md-0">
				<p>As of 2022, in American English, the terms laptop computer
					and notebook computer are used interchangeably; in other dialects
					of English, one or the other may be preferred. Although the terms
					notebook computers or notebooks originally referred to a specific
					size of laptop (originally smaller and lighter than mainstream
					laptops of the time), the terms have come to mean the same thing
					and notebook no longer refers to any specific size.</p>
			</div>
		</div>
	</div>


	<!-- offer -->
	<div class="container" id="OurServices">
		<div class="row">
			<div class="col-md-3 py-3 py-md-0">
				<i class="bi-cart-check-fill"></i>
				<h3>Free Shipping</h3>
				<p>On order over$150</p>
			</div>
			<div class="col-md-3 py-3 py-md-0">
				<i class="bi-arrow-counterclockwise"></i>
				<h3>Free Returns</h3>
				<p>Within 30 days</p>
			</div>
			<div class="col-md-3 py-3 py-md-0">
				<i class="bi-truck"></i>
				<h3>Fast Delivery</h3>
				<p>World Wide</p>
			</div>
			<div class="col-md-3 py-3 py-md-0">
				<i class="bi-hand-thumbs-up-fill"></i>
				<h3>Big Choice</h3>
				<p>Of products</p>
			</div>
		</div>
	</div>
	<!-- offer -->










	<!-- dell -->
	<div class="container" id="dell">
		<h1 class="text-center">LAPTOPS</h1>
		<div class="row" style="margin-top: 30px;">
			<div class="col-md-3 py-3 py-md-0">
				<div class="card">
					<img src="image/Dell.png" alt="">
					<div class="card-body text-center">
						<h1>DELL</h1>
						<h3>Dell Inspiron</h3>
						<p>Having excellent hardware specs.</p>
						<div class="star text-center">
							<i class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
								class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
								class="bi-star-fill"></i>
						</div>
						<h2 class="text-center">$742</h2>
						<form action="buyLaptop" method="get">
							<input type="hidden" name="lid" value="101">
							<%
							out.println("<input type='hidden' name='userId' value='"+u.getUserId()+"'>");
							%>
							<input type=submit class="btn btn-dark" value="Buy Now">
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-3 py-3 py-md-0">
				<div class="card">
					<img src="image/dell2.jfif" alt="">
					<div class="card-body text-center">
						<h1>DELL</h1>
						<h3>Dell Latitude 9430</h3>
						<p>Having faster Intel CPU.</p>
						<div class="star text-center">
							<i class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
								class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
								class="bi-star-fill"></i>
						</div>
						<h2 class="text-center">$610</h2>
						<form action="buyLaptop" method="get">
							<p>
								<a href="dashboard.jsp"><button class="btn btn-dark">
										Buy Now</button></a>
							</p>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-3 py-3 py-md-0">
				<div class="card">
					<img src="image/dell3.png" alt="">
					<div class="card-body text-center">
						<h1>DELL</h1>
						<h3>Dell XPS</h3>
						<p>highly stable and friendly platform.</p>
						<div class="star text-center">
							<i class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
								class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
								class="bi-star-fill"></i>
						</div>
						<h2 class="text-center">$950</h2>
						<form action="buyLaptop" method="get">
							<p>
								<a href="dashboard.jsp"><button class="btn btn-dark">
										Buy Now</button></a>
							</p>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-3 py-3 py-md-0">
				<div class="card">
					<img src="image/dell4.png" alt="">
					<div class="card-body text-center">
						<h1>DELL</h1>
						<h3>Dell Latitude135320</h3>
						<p>highly-optimized processors.</p>
						<div class="star text-center">
							<i class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
								class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
								class="bi-star-fill"></i>
						</div>
						<h2 class="text-center">$550</h2>
						<form action="buyLaptop" method="get">
							<p>
								<a href="dashboard.jsp"><button class="btn btn-dark">
										Buy Now</button></a>
							</p>
						</form>
					</div>
				</div>
			</div>
		</div>

		<!-- dell -->


		<!-- hp -->

		<div class="row" style="margin-top: 30px;" id="hp">
			<div class="col-md-3 py-3 py-md-0">
				<div class="card">
					<img src="image/HP.png" alt="">
					<div class="card-body text-center">
						<h1>HP</h1>
						<h3>HP Elite Dragonfly</h3>
						<p>Interface simpler and eases access.</p>
						<div class="star text-center">
							<i class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
								class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
								class="bi-star-fill"></i>
						</div>
						<h2 class="text-center">$600</h2>
						<form action="buyLaptop" method="get">
							<p>
								<a href="dashboard.jsp"><button class="btn btn-dark">
										Buy Now</button></a>
							</p>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-3 py-3 py-md-0">
				<div class="card">
					<img src="image/HP2.jfif" alt="">
					<div class="card-body text-center">
						<h1>HP</h1>
						<h3>HP Core 15</h3>
						<p>Reduce stress and time.</p>
						<div class="star text-center">
							<i class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
								class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
								class="bi-star-fill"></i>
						</div>
						<h2 class="text-center">$200</h2>
						<form action="buyLaptop" method="get">
							<p>
								<a href="dashboard.jsp"><button class="btn btn-dark">
										Buy Now</button></a>
							</p>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-3 py-3 py-md-0">
				<div class="card">
					<img src="image/HP3.png" alt="">
					<div class="card-body text-center">
						<h1>HP</h1>
						<h3>HP Pavilion Core</h3>
						<p>It processes connections at 2 times.</p>
						<div class="star text-center">
							<i class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
								class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
								class="bi-star-fill"></i>
						</div>
						<h2 class="text-center">$65</h2>
						<form action="buyLaptop" method="get">
							<p>
								<a href="dashboard.jsp"><button class="btn btn-dark">
										Buy Now</button></a>
							</p>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-3 py-3 py-md-0">
				<div class="card">
					<img src="image/HP4.png" alt="">
					<div class="card-body text-center">
						<h1>HP</h1>
						<h3>HP Envy</h3>
						<p>Excellent noise cancelling.</p>
						<div class="star text-center">
							<i class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
								class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
								class="bi-star-fill"></i>
						</div>
						<h2 class="text-center">$25</h2>
						<form action="buyLaptop" method="get">
							<p>
								<a href="dashboard.jsp"><button class="btn btn-dark">
										Buy Now</button></a>
							</p>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- hp -->


	<!-- lenovo -->

	<div class="row" style="margin-top: 30px;" id="lenova">
		<div class="col-md-3 py-3 py-md-0">
			<div class="card">
				<img src="image/lenovo1.png" alt="">
				<div class="card-body text-center">
					<h1>LENOVO</h1>
					<h3>Lenovo Yoga Slim 7i</h3>
					<p>Interface simpler and eases access.</p>
					<div class="star text-center">
						<i class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
							class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
							class="bi-star-fill"></i>
					</div>
					<h2 class="text-center">$600</h2>
					<form action="buyLaptop" method="get">
						<p>
							<a href="dashboard.jsp"><button class="btn btn-dark">
									Buy Now</button></a>
						</p>
					</form>
				</div>
			</div>
		</div>
		<div class="col-md-3 py-3 py-md-0">
			<div class="card">
				<img src="image/lenovo2.jfif" alt="">
				<div class="card-body text-center">
					<h1>LENOVO</h1>
					<h3>Lenovo IdeaPad Slim 3i</h3>
					<p>Reduce stress and time.</p>
					<div class="star text-center">
						<i class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
							class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
							class="bi-star-fill"></i>
					</div>
					<h2 class="text-center">$200</h2>
					<form action="buyLaptop" method="get">
						<p>
							<a href="dashboard.jsp"><button class="btn btn-dark">
									Buy Now</button></a>
						</p>
					</form>
				</div>
			</div>
		</div>
		<div class="col-md-3 py-3 py-md-0">
			<div class="card">
				<img src="image/lenovo3.jfif" alt="">
				<div class="card-body text-center">
					<h1>LENOVO</h1>
					<h3>Lenovo Legion 5Gen</h3>
					<p>It processes connections at 2 times.</p>
					<div class="star text-center">
						<i class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
							class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
							class="bi-star-fill"></i>
					</div>
					<h2 class="text-center">$65</h2>
					<form action="buyLaptop" method="get">
						<p>
							<a href="dashboard.jsp"><button class="btn btn-dark">
									Buy Now</button></a>
						</p>
					</form>
				</div>
			</div>
		</div>
		<div class="col-md-3 py-3 py-md-0">
			<div class="card">
				<img src="image/lenovo4.png" alt="">
				<div class="card-body text-center">
					<h1>LENOVO</h1>
					<h3>Lenovo ThinkPad E14</h3>
					<p>Excellent noise cancelling.</p>
					<div class="star text-center">
						<i class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
							class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
							class="bi-star-fill"></i>
					</div>
					<h2 class="text-center">$25</h2>
					<form action="buyLaptop" method="get">
						<p>
							<a href="dashboard.jsp"><button class="btn btn-dark">
									Buy Now</button></a>
						</p>
					</form>
				</div>
			</div>
		</div>
	</div>


	<!-- lenovo -->

	<!-- banner -->
	<section class="banner">
		<div class="content">
			<h1>
				<span>Purchase Two Laptops And Get Cash Back </span> <br> Up to
				<span id="span1">30%</span>off
			</h1>
			<p>
				USB Port. USB Type-C offers speed and functionality. <br>Display.
				OLED screen displays better than real life images. T <br>ouchscreen.
				Makes the interface simpler and eases access. <br>2-in-1 PCs.
				Next-gen laptops that can fold flat and even detach for a tablet
				experience. <br>Wi-Fi. ... <br>Graphics.

			</p>
		</div>
		<div class="img">
			<img src="image/accessories.jfif" alt="">
		</div>
	</section>
	<!-- banner -->



	<!-- asus -->

	<div class="row" style="margin-top: 30px;" id="asus">
		<div class="col-md-3 py-3 py-md-0">
			<div class="card">
				<img src="image/Asus.jfif" alt="">
				<div class="card-body text-center">
					<h1>ASUS</h1>
					<h3>Asus ZenBook Flip 15</h3>
					<p>Interface simpler and eases access.</p>
					<div class="star text-center">
						<i class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
							class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
							class="bi-star-fill"></i>
					</div>
					<h2 class="text-center">$600</h2>
					<form action="buyLaptop" method="get">
						<p>
							<a href="dashboard.jsp"><button class="btn btn-dark">
									Buy Now</button></a>
						</p>
					</form>
				</div>
			</div>
		</div>
		<div class="col-md-3 py-3 py-md-0">
			<div class="card">
				<img src="image/Asus1.jpg" alt="">
				<div class="card-body text-center">
					<h1>ASUS</h1>
					<h3>Asus Strix G15</h3>
					<p>Reduce stress and time.</p>
					<div class="star text-center">
						<i class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
							class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
							class="bi-star-fill"></i>
					</div>
					<h2 class="text-center">$200</h2>
					<form action="buyLaptop" method="get">
						<p>
							<a href="dashboard.jsp"><button class="btn btn-dark">
									Buy Now</button></a>
						</p>
					</form>
				</div>
			</div>
		</div>
		<div class="col-md-3 py-3 py-md-0">
			<div class="card">
				<img src="image/Asus2.jpg" alt="">
				<div class="card-body text-center">
					<h1>ASUS</h1>
					<h3>Asus Vivibook 15X</h3>
					<p>It processes connections at 2 times.</p>
					<div class="star text-center">
						<i class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
							class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
							class="bi-star-fill"></i>
					</div>
					<h2 class="text-center">$65</h2>
					<form action="buyLaptop" method="get">
						<p>
							<a href="dashboard.jsp"><button class="btn btn-dark">
									Buy Now</button></a>
						</p>
					</form>
				</div>
			</div>
		</div>
		<div class="col-md-3 py-3 py-md-0">
			<div class="card">
				<img src="image/Asus3.png" alt="">
				<div class="card-body text-center">
					<h1>ASUS</h1>
					<h3>Asus ROG Strix G17</h3>
					<p>Excellent noise cancelling.</p>
					<div class="star text-center">
						<i class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
							class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
							class="bi-star-fill"></i>
					</div>
					<h2 class="text-center">$25</h2>
					<form action="buyLaptop" method="get">
						<p>
							<a href="dashboard.jsp"><button class="btn btn-dark">
									Buy Now</button></a>
						</p>
					</form>
				</div>
			</div>
		</div>
	</div>


	<!-- asus -->


	<!-- macbook -->

	<div class="row" style="margin-top: 30px;" id="macbook">
		<div class="col-md-3 py-3 py-md-0">
			<div class="card">
				<img src="image/Macbook.jpg" alt="">
				<div class="card-body text-center">
					<h1>MACBOOK</h1>
					<h3>Macbook Yoga Slim 7i</h3>
					<p>Interface simpler and eases access.</p>
					<div class="star text-center">
						<i class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
							class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
							class="bi-star-fill"></i>
					</div>
					<h2 class="text-center">$600</h2>
					<form action="buyLaptop" method="get">
						<p>
							<a href="dashboard.jsp"><button class="btn btn-dark">
									Buy Now</button></a>
						</p>
					</form>
				</div>
			</div>
		</div>
		<div class="col-md-3 py-3 py-md-0">
			<div class="card">
				<img src="image/Macbook1.jpg" alt="">
				<div class="card-body text-center">
					<h1>MACBOOK</h1>
					<h3>Macbook IdeaPad Slim 3i</h3>
					<p>Reduce stress and time.</p>
					<div class="star text-center">
						<i class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
							class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
							class="bi-star-fill"></i>
					</div>
					<h2 class="text-center">$200</h2>
					<form action="buyLaptop" method="get">
						<p>
							<a href="dashboard.jsp"><button class="btn btn-dark">
									Buy Now</button></a>
						</p>
					</form>
				</div>
			</div>
		</div>
		<div class="col-md-3 py-3 py-md-0">
			<div class="card">
				<img src="image/Macbook2.jpg" alt="">
				<div class="card-body text-center">
					<h1>MACBOOK</h1>
					<h3>Macbook Legion 5Gen</h3>
					<p>It processes connections at 2 times.</p>
					<div class="star text-center">
						<i class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
							class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
							class="bi-star-fill"></i>
					</div>
					<h2 class="text-center">$65</h2>
					<form action="buyLaptop" method="get">
						<p>
							<a href="dashboard.jsp"><button class="btn btn-dark">
									Buy Now</button></a>
						</p>
					</form>
				</div>
			</div>
		</div>
		<div class="col-md-3 py-3 py-md-0">
			<div class="card">
				<img src="image/Macbook3.jpg" alt="">
				<div class="card-body text-center">
					<h1>MACBOOK</h1>
					<h3>Macbook ThinkPad E14</h3>
					<p>Excellent noise cancelling.</p>
					<div class="star text-center">
						<i class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
							class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
							class="bi-star-fill"></i>
					</div>
					<h2 class="text-center">$25</h2>
					<form action="buyLaptop" method="get">
						<p>
							<a href="dashboard.jsp"><button class="btn btn-dark">
									Buy Now</button></a>
						</p>
					</form>
				</div>
			</div>
		</div>
	</div>


	<!-- macbook -->


	<!-- samsung -->

	<div class="row" style="margin-top: 30px;" id="samsung">
		<div class="col-md-3 py-3 py-md-0">
			<div class="card">
				<img src="image/Samsung.jpg" alt="">
				<div class="card-body text-center">
					<h1>SAMSUNG</h1>
					<h3>Samsung Yoga Slim 7i</h3>
					<p>Interface simpler and eases access.</p>
					<div class="star text-center">
						<i class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
							class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
							class="bi-star-fill"></i>
					</div>
					<h2 class="text-cente ccr">$600</h2>
					<form action="buyLaptop" method="get">
						<p>
							<a href="dashboard.jsp"><button class="btn btn-dark">
									Buy Now</button></a>
						</p>
					</form>
				</div>
			</div>
		</div>
		<div class="col-md-3 py-3 py-md-0">
			<div class="card">
				<img src="image/Samsung1.jpg" alt="">
				<div class="card-body text-center">
					<h1>SAMSUNG</h1>
					<h3>Samsung IdeaPad Slim 3i</h3>
					<p>Reduce stress and time.</p>
					<div class="star text-center">
						<i class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
							class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
							class="bi-star-fill"></i>
					</div>
					<h2 class="text-center">$200</h2>
					<form action="buyLaptop" method="get">
						<p>
							<a href="dashboard.jsp"><button class="btn btn-dark">
									Buy Now</button></a>
						</p>
					</form>
				</div>
			</div>
		</div>
		<div class="col-md-3 py-3 py-md-0">
			<div class="card">
				<img src="image/Samsung2.jpg" alt="">
				<div class="card-body text-center">
					<h1>SAMSUNG</h1>
					<h3>Samsung Legion 5Gen</h3>
					<p>It processes connections at 2 times.</p>
					<div class="star text-center">
						<i class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
							class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
							class="bi-star-fill"></i>
					</div>
					<h2 class="text-center">$65</h2>
					<form action="buyLaptop" method="get">
						<p>
							<a href="dashboard.jsp"><button class="btn btn-dark">
									Buy Now</button></a>
						</p>
					</form>
				</div>
			</div>
		</div>
		<div class="col-md-3 py-3 py-md-0">
			<div class="card">
				<img src="image/Samsung3.jpg" alt="">
				<div class="card-body text-center">
					<h1>SAMSUNG</h1>
					<h3>Samsung ThinkPad E14</h3>
					<p>Excellent noise cancelling.</p>
					<div class="star text-center">
						<i class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
							class="bi-star-fill"></i> <i class="bi-star-fill"></i> <i
							class="bi-star-fill"></i>
					</div>
					<h2 class="text-center">$25</h2>
					<form action="buyLaptop" method="get">
						<p>
							<a href="dashboard.jsp"><button class="btn btn-dark">
									Buy Now</button></a>
						</p>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- samsung -->










	<!-- footer -->
	<footer id="ReachUs">
		<div class="ReachUs-top">
		
			<div class="container">
				<div class="row">

					<div class="col-lg-3 col-md-6 footer-contact">
						<h3>Our Address</h3>
						<p>
							Andhra Pradesh<br> Nehru Nagar<br> Guntur<br>
						</p>
						<strong>Laptop:</strong> +000000000000000<br> <strong>Email:</strong>
						laptopshop@.com<br>
					</div>

					<div class="col-lg-3 col-md-6 footer-links">
						<h4>Uses Of Laptop</h4>
						<ul>
							<li><a href="#">Education</a></li>
							<li><a href="#">Science</a></li>
							<li><a href="#">Medical</a></li>
							<li><a href="#">Banking</a></li>
							<li><a href="#">Transport</a></li>
						</ul>
					</div>

					<div class="col-lg-3 col-md-6 footer-links">
						<h4>Available Laptops</h4>
						<ul>
							<li><a href="#">Smart Laptop</a></li>
							<li><a href="#">Programming Laptop</a></li>
							<li><a href="#">Gaming Laptop</a></li>
							<li><a href="#">Personal Laptop</a></li>
							<li><a href="#">Education Laptop</a></li>
						</ul>
					</div>

					<div class="col-lg-3 col-md-6 footer-links">
						<h3>Our Social Networks</h3>
						<p>Get in touch with us for more information by following the
							below social websites..</p>

						<div class="social-links mt-3">
							<i class="fa-solid fa-user"></i> <a href="#"><i
								class="bi-twitter"></i></a> <a href="#"><i class="bi-facebook"></i></a>
							<a href="#"><i class="bi-instagram"></i></a> <a href="#"><i
								class="bi-skype"></i></a> <a href="#"><i class="bi-linkedin"></i></a>
						</div>

					</div>

				</div>
			</div>
		</div>
		<hr>
		<div class="container py-4">
			<div class="copy-right">
				&copy; copyright <strong><span>Laptop Shop</span></strong>. All
				Rights Reserved
			</div>
			<div class="credits">
				Designed by <a href="#">Dhana Pyneni</a>
			</div>
		</div>
	</footer>
	<!-- footer -->








	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>




</body>
</html>