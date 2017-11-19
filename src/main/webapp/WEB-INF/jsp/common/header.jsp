<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Brew Hound - Local Brewery Finder</title>
    <c:url value="/css/brewerycapstone.css" var="cssHref" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>	
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${cssHref}">
</head>

<body class="container-fluid">
    <header class="row">
    		<c:url value="/" var="homePageHref" />
    		<c:url value="/img/logoTitle.jpg" var="logoSrc" />
        <a href="${homePageHref}">
        		<img class="col-xs-offset-3 col-xs-6" src="${logoSrc}" alt="Brew Hound" />
        </a>
    	</header>
    <nav class="navbar navbar-default">
	    <div class="container-fluid">
	        <ul class="nav navbar-nav">
			  <li><a href="${homePageHref}">Home</a></li>
			  <c:url value="/breweryList" var="breweryDetailsHref" />
			  <li><a href="${breweryDetailsHref}">Breweries</a></li> 
			  <li><a href="${reviews}">Reviews</a></li> 
			  <li><a href="${map}">Maps</a></li>                       
	        </ul>
	        <ul class="nav navbar-nav navbar-right">
				<c:choose>
					<c:when test="${empty currentUser}">
						<c:url var="newUserHref" value="/users/new" />
						<li><a href="${newUserHref}">Register</a></li>
						<c:url var="loginHref" value="/login" />
						<li><a href="${loginHref}">Log In</a></li>
					</c:when>
					<c:otherwise>
						<c:url var="logoutAction" value="/logout" />
						<form id="logoutForm" action="${logoutAction}" method="POST"></form>
						<li><a id="logoutLink" href="#">Log Out</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
        </div>
    </nav>