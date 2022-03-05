<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>VLX</title>

<link href="${contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">

<style>


.footer {
  position: fixed;
  left: 0;
  bottom: 0;
  width: 100%;
 
}

.card
{
margin-left:650px;
width:500px;
text-align:"center;
}

</style>
</head>
<body>
<div><a href="/"> <img src="/resources/image/images.png" height="50" width="120"
				alt="CoolBrand">
			</a></div>

	<div class="row">
		<div>
		
			<div class="card " >
				<div class="card-body">
					<h5 class="card-title ">Payment Successful</h5>
					<div class="card-text">
					
					<form:form method="POST" modelAttribute="paymentform"
						class="form-signin">
						<button class="btn btn-lg btn-success btn-block" type="submit">Done</button>
					</form:form>
					<a href="/home" class="btn btn-danger" role="button">home</a>
				</div>
				</div>
			</div>
			
		</div>
	



</body>
</html>