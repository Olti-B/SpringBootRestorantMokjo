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
					<h2>Food To fit your lifestyle & health.</h2>
				</div>
			</div>
		</div>
	</div>
	</section>
	<section id="menu-list" class="section-padding">
	<div class="container">
		<div class="row">
			<h4 class="widget-title">Menu</h4>
			<table class="table">
				<thead>
					<tr>
						<th scope="col">id</th>
						<th scope="col">Food Name</th>
						<th scope="col">Food Description</th>
						<th scope="col">Time Serving</th>
						<th scope="col">Time Serving</th>
						<th scope="col">Price</th>
						<th scope="col">Edit</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${not empty foods}">
						<c:forEach items="${foods}" var="food">
							<tr>
								<th scope="row">${food.getId()}</th>
								<td>${food.getFoodName()}</td>
								<td>${food.getFoodDescription()}</td>
								<td>${food.getTimeServing()}</td>
								<td>${food.getFoodId()}</td>
								<td>${food.getFoodPrice()}</td>
								<td><a href="/edtifood/id=">Edit</a></td>
							</tr>

						</c:forEach>
					</c:if>
				</tbody>
			</table>


		</div>

	</div>
	<div class="container">
		<div class="row">
			<h4 class="widget-title">Users</h4>
			<table class="table">
				<thead>
					<tr>
						<th scope="col">id</th>
						<th scope="col">User Name</th>
						<th scope="col">User Email</th>
						<th scope="col">User Role</th>
						<th scope="col">Edit</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${not empty users}">
						<c:forEach items="${users}" var="u">
							<tr>
								<th scope="row">${u.getId()}</th>
								<td>${u.getUsername()}</td>
								<td>${u.getEmail()}</td>
								<td>${u.getRole()}</td>
								<td><a href="/edtiUser/id=">Edit</a></td>
							</tr>

						</c:forEach>
					</c:if>
				</tbody>
			</table>


		</div>

	</div>
	
		<div class="container">
		<div class="row">
			<h4 class="widget-title">Book Table</h4>
			<table class="table">
				<thead>
					<tr>
						<th scope="col">id</th>
						<th scope="col">User Name</th>
						<th scope="col">User Email</th>
						<th scope="col">People</th>
						<th scope="col">phone</th>
						<th scope="col">Table Id</th>
						<th scope="col">Message</th>
						<th scope="col">Reserve Id</th>
						<th scope="col">Date</th>						
					</tr>
				</thead>
				<tbody>
					<c:if test="${not empty table}">
						<c:forEach items="${table}" var="t">
							<tr>
								<th scope="row">${t.getId()}</</th>
								<td>${t.getName()}</td>
								<td>${t.getEmail()}</td>
								<td>${t.getPeople()}</td>
								<td>${t.getPhone()}</td>
								<td>${t.getTableId()}</td>
								<td>${t.getMessage()}</td>
								<td>${t.getDate()}</td>
								<td><a href="/edtiUser/id=">Edit</a></td>
							</tr>

						</c:forEach>
					</c:if>
				</tbody>
			</table>


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