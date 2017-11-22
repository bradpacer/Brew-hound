<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/common/header.jsp" />

<h2>Test</h2>
<h2>${currentUser.username}'sDashboard</h2>
<c:url var="updatePassword" value="/user/${currentUser.username}/changePassword" />
<div class="container">
	<div class="row justify-content-center">
		<form action="${formAction}" method=GET id="changePassword">
			<button class="col-xs-offset-5 col-xs-2" type="submit" class="btn btn-default">Update Password</button>
		</form>
	</div>
</div>


<c:import url="/WEB-INF/jsp/common/footer.jsp" />