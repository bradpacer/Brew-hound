<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/common/header.jsp"/>

<section class="homePage">
	<h2>${breweries.get(0).name } </h2>
	<c:forEach var="brewery" items="${breweries}" varStatus="loop">
		<div class="breweries-div">
			<div class="img-div">
				<c:url var="breweryImg" value="img/breweries/${brewery.imagePath}"/>
				<img src="${breweryImg}"/>
			</div>
		</div>
	</c:forEach>
</section>

<c:import url="/WEB-INF/jsp/common/footer.jsp"/>
