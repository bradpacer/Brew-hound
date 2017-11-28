<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/common/header.jsp" />

<div class="jumbotron" style="background-image: url('img/homepage/homepage.jpg')">
	<section class="homePage container-fluid">
		<h2 class="center"><link href="https://fonts.googleapis.com/css?family=Exo+2:600" rel="stylesheet">Monthly Featured Brewery</h2>
		<br>
		<div class="row">
			<div class="brewery col-sm-6 col-md-4">
				<h2 class="centered">${landGrant.name }</h2>
				<c:url var="breweryImg" value="img/LGTaproom.jpg" />
				<img class="img-responsive img-rounded" src="${breweryImg}" /><br>
			</div>
			<div class="brewery col-sm-6 col-md-4">
				<h2 class="centered">Greens Keeper</h2>
				<c:url var="breweryImg" value="img/Greenskeeper.jpg" />
				<img class="img-responsive img-rounded" src="${breweryImg}" /> <br>
			</div>
			<div class="brewery col-sm-6 col-md-4">
				<h2 class="centered">Location</h2>
				<!--THIS IS WHERE THE GOOGLE MAPS API WILL BE INSERTED FOR HOMEPAGE-->
				<div id="map"></div>
			</div>
		</div>
	</section>
</div>

<c:import url="/WEB-INF/jsp/common/footer.jsp" />