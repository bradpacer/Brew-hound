<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<c:import url="/WEB-INF/jsp/common/header.jsp">
	<c:param name="pageTitle" value="${brewery.name}" />
</c:import>	

<%-- begin variables --%>
<c:url var="imagePath" value="img/breweries/${brewery.imagePath}" />
<c:url var="beerUrl" value="/Beer">
	<c:param name="beerId" value="${beer.breweryId}"/>
</c:url>
<c:url var="breweryUrl" value="/Brewery">
	<c:param name="breweryId" value="${brewery.breweryId}" />
</c:url>
<%-- end variables --%>


	
	<div class="parallax" style="background-image: url(${imagePath})">
</div>
<div class="container brewery-container">
		<div>
		<h1>
			<c:out value="${brewery.name}" />
			<small class="text-muted"> <c:out value="${brewery.address}" />
			</small>
		</h1>
	</div>
	<div>
		<h3>
			Founded in
			<c:out value="${brewery.yearFounded}" />
		</h3>
	</div>
	<div>
		<p>
			<c:out value="${brewery.description}" />
		</p>
	</div>
		<div id="breweryBeers">
			<h2 class="breweryBeersList">Signature Beers</h2>
			<b>Name:</b> <c:out value="${beer.name}" /> <br>
			<b>Description:</b> <c:out value="${beer.description}" />
		</div>
		
	</div>
	
<c:import url="/WEB-INF/jsp/common/footer.jsp"/>	