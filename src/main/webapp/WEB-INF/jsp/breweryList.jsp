<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/common/header.jsp"/>

<section class="homePage container">
	<div class="row">
		<c:forEach var="brewery" items="${breweries}" varStatus="loop">
			<div class="col-xs-12 col-md-4">
				<h2>${brewery.name}</h2>
				<div class="img-div">
					<c:url var="breweryImg" value="img/breweries/${brewery.imagePath}"/>
					<img class="img-fluid" src="${breweryImg}"/>
				</div>
			</div>
		</c:forEach>
	</div>
</section>

<c:import url="/WEB-INF/jsp/common/footer.jsp"/>
