<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mokjo</title>

<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://code.jquery.com/jquery-3.3.1.min.js">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
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
				<a href="/">Home</a> <a href="/register">Register</a>
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
	<div class="container">
		<div class="row main">
			<div class="panel-heading">
				<div class="panel-title text-center">
					<h1 class="title">Login</h1>
					<hr />
				</div>
			</div>
			
			<p>${errorLogin}</p>
			
			<div class="main-login main-center">
				<form class="form-horizontal" method="POST" action="/login">

					<div class="form-group">
						<label for="email" class="cols-sm-2 control-label">Your
							Email</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><iclass="fa fa-envelope fa" aria-hidden="true"></i></span>
									 <input type="text" class="form-control" name="email" id="email" placeholder="Enter your Email" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label for="password" class="cols-sm-2 control-label">Password</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="fa fa-lock fa-lg" aria-hidden="true"></i></span> 
									<input type="password" class="form-control" name="password" id="password" placeholder="Enter your Password" />
							</div>
						</div>
					</div>

					<div class="form-group ">
						<button type="submit" class="btn btn-primary btn-lg btn-block login-button" value="submit" >Login</button>
					</div>
				</form>
			</div>
		</div>
	</div>

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