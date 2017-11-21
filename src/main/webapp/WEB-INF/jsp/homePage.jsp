<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/common/header.jsp"/>

<section class="homePage container">
	<h2 class="center">Welcome to BrewHound</h2>
	<div class="row">
		<div class="col-s-12 col-md-4">
			<div class="img-div">
				<c:url var="breweryImg" value="img/breweries/${brewery.imagePath}"/>
				<img class="img-responsive img-rounded" src="${breweryImg}"/>
			</div>
		</div>
	</div>
</section>

<c:import url="/WEB-INF/jsp/common/footer.jsp"/>