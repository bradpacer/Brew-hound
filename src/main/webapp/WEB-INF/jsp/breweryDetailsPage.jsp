<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<c:import url="/WEB-INF/jsp/common/header.jsp">
	<c:param name="pageTitle" value="${brewery.name}" />
</c:import>

<%-- begin variables --%>
<c:choose>
	<c:when test="${empty brewery.imagePath}">
		<c:url var="imagePath" value="img/defaultDetails/Default.jpg" />
	</c:when>
	<c:otherwise>
		<c:url var="imagePath" value="img/details/${brewery.imagePath}"/>
	</c:otherwise>
</c:choose>
<c:url var="breweryUrl" value="/Brewery">
	<c:param name="breweryId" value="${brewery.breweryId}" />
</c:url>
<%-- end variables --%>




<div class="jumbotron" style="background-image: url(${imagePath})">
<div class="container-fluid brewery-container">
<div class="container" id="brewery-details">
	<div>
		<h1 class="brewery-text">
			<c:out value="${brewery.name}" /><br>
			<small class="text-muted"> <c:out value="${brewery.address}" />
			</small>
		</h1>
	</div>
	<div>
		<h2 class="founded">
			Founded in
			<c:out value="${brewery.yearFounded}" />
		</h2>
	</div>
	<div>
		<p>
			<c:out value="${brewery.description}" />
		</p>
	</div>
	<div id="breweryBeers">
		<h2 class="breweryBeersList">Signature Beers</h2>
		<c:forEach var="brewery" items="${beer}">
			<div>
				<b>Name:</b>
				<button type="button" data-toggle="modal" data-target=".${brewery.beerId}">
					<c:out value="${brewery.name}" />
				</button>
				<!-- Modal -->
				<div class="modal fade ${brewery.beerId }" role="dialog">
					<div class="modal-dialog modal-sm">

						<!-- Modal content-->
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>

								<h4 class="modal-title">
									<c:out value="${brewery.name}" />
								</h4>
							</div>
							<div class="modal-body">
								<p>
									<c:out value="${brewery.beerType}" />
								</p>
								<p>
									ABV:
									<c:out value="${brewery.abv}" />%
									
								</p>
								<p>
									IBU:
									<c:out value="${brewery.ibu}" />
								</p>
								<p>
									Best enjoyed in
									<c:out value="${brewery.glassType}" /> Glass
								</p>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Close</button>
							</div>
						</div>

					</div>
				</div>
				<br>
			</div>
			<div>
				<b>Description:</b>
				<c:out value="${brewery.description}" />
			</div>
			<br>
		</c:forEach>
	</div>
</div>
</div>
</div>

<c:import url="/WEB-INF/jsp/common/footer.jsp" />
