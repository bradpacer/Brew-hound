<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/common/header.jsp"/>

<section class="homePage container-fluid">
	<div class="row">
		<c:forEach var="brewery" items="${breweries}" varStatus="loop">
			<div class="col-xs-12 col-s-8 col-md-4">
				<div class="img-div">
					<h2>${brewery.name}</h2>
					<c:url var="breweryImg" value="img/breweries/${brewery.imagePath}"/>
					<img class="img-responsive img-rounded" src="${breweryImg}"/>
				</div>
			</div>
		</c:forEach>
	</div>
</section>


<c:import url="/WEB-INF/jsp/common/footer.jsp"/>
