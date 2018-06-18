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
		<div class="container">
			<div class="row">
			<a href="/out" >LogOut</a>
				<div class="inner text-center">
					<h1 class="logo-name">Delicious</h1>
					<h2>Food To fit your lifestyle & health.</h2>
				</div>
			</div>
		</div>
	</div>
	</section>
	<section id="menu-list" class="section-padding">
	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center">
				<h1 class="header-h">Menu List</h1>
				<p class="header-p">
					Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam
					nonummy <br />nibh euismod tincidunt ut laoreet dolore magna
					aliquam.
				</p>
			</div>

			<div class="col-md-12  text-center" id="menu-flters">
				<ul>
					<li><a class="filter active" data-filter=".menu-restaurant">Show
							All</a></li>
					<li><a class="filter" data-filter=".breakfast">Breakfast</a></li>
					<li><a class="filter" data-filter=".lunch">Lunch</a></li>
					<li><a class="filter" data-filter=".dinner">Dinner</a></li>
				</ul>
			</div>

			<div id="menu-wrapper">
				<c:if test="${not empty foods}">
					<c:forEach items="${foods}" var="food">
						<div class="${food.getTimeServing()} menu-restaurant">
							<span class="clearfix"> <a class="menu-title"
								data-meal-img="assets/img/restaurant/rib.jpg">${food.getFoodName()}</a>
								<span style="left: 166px; right: 44px;" class="menu-line"></span>

								<span class="menu-price">${food.getFoodPrice()}</span>
							</span> <span class="menu-subtitle">${food.getFoodDescription()}</span>

							<br />
							<p>
								<span>Food Id: </span>${food.getFoodId()}</p>
						</div>

					</c:forEach>
				</c:if>
			</div>

		</div>
	</div>
	</section>
	<section id="contact" class="section-padding">
	<div class="container">

		<div class="row">
			<div class="col-md-12 text-center">
				<h1 class="header-h">Book Your table</h1>
				<p class="header-p">
					Book now Pay After ;)
				</p>
			</div>
			<div class="col-md-12">
				<div class="table-responsive-sm">
					<table class="table">
						<thead>
							<tr>
								<th>Date</th>
								<th>Is Available</th>
								<th>Table ID</th>
								<th>Number Of Chairs</th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${not empty tabel}">
								<c:forEach items="${tabel}" var="t">
									<tr>
										<td>${t.getDate()}</td>
										<td>${t.isAvailable()}</td>
										<td>${t.getTabelId()}</td>
										<td>${t.getNumberOfChairs()}</td>										
									</tr>
								</c:forEach>
							</c:if>

						</tbody>
					</table>
				</div>
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
			<p>${fildsMess}</p>
			
				<form action="/book" method="post" class="contactForm">
					<div id="sendmessage">Your booking request has been sent.
						Thank you!</div>
					<div id="errormessage"></div>
					<div class="col-md-6 col-sm-6 contact-form pad-form">
						<div class="form-group label-floating is-empty">
							<input type="text" name="name" class="form-control" id="name"
								placeholder="Your Name" data-rule="minlen:4"
								data-msg="Please enter at least 4 chars" />
							<div class="validation"></div>
						</div>

					</div>
					<div class="col-md-6 col-sm-6 contact-form">
						<div class="form-group">
							<input type="date" class="form-control label-floating is-empty"
								name="date" id="date" placeholder="Date" data-rule="required"
								data-msg="This field is required" />
							<div class="validation"></div>
						</div>
					</div>
					<div class="col-md-6 col-sm-6 contact-form pad-form">
						<div class="form-group">
							<input type="email" class="form-control label-floating is-empty"
								name="email" id="email" placeholder="Your Email"
								data-rule="email" data-msg="Please enter a valid email" />
							<div class="validation"></div>
						</div>
					</div>
					<div class="col-md-6 col-sm-6 contact-form">
						<div class="form-group">
							<input type="text" class="form-control label-floating is-empty"
								name="table" id="table" placeholder="Table Id"
								data-rule="required" data-msg="This field is required" />
							<div class="validation"></div>
						</div>
					</div>
					<div class="col-md-6 col-sm-6 contact-form">
						<div class="form-group">
							<input type="text" class="form-control label-floating is-empty"
								name="phone" id="phone" placeholder="Phone" data-rule="required"
								data-msg="This field is required" />
							<div class="validation"></div>
						</div>
					</div>
					<div class="col-md-6 col-sm-6 contact-form">
						<div class="form-group">
							<input type="text" class="form-control label-floating is-empty"
								name="people" id="people" placeholder="People"
								data-rule="required" data-msg="This field is required" />
							<div class="validation"></div>
						</div>
					</div>
					
					<div class="col-md-12 contact-form">
						<div class="form-group label-floating is-empty">
							<textarea class="form-control" name="message" rows="5" rows="3"
								data-rule="required" data-msg="Please write something for us"
								placeholder="Message"></textarea>
							<div class="validation"></div>
						</div>

					</div>
					<div class="col-md-12 btnpad">
						<div class="contacts-btn-pad">
							<button type="submit" value="submit" class="contacts-btn">Book Table</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	</section>
	<!-- / contact -->
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
					<p class="copyright clear-float">© Delicious Theme. All Rights
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