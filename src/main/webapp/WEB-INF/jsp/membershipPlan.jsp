<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>VLX</title>

<link href="${contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${contextPath}/resources/css/common.css" rel="stylesheet">
<link rel="stylesheet" href="/resources/css/style.css">

<style>


.card {
	margin-left: 650px;
	margin-top: 50px;
	width: 500px;
	text-align: center;
}

.btn {
	margin-left: 90px;
}

h5 {
	color: white
}
</style>

</head>

<body>
<div><a href="/"> <img src="/resources/image/images.png" height="50" width="120"
				alt="CoolBrand">
			</a></div>

	<div class="row">
		<div>

			<div class="card text-white">
				<div class="card-body">
					<h5 class="card-title">
						<p class="card-text">
						<h5>Your Current Membership Plan
							is:${sessionScope.MembershipType}</h5>
						</br> </br>
						<h5>Your Membership plan is going to expire
							on:${sessionScope.ToDate}</h5>
					</h5>
					
						
						<a href="/home" class="btn btn-danger" role="button">home</a>
						
					

				</div>
			</div>
		</div>

	</div>

</body>
</html>