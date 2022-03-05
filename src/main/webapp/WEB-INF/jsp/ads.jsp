<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>VLX</title>
  <meta charset="utf-8">
 
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="/css/style.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap.min.css">

 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
      
</head>
<body>
<div><a href="/"> <img src="/resources/image/images.png" height="50" width="120"
				alt="CoolBrand">
			</a></div>
<br>
<div class="container">
<h1 class="text-center">All Ads
<a href="${pageContext.request.contextPath}/home" class="btn btn-danger text-right">Go Home</a>
</h1>


<br><br>
<div class="container">
 <div class="row">
  <c:forEach var="ad" items="${ads}">
 <br>
  <div class="col-lg-4 col-md-6 mb-2 ml-6">
  
    <div class="row">
          <div >
    
  			<div class="card" style="width:300px","height=200px">
 
 			<img  class="card-img-top" src="${pageContext.request.contextPath}/ad/display/${ad.id}" alt="images" height="200px"  width="10px"/>
  			<div class="card-body">
   			<h1 class="card-title">${ad.name}</h1>
  			<h4><p class="card-text">${ad.description}</p></h4>
   			<h4>Price:</h4><p style="font-size:15px;" > ${ad.price}<br></p>
			<h4>Location:</h4><p style="font-size:15px;" > ${ad.location}<br> </p> 
			<h4>Posted By:</h4><p style="font-size:15px;" >${ad.user.username}</p>  
			<h4> Contact Details:<br></h4>
				<p style="font-size:15px;" >Email: ${ad.user.emailId}</p>
				    
				<p style="font-size:15px;" >Phone: ${ad.user.mobileNumber}</p>	   
				   
				  
  			  <a href="${pageContext.request.contextPath}/ad/addetails?id=${ad.id}" class="btn btn-info text-right" target="_blank">View</a>
  
 			 </div>
  </div>
  </div>
  </div>
</div>
 			</c:forEach>
</div>

</div>
</div>


	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function() {
	    $('#example').DataTable();
	} );
	</script>
	<div>
  
  </div>
</body>
</html>