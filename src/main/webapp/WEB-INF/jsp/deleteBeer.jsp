<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<c:import url="/WEB-INF/jsp/common/header.jsp" />
<div class="container">
	<h2>Delete a Beer</h2>
	<c:url var="formAction" value="/user/${currentUser.username}/deleteBeer" />
	
	<div class="row">
			<div class="col-xs-offset-3 col-xs-6">
	
 <form method="POST" action="${formAction}">
		
		<div class="form-group">
				<label for="breweryName">Brewery Name:</label> 
				<select class="form-control" name="breweryId" required>
					<c:forEach var="brewery" items="${breweries}">
						<option value="${brewery.breweryId}"><c:out value="${brewery.name}"/></option>
					</c:forEach>
				</select>			
			</div>
			<div class="form-group">
				<label for="breweryName">Beer Name:</label> 
				<select class="form-control" name="beerId" required>
					<c:forEach var="beer" items="${beerList}">
						<option value="${beer.breweryId}"><c:out value="${beer.name}"/></option>
					</c:forEach>
				</select>			
			</div>
				<div>
			<button type="submit" class="btn btn-default">Delete Beer</button>
		</div>
		</form>
		</div>
	</div>
 
	
	
	
	
	
	
	</div>



<c:import url="/WEB-INF/jsp/common/footer.jsp" />