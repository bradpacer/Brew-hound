<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<c:import url="/WEB-INF/jsp/common/header.jsp" />
<div class="container">
	<h2>Delete a Beer</h2>
	<c:url var="formAction" value="/user/${currentUser.username}/deleteBeer" />
	
	
	
	
	
	
	</div>



<c:import url="/WEB-INF/jsp/common/footer.jsp" />