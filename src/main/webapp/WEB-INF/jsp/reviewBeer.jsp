<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<c:import url="/WEB-INF/jsp/common/header.jsp">
</c:import>

<div class="container">

	<h2>Review a Beer</h2>
	<p class="lead center">Tell us about your favorite brews</p>
	<c:url var="formAction" value="/reviewBeer" />
	<form method="POST" action="${formAction}">
		Which brewery is the beer from: 
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputName">Brewery Name:</label> <select class="form-control" id="brewerydropdown">
					<c:forEach var="brewery" items="${breweries}">
						<option value="${brewery.breweryId}"><c:out value="${brewery.name}"/></option>
					</c:forEach>
				</select>
			</div>
			<div class="form-group col-md-6">
				<label for="description">Description:</label>
				<textarea class="form-control" rows="5" id="comment"></textarea>
			</div>
			<div class="form-group">
				<label for="rating">Rating:</label> <select class="form-control"
					id="rating">
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
					<option>5</option>
				</select>
			</div>
		</div>
		<button type="submit" class="btn btn-default">Submit Review</button>
	</form>


</div>

<c:import url="/WEB-INF/jsp/common/footer.jsp" />