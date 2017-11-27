<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<c:import url="/WEB-INF/jsp/common/header.jsp" />
<h2>TEST</h2>
<div class="container">
	<h2>Add Your Beer</h2>
	<c:url var="formAction" value="/user/${currentUser.username}/addBeer" />
	
<form method="POST" action="${formAction}">
	<div class="form-row">
			<div class="form-group col-md-6">
				<label for="breweryName">Brewery Name:</label> 
				<select class="form-control" name="breweryName">
					<c:forEach var="brewery" items="${BreweryList}">
						<option value="${brewery_id}"><c:out value="${brewery.name}"/></option>
					</c:forEach>
				</select>			
			</div>
			<div class="form-group col-md-6">
				<label for="inputBeerName">Beer Name:</label> 
				<input type="text" class="form-control" name="name" id="inputBeerName" placeholder="Beer Name" required>
			</div>
			<div class="form-group col-md-6">
				<label for="inputDescription">Description:</label> 
				<input type="text" class="form-control" name="description" id="inputDescription" placeholder="Description" required>
			</div>
			<div class="form-group col-md-6">
				<label for="inputBeerType">Beer Type:</label> 
				<input type="text" class="form-control" name="beerType" id="inputBeerType" placeholder="Beer Type" required>
			</div>
		<div class="form-group col-md-6">
			<label for="inputAbv">ABV:</label> 
			<input type="text" class="form-control" name="abv" id="inputAbv" placeholder="e.g. 7.0" required>
		</div>
		<div class="form-group col-md-6">
			<label for="inputIbu">IBU:</label> 
			<input type="text" class="form-control" name="ibu" id="inputIbu" placeholder="e.g. 65" required>
		</div>
		<div class="form-group col-md-6">
			<label for="inputGlassType">Glass Type:</label> 
			<input type="text" class="form-control" name="glassType" id="inputGlassType" placeholder="Glass Type" required>
		</div>
			<div class="form-group col-md-6">
			<button type="submit" class="btn btn-default">Add Beer</button>
		</div>
	</div>
		
</form>


</div>



<c:import url="/WEB-INF/jsp/common/footer.jsp" />
