<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Bootstrap 4 Navbar with Logo Image</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css"
	rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>
<style>
.bs-example {
	margin: 20px;
}

.navbar {
	position: relative;
}
</style>
</head>
<body>
	<div class="bs-example">
		<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
			<a href="/home"> <img src="/resources/image/images.png" height="50" width="120"
				alt="CoolBrand">
			</a>
			<button type="button" class="navbar-toggler" data-toggle="collapse"
				data-target="#navbarCollapse">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarCollapse">
				<div class="navbar-nav">

					<a href="/home" class="nav-item nav-link active"><spring:message code="header.home" /></a> 

				</div>
				<div class="navbar-nav ml-auto">
					<a href="/login" class="nav-item nav-link active"><spring:message code="header.Login" /></a>
				</div>


				<form
					class="form-inline d-flex justify-content-center md-form form-sm active-pink active-pink-2 float-left"
					action="/searchByLocation" method="get">
					<i class="fas fa-search" aria-hidden="true"></i> <input
						class="form-control form-control-sm ml-2 w-65" type="text"
						placeholder="Search location" name="location" aria-label="Search">
				</form>



				<div class="Add" >
					<a href="add" class="btn btn-danger" role="button"><spring:message code="header.Sell" /></a> <a
						href="/ad/show" class="btn btn-success" role="button"><spring:message code="header.AllAds" /></a>
				</div>
			</div>
			<div class="dropdown">
			<button class="btn btn-primary dropdown-toggle" type="button"
					data-toggle="dropdown">
					 <spring:message code="header.Language" />
				</button>
			<ul class="dropdown-menu">
			<li><a href="${pageContext.request.contextPath}?lang=en"><spring:message code="header.English" /></a></li>	
			<li><a href="${pageContext.request.contextPath}?lang=fr"><spring:message code="header.French" /></a>	</li>
			</ul>			</div>	
			<!-- Search form -->
			<form
				class="form-inline d-flex justify-content-center md-form form-sm active-pink active-pink-2 "
				action="/search" method="get">
				<i class="fas fa-search" aria-hidden="true"></i> <input
					class="form-control form-control-sm ml-2 w-65" type="text"
					placeholder="Search" name="search" aria-label="Search">
			</form>

			<div class="dropdown">
				<button class="btn btn-primary dropdown-toggle" type="button"
					data-toggle="dropdown">
					<spring:message code="header.Profile" />
				</button>
				<ul class="dropdown-menu">
					<c:if test="${sessionScope.userId==null}">
						<li><a href="/login"><spring:message code="header.Login" /></a></li>
						<li><a href="/registration"><spring:message code="header.Register" /></a></li>


					</c:if>
					<c:if
						test="${sessionScope.userId!=null && sessionScope.role == 'ADMIN'}">
						<li><a  href="${pageContext.request.contextPath}/account"><spring:message code="header.MyAccount" /></a></li>
						<li><a
							href="${pageContext.request.contextPath}/admin/allUser"><spring:message code="header.SeeAllUsers" /></a></li>
						<li><a
							href="${pageContext.request.contextPath}/admin/allProduct">
							<spring:message code="header.ManageAds" /></a></li>
						<li><a href="/logout"><spring:message code="header.Logout" /></a></li>
					</c:if>
					<c:if
						test="${sessionScope.userId!=null && sessionScope.role == 'USER'}">
						<li><a href="${pageContext.request.contextPath}/account"><spring:message code="header.MyAccount" /></a></li>
						<li><a href="${pageContext.request.contextPath}/myads">
								<spring:message code="header.MyAds" /></a></li>
						<li><a href="${pageContext.request.contextPath}/check"><spring:message code="header.Membership" /></a></li>
						<li><a href="/logout"><spring:message code="header.Logout" /></a></li>

					</c:if>

				</ul>
			</div>



		</nav>
	</div>
</body>
</html>