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
	<!-- This is for the Menu  -->
	<section id="menu-list" class="section-padding">
	<div class="container">
		<c:choose>
			<c:when test="${mode == 'VIEW'}">
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
										<td><a href="/updateFood?id=${food.getId()}"
											class="fa fa-pencil">Edit</a></td>
									</tr>

								</c:forEach>
							</c:if>
						</tbody>
					</table>
				</div>
			</c:when>
			<c:when test="${mode == 'EDIT_FOOD'}">
				<form action="/saveFood"  method="POST">
					<div class="form-group">
						<label for="food">Id</label> <label for="food">${food.getId()}</label>
					</div>
					<div class="form-group">
						<label for="food">Food Name</label> <input type="text"
							class="form-control" id="foodName" value="${food.getFoodName()}">
					</div>
					<div class="form-group">
						<label for="food">Food Description</label> <input type="text"
							class="form-control" id="description"
							value="${food.getFoodDescription()}">
					</div>
					<div class="form-group">
						<label for="food">Time Serving</label> <input type="text"
							class="form-control" id="timeServing"
							value="${food.getTimeServing()}">
					</div>
					<div class="form-group">
						<label for="food">Food Id</label> <input type="text"
							class="form-control" id="foodId" value="${food.getFoodId()}">
					</div>
					<div class="form-group">
						<label for="food">Price</label> <input type="number"
							class="form-control" id="price" value="${food.getFoodPrice()}">
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
				</form>
			</c:when>
		</c:choose>

	</div>
	<!-- This is the end for the Menu  --> <!-- This is for the Users  -->
	<div class="container">
		<c:choose>
			<c:when test="${mode == 'VIEW'}">
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
										<td><a href="/edtiUser?email=${u.getEmail()}"
											class="fa fa-pencil">Edit</a></td>
									</tr>

								</c:forEach>
							</c:if>
						</tbody>
					</table>
				</div>
			</c:when>
			<c:when test="${mode == 'EDIT_USER'}">
				<form>
					<div class="form-group">
						<label for="food">Id</label> <label for="food">${user.getId()}</label>
					</div>
					<div class="form-group">
						<label for="food">User Name</label> <input type="text"
							class="form-control" id="foodName" value="${user.getUsername()}">
					</div>
					<div class="form-group">
						<label for="food">Email</label> <input type="text"
							class="form-control" id="description" value="${user.getEmail()}">
					</div>
					<div class="form-group">
						<label for="food">Role</label> <input type="text"
							class="form-control" id="timeServing" value="${user.getRole()}">
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
				</form>
			</c:when>
		</c:choose>
	</div>

	<!-- This is the end for the Users  -->

	<div class="container">
		<c:choose>
			<c:when test="${mode == 'VIEW'}">
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
							<c:if test="${not empty bookTable}">
								<c:forEach items="${bookTable}" var="t">
									<tr>
										<th scope="row">${t.getId()}</</th>
										<td>${t.getName()}</td>
										<td>${t.getEmail()}</td>
										<td>${t.getPeople()}</td>
										<td>${t.getPhone()}</td>
										<td>${t.getTableId()}</td>
										<td>${t.getMessage()}</td>
										<td>${t.getDate()}</td>
										<td><a href="/editBookTable?id=${t.getId()}"
											class="fa fa-pencil">Edit</a></td>
									</tr>

								</c:forEach>
							</c:if>
						</tbody>
					</table>
				</div>
			</c:when>
			<c:when test="${mode == 'EDIT_BOOK_TABLE'}">
				<form>
					<div class="form-group">
						<label for="food">Id</label> <label for="food">${book.getId()}</label>
					</div>
					<div class="form-group">
						<label for="food">Name</label> <input type="text"
							class="form-control" id="foodName" value="${book.getName()}">
					</div>
					<div class="form-group">
						<label for="food">Email</label> <input type="text"
							class="form-control" id="description" value="${book.getEmail()}">
					</div>
					<div class="form-group">
						<label for="food">People</label> <input type="text"
							class="form-control" id="timeServing" value="${book.getPeople()}">
					</div>
					<div class="form-group">
						<label for="food">Phone</label> <input type="text"
							class="form-control" id="timeServing" value="${book.getPhone()}">
					</div>
					<div class="form-group">
						<label for="food">Table id</label> <input type="text"
							class="form-control" id="timeServing"
							value="${book.getTableId()}">
					</div>
					<div class="form-group">
						<label for="food">Message</label> <input type="text"
							class="form-control" id="timeServing"
							value="${book.getMessage()}">
					</div>
					<div class="form-group">
						<label for="food">Date Booked</label> <input type="text"
							class="form-control" id="timeServing" value="${book.getDate()}">
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
				</form>
			</c:when>
		</c:choose>
	</div>


	<div class="container">
		<c:choose>
			<c:when test="${mode == 'VIEW'}">
				<div class="row">
					<h4 class="widget-title">Restorant Tables</h4>
					<table class="table">
						<thead>
							<tr>
								<th scope="col">id</th>
								<th scope="col">Is Available</th>
								<th scope="col">Number Of Chairs</th>
								<th scope="col">Table Id</th>
								<th scope="col">Edit</th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${not empty table}">
								<c:forEach items="${table}" var="t">
									<tr>
										<th scope="row">${t.getId()}</</th>
										<td>${t.isAvailable()}</td>
										<td>${t.getTabelId()}</td>
										<td>${t.getNumberOfChairs()}</td>
										<td><a href="/edtitTable?id=${t.getId()}" class="fa fa-pencil">Edit</a></td>
									</tr>

								</c:forEach>
							</c:if>
						</tbody>
					</table>
				</div>
			</c:when>
			<c:when test="${mode == 'EDIT_TABLE'}">
				<form>
					<div class="form-group">
						<label for="food">Id</label> <label for="food">${t.getId()}</label>
					</div>
					<div class="form-group">
						<label for="food">Is Available</label> <input type="text"
							class="form-control" id="foodName" value="${t.isAvailable()}">
					</div>
					<div class="form-group">
						<label for="food">Table Id </label> <input type="text"
							class="form-control" id="description" value="${t.getTabelId()}">
					</div>
					<div class="form-group">
						<label for="food">Number Of Chairs</label> <input type="text"
							class="form-control" id="timeServing" value="${t.getNumberOfChairs()}">
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
				</form>
			</c:when>
		</c:choose>
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