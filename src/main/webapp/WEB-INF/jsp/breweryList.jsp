<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/common/header.jsp"/>

<section class="breweryPage container-fluid">
	<div class="row">
		<c:forEach var="brewery" items="${breweries}" varStatus="loop">
			<div class="brewery col-xs-6 col-sm-4 col-md-3">
			<c:url var="breweryDetailsPageUrl" value="/breweryDetailsPage">
				<c:param name="breweryId" value="${brewery.breweryId}"/>
			</c:url>	
				<h3><a href="${breweryDetailsPageUrl}"> ${brewery.name} </a></h3>
				<c:url var="breweryImg" value="img/breweries/${brewery.imagePath}"/>
				<a href="${breweryDetailsPageUrl}"> <img class="img-responsive img-rounded" src="${breweryImg}"/>
				</a>
			</div>
		</c:forEach>
	</div>
</section>


<c:import url="/WEB-INF/jsp/common/footer.jsp"/>
