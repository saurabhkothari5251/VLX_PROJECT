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
<br>
<div><a href="/"> <img src="/resources/image/images.png" height="50" width="120"
				alt="CoolBrand">
			</a></div>
<h1 class="text-center">My Ads
<a href="${pageContext.request.contextPath}/home" class="btn btn-danger text-right">Go Home</a>
</h1>


<br><br>
<table id="example" class="table table-striped table-bordered text-center">
<caption>Ads List</caption>
        <thead>
            <tr>
                <th scope="col">SR. No.</th>
                <th scope="col">Name</th>
                <th scope="col">Image</th>
                <th scope="col">Description</th>
                <th scope="col">Price</th>
                <th scope="col">Location</th>
                <th scope="col">Category </th>
                <th scope="col">Action</th>
            </tr>
        </thead>
        <tbody>
        <c:set var="count" value="0" scope="page"></c:set>
        <c:forEach var="ad" items="${adsuser}">
        <c:set var="count" value="${count + 1}" scope="page"></c:set>
            <tr>
                <td>${count}</td>
                <td>${ad.name}</td>
                <td><img src="${pageContext.request.contextPath}/ad/display/${ad.id}" alt="images" height="400px" width="400px"/></td>
                <td>${ad.description}</td>
                <td>${ad.price}</td>
                <td>${ad.location}</td>
                 <td>${ad.category}</td>
               
                <td><a href="${pageContext.request.contextPath}/ad/addetails?id=${ad.id}" class="btn btn-info text-right" target="_blank">View</a></td>
                  <td><a href="/update/ad/${ad.getId()}" class="btn btn-info text-right" target="_blank">Update</a></td>
                
            </tr>
         </c:forEach>
        </tbody>
        <tfoot>
            <tr>
                <th scope="col">SR. No.</th>
                <th scope="col">Name</th>
                <th scope="col">Image</th>
                <th scope="col">Description</th>
                <th scope="col">Price</th>
                <th scope="col">location</th>
                <th scope="col">Category</th>
                <th scope="col">Action</th>
            </tr>
        </tfoot>
    </table>




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