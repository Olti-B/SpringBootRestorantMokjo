<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mokjo</title>

<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="https://code.jquery.com/jquery-3.3.1.min.js">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<c:url value="/css/font-awesome.min.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet" />
<c:url value="/css/bootstrap.min.css" var="jstlBootCss" />
<link href="${jstlBootCss}" rel="stylesheet" />
<c:url value="/css/style.css" var="jstlStyleCss" />
<link href="${jstlStyleCss}" rel="stylesheet" />

</head>
<body>
	<section id="banner">
	<div class="bg-color">
		<header id="header">
		<div class="container">
			<div id="mySidenav" class="sidenav">
				<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">Menu</a>
				<a href="#about">About</a> <a href="#event">Event</a> <a
					href="#menu-list">Menu</a> <a href="#contact">Book a table</a> <a
					href="/login">Login</a> <a href="/register">Register</a>
			</div>
			<!-- Use any element to open the sidenav -->
			<span onclick="openNav()" class="pull-right menu-icon">Menu</span>
		</div>
		</header>
		<div class="container">
			<div class="row">
				<div class="inner text-center">
					<h1 class="logo-name">Delicious</h1>
					<h2>Food To fit your lifestyle & health.</h2>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- / banner -->
	<!--about-->
	<section id="about" class="section-padding">
	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center marb-35">
				<h1 class="header-h">Delicious Journey</h1>
				<p class="header-p">
					For real healthy food that's about pleasure and delight.
					 <br />
				</p>
			</div>
			<div class="col-md-1"></div>
			<div class="col-md-10">
				<div class="col-md-6 col-sm-6">
					<div class="about-info">
						<h2 class="heading">Welcome to our restaurant!</h2>
						<p>
Welcome to Mokjo, 
our restaurant located at Ali Demi, 
where we invite guests to celebrate life and enjoy modern and traditional cuisine. Our goal at Mokjo is to unify 
our guest's cultures and spirits with our own, expressing passion and generosity in the cuisine we share.
Whether part of a party of fifty or a party of two, your experience throughout our elegant, yet comfortable space is eventful.
</p>
						 <div class="details-list">
							<ul>
								<li></li>
								<li></li>
								<li></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-6">
					<img src="img/res01.jpg" alt="" class="img-responsive">
				</div>
			</div>
			<div class="col-md-1"></div>
		</div>
	</div>
	</section>
	<!--/about-->
	<!-- event -->
	<section id="event">
	<div class="bg-color" class="section-padding">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 text-center" style="padding: 60px;">
					<h1 class="header-h">Up Coming events</h1>
					<p class="header-p">Decorations 100% complete here</p>
				</div>
				<div class="col-md-12" style="padding-bottom: 60px;">
					<div class="item active left">
						<div class="col-md-6 col-sm-6 left-images">
							<img src="img/res02.jpg" class="img-responsive">
						</div>
						<div class="col-md-6 col-sm-6 details-text">
							<div class="content-holder">

								<h2>SUNDAY BRUNCH</h2>
								<p>Whether it is the ending to your epic Saturday, the beginning
								 of Sunday or you're looking for an exceptional brunch with friends and family, Mokjo 
								 will deliver. Enjoy steak and seafood, fire-roasted eggs and signature gourmet omelettes,
								 fruit, pastries, custom salads, and other delicious surprises. An entertaining DJ makes
								 the atmosphere fun, where guests are lively, and you're sure to have an amazing time. 
								 Mokjo is more than a restaurant, it's an experience. </p>
								<address>
									<strong>Place: </strong> Mokjo at Ali Demi <br /> <strong>Time:
									</strong> 07:30pm
								</address>
								<!-- <p class="btn btn-imfo btn-read-more">Read more</p> -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!--/ event -->
	<!-- menu -->
	<section id="menu-list" class="section-padding">
	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center marb-35">
				<h1 class="header-h">Menu List</h1>

				<!-- <p class="header-p">
					Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam
					nonummy <br />nibh euismod tincidunt ut laoreet dolore magna
					aliquam.
				</p> -->
			</div>
			
			<table class="table">
				<thead>
					<tr>
						<th scope="col">Time Serving</th>
						<th scope="col">Food Name</th>
						<th scope="col">Price</th>
						<th scope="col">Description</th>
					</tr>
				</thead>


				<c:if test="${not empty foods}">
					<div id="menu-wrapper">
						<c:forEach items="${foods}" var="food">
							<tbody>
								<tr>
									<td>${food.getTimeServing()}</td>
									<td>${food.getFoodName()}</td>
									<td>${food.getFoodPrice()}</td>
									<td>${food.getFoodDescription()}</td>
								</tr>

							</tbody>
						</c:forEach>
					</div>
				</c:if>

			</table>
		</div>
	</div>
	</section>
	<!--/ menu -->
	<!-- contact -->
	<section id="contact" class="section-padding">
	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center">
				<h1 class="header-h">Book Your table</h1>
				<p class="header-p">
					Whatever the reason - from a casual catch-up with friends or a mid-week family treat to a special birthday - we've got you covered.
By booking a table at Mokjo, you're guaranteeing your place in one of our family-friendly restaurants on a date and time of your choice, so say goodbye to waiting times!
<br />
				</p>
			</div>
		</div>
		<div class="row msg-row">
			<div class="col-md-4 col-sm-4 mr-15">
				<div class="media-2">
					<div class="media-left">
						<div class="contact-phone bg-1 text-center">
							<span class="phone-in-talk fa fa-phone"></span>
						</div>
					</div>
					<div class="media-body">
						<h4 class="dark-blue regular">Phone Numbers</h4>
						<p class="light-blue regular alt-p">
							+440 875369208 - <span class="contacts-sp">Phone Booking</span>
						</p>
					</div>
				</div>
				<div class="media-2">
					<div class="media-left">
						<div class="contact-email bg-14 text-center">
							<span class="hour-icon fa fa-clock-o"></span>
						</div>
					</div>
					<div class="media-body">
						<h4 class="dark-blue regular">Opening Hours</h4>
						<p class="light-blue regular alt-p">Monday to Friday 09.00 -
							24:00</p>
						<p class="light-blue regular alt-p">Friday and Sunday 08:00 -
							03.00</p>
					</div>
				</div>
			</div>
			<div class="col-md-8 col-sm-8">
				<form action="/login" method="get">
					<div class="col-md-12 btnpad">
						<div class="contacts-btn-pad">
							<button class="contacts-btn">Book Table</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	</section>
	<!-- / contact -->
	<!-- footer -->
	<footer class="footer text-center">
	<div class="footer-top">
		<div class="row">
			<div class="col-md-offset-3 col-md-6 text-center">
				<div class="widget">
					<h4 class="widget-title">Delicious</h4>
					<div class="social-list">
						<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a> <a
							href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
					</div>
					<p class="copyright clear-float">Â© Delicious Theme. All Rights
						Reserved
					<div class="credits">
						<!--
                  All the links in the footer should remain intact.
                  You can delete the links only if you purchased the pro version.
                  Licensing information: https://bootstrapmade.com/license/
                  Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Delicious
                -->
						Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
					</div>
					</p>
				</div>
			</div>
		</div>
	</div>
	</footer>
	<c:url value="/js/jquery.min.js" var="Jquery" />
	<script src="${Jquery}"></script>
	<c:url value="/js/jquery.easing.min.js" var="JqueryMin" />
	<script src="${JqueryMin}"></script>
	<c:url value="/js/bootstrap.min.js" var="BootMin" />
	<script src="${BootMin}"></script>
	<c:url value="/js/custom.js" var="Custom" />
	<script src="${Custom}"></script>


</body>
</html>