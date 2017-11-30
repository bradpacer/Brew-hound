<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<c:import url="/WEB-INF/jsp/common/header.jsp">
</c:import>

<div class="container">

	<h2 class="center">Review a Beer</h2>
	<p class="lead center">Tell us about your favorite brews</p>
	<c:url var="formAction" value="/reviewBeer" />
	
	<script>
	var beers = {};
	<c:forEach var="brewery" items="${breweryMap.keySet()}">
		beers["${brewery.name.replaceAll(" ", "_").replaceAll("-", "_")}"] = [
		<c:forEach var="beer" items="${breweryMap.get(brewery)}">
			{"name": "${beer.name}", "id": ${beer.beerId} },
		</c:forEach>
		];
	</c:forEach>
	</script>
	
	<form method="POST" action="${formAction}"> 
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputName">Brewery Name:</label> <select class="form-control" id="brewerydropdown">
					<c:forEach var="brewery" items="${breweries}">
						<option value="${brewery.breweryId}" data-beer-list="${brewery.name.replaceAll(" ", "_").replaceAll("-", "_")}"><c:out value="${brewery.name}"/></option>
						<c:set var="breweryChoice" value="${brewery}" />
					</c:forEach>
				</select>
			</div>
			<div class="form-group col-md-6">
				<label for="inputName">Beer Name:</label> <select name="beerId" class="form-control" id="beerDropdown">
					
				</select>
			</div>
			<div class="form-group col-md-6">
				<label for="description">Description:</label>
				<textarea name="description" class="form-control" rows="5" id="comment"></textarea>
			</div>
			<div class="form-group col-md-3">
				<label for="rating">Rating:</label> <select name="rating" class="form-control"
					id="rating">
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
					<option>5</option>
				</select>
			</div>
		</div>
		<input type="hidden" value="${currentUser.userId}" name="userId" />
		<div class="row">
			<div class="col-md-2">
				<button type="submit" class="btn btn-default">Submit Review</button>
			</div>
		</div>
	</form>
	
	<script>
		$('#brewerydropdown').on('change', function(event) {
			var beerList = beers[$(this).find(':selected').data('beer-list')];
			$('#beerDropdown').empty();
			for(var beer of beerList) {
				var option = $('<option>').text(beer.name).val(beer.id);
				$('#beerDropdown').append(option);
			}
		});
	</script>

</div>

<c:import url="/WEB-INF/jsp/common/footer.jsp" />