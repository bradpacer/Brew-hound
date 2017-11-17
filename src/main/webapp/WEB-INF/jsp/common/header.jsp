<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Brew Hound - Local Brewery Finder</title>
    <c:url value="/css/brewerycapstone.css" var="cssHref" />
    <link rel="stylesheet" href="${cssHref}">
</head>

<body>
    <header>
    		<c:url value="/" var="homePageHref" />
    		<c:url value="/img/logoTitle.jpg" var="logoSrc" />
        <a href="${homePageHref}">
        		<img src="${logoSrc}" alt="Brew Hound" />
        </a>
        </header>
<div>
    <nav>
        <ul>
		  <li><a href="${homePageHref}">Home</a></li>
		  <li><a href="${breweries}">Breweries</a></li> 
		  <li><a href="${reviews}">Reviews</a></li> 
		  <li><a href="${map}">Maps</a></li>                       
        </ul>
    </nav>
</div>