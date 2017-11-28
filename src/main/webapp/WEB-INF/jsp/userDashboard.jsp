<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/common/header.jsp" />

<h2>${currentUser.username}'s Dashboard</h2>
<c:url var="updatePassword"
	value="/user/${currentUser.username}/changePassword" />
<c:url var="addBeer" value="/user/${currentUser.username}/addBeer" />
<c:url var="deleteBeer" value="/user/${currentUser.username}/deleteBeer" />
<c:url value="/addBrewery" var="addBreweryHref" />
<c:url value="/user/${currentUser.username}/addBrewer"
	var="addBrewerUser" />
<c:url value="/user/deleteAccount" var="deleteAccount" />

<div class="container">
	<div class="row dashboard-buttons">
		<div class="col-xs-offset-5 col-xs-2">
			<form action="${updatePassword}" method=GET id="changePasswordLink">
				<button class="btn btn-default btn-block" type="submit">Update
					Password</button>
			</form>
		</div>
		<div class="col-xs-offset-5 col-xs-2">
			<form action="${addBeer}" method=GET id="addBeerLink">
				<button class="btn btn-default btn-block" type="submit">Add
					Beer</button>
			</form>
		</div>
		<div class="col-xs-offset-5 col-xs-2">
			<form action="${deleteBeer}" method=GET id="deleteBeerLink">
				<button class="btn btn-default btn-block" type="submit">Delete
					Beer</button>
			</form>
		</div>
		<!-- ADMIN ROLES -->
		<c:if test="${currentUser.role.equals('admin')}">
			<div class="col-xs-offset-5 col-xs-2">
				<form action="${addBreweryHref}" method=GET id="addBeerLink">
					<button class="btn btn-default btn-block" type="submit">Add
						Brewery</button>
				</form>
			</div>
			<div class="col-xs-offset-5 col-xs-2">
				<form action="${addBrewerUser}" method=GET id="createBrewerLink">
					<button class="btn btn-default btn-block" type="submit">Create
						Brewer Account</button>
				</form>
			</div>
		</c:if>
		<br> <br>
		<div class="col-xs-offset-5 col-xs-2">
			<form action="${deleteAccount}" method=POST id="deleteAccount">
				<button class="btn btn-default btn-block" type="submit">Delete
					Account</button>
				<input type="hidden" id="usernameHidden" name="username" value="${currentUser.username }" />
			</form>
		</div>
	</div>
</div>


<c:import url="/WEB-INF/jsp/common/footer.jsp" />