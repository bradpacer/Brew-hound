<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/common/header.jsp"/>

	<section>
		<c:url var="breweriesImg" value="/img/breweries/${breweries.imageName}"/>
		<div class = "detailBreweryImageDiv">
			<img class="detailBreweryImage" src="${breweriesImg}"/>
		</div>
		
		<div id="breweryNameStyle">
			<c:out value="${brewery.breweryName}" />
		</div>
		
		<div class="breweryInfo">
			<h2 class="breweryDetailHeader">Brewery Details</h2>
				<b>Name:</b> <c:out value="${brewery.name}" /><br>
				<b>Address:</b> <c:out value="${brewery.address}" /><br>
				<b>Description:</b> <c:out value="${brewery.description}"/> <br>
		</div>
		
		<div id="breweryBeers">
			<h2 class="breweryBeersList">Signature Beers</h2>
			<b>Name:</b> <c:out value="${beer.name}" /> <br>
			<b>Description:</b> <c:out value="${beer.description}" />
		</div>
		
	</section>
	
<c:import url="/WEB-INF/jsp/common/footer.jsp"/>	