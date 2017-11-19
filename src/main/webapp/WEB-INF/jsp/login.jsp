<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/common/header.jsp"/>


<div class="row">
	<div class="col-sm-offset-4 col-sm-4">
		<c:url var="formType" value="/login" />
		<form method="POST" action="${formType}">
			<div class="form-group">
				<label for="userName">Username: </label>
				<input type="text" id="userName" name="userName" placeHolder="Username" class="form-control" />
			</div>
			<div class="form-group">
				<label for="password">Password: </label>
				<input type="password" id="password" name="password" placeHolder="Password" class="form-control" />
			</div>
			<input type="hidden" name="destination" value="${param.destination}">
			<button type="submit" class="btn btn-default">Login</button>
		</form>
	</div>
</div>