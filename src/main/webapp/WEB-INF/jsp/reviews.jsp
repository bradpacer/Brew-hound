<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/common/header.jsp" />

<h2>Brew Reviews</h2>
<div class="container">
	<div class="row">
		<div class="col-xs-12">
			<h4 style="text-align: center">Top Beers</h4>
		</div>
		<div class="table-bg">
			<table class="table table-hover table-responsive">
				<thead>
					<tr>
						<th scope="col">Beer</th>
						<th scope="col">Description</th>
						<th scope="col">Rating</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${beerReviews}" var="review">
					<c:url var="beerReviews" value="/reviews/${review.beer.name}"><%-- <c:param name="beerName" value="${review.beer.id }"/> --%> </c:url>
					<tr class="beer-row" data-href="${beerReviews}">
						<th scope="row">
							${review.beer.name}
						</th>
						<td>
							${review.beer.description}
						</td>
						<td>
							${review.averageRating}
						</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
			<div>
			</div>
	</div>
</div>


<c:import url="/WEB-INF/jsp/common/footer.jsp" />