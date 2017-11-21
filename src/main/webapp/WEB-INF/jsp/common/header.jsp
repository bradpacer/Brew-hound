<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Brew Hound</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<c:url value="/css/brewerycapstone.css" var="cssHref" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<c:url value="/js/brewHound.js" var="jsHref" />
<script src=${jsHref }></script>
<link rel="stylesheet" href="${cssHref}">
</head>
<body>
	<nav class="navbar navbar-inverse">
		<header class="row">
			<c:url value="/" var="homePageHref" />
			<c:url value="/img/logoTitle.jpg" var="logoSrc" />
			<a href="${homePageHref}"> <img class="col-xs-offset-3 col-xs-6"
				src="${logoSrc}" alt="Brew Hound" />
			</a>
		</header>
		<nav class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"></a>   <!-- THIS IS WHERE WE WILL INSERT OUR BREW HOUND LOGO! -->
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="${homePageHref}">Home</a></li>
					<c:url value="/breweryList" var="breweryDetailsHref" />
					<li><a href="${breweryDetailsHref}">Breweries</a></li>
					<li><a href="${reviews}">Reviews</a></li>
					<li><a href="${map}">Maps</a></li>
					<c:url value="/addBrewery" var="addBreweryHref" />
					<li><a href="${addBreweryHref}">Add Brewery</a>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<c:choose>
						<c:when test="${empty currentUser}">
							<c:url var="newUserHref" value="/users/new" />
							<li><a href="${newUserHref}"><span
									class="glyphicon glyphicon-user"></span> Sign Up</a></li>
							<c:url var="loginHref" value="/login" />
							<li><a href="${loginHref}"><span
									class="glyphicon glyphicon-log-in"></span> Login</a></li>
						</c:when>
						<c:when test="${currentUser.role.equals('brewer')}">
							<form id="logoutForm" action="${logoutAction}" method="POST"></form>
							<li style="padding-right: 20px"><a id="logoutLink" href="#"><span
									style="padding-right: 5px" class="fa fa-beer"></span>Log Out</a></li>
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
	</nav>
</body>