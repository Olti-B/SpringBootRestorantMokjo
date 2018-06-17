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
				<div class="inner text-center">
					<h1 class="logo-name">Delicious</h1>
					<h2>Welcome Admin</h2>
				</div>
			</div>
		</div>
	</div>
	</section>
	<section id="menu-list" class="section-padding">
	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center marb-35">
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
					<p class="copyright clear-float">
						© Delicious Theme. All Rights Reserved
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