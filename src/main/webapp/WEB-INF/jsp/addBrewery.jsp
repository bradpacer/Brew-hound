<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<c:import url="/WEB-INF/jsp/common/header.jsp">
	<c:param name="pageTitle" value="Add Brewery" />
</c:import>

<div class="container">

	<h2>Add Your Brewery!</h2>
	<p class="lead">Tell us about your house of brews</p>

	<form>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputName">Brewery Name</label> 
				<input type="text" class="form-control" id="inputName" placeholder="Brewery Name">
			</div>
			<div class="form-group col-md-6">
				<label for="inputDescription">Description</label> 
				<input type="text" class="form-control" id="inputDescription" placeholder="Description">
			</div>
			<div class="form-group col-md-6">
				<label for="inputYearFounded">Year Founded</label> 
				<input type="text" class="form-control" id="inputYearFounded" placeholder="Year Founded">
			</div>
		<div class="form-group col-md-6">
			<label for="inputAddress">Address</label> 
			<input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St, City, State, Zip">
		</div>
		</div>
		<button type="submit" class="btn btn-primary">Submit</button>
	</form>


</div>














