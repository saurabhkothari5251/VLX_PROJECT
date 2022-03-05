<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>VLX</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="/resources/css/style.css">
    <link rel="stylesheet" href="/resources/css/main.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div><a href="/"> <img src="/resources/image/images.png" height="50" width="120"
				alt="CoolBrand">
			</a></div>
<form:form action="/update" method="post"
                   modelAttribute="ad" enctype="multipart/form-data">
        <form:hidden path="id" value="${ad.id}" />
				<div class="card-body">
		
				<div class="contact-grids1 w3agile-6">
						<div class="form-row">
							<label class="col-form-label">Name</label>
							<form:input type="text" class="form-control" placeholder="ad Name" id="name" name="name" path="name" required="required"/>
							<p id="error_name"></p>
						</div>
						<div class="form-row">
							<label class="col-form-label">Description</label>
							<form:textarea class="form-control" placeholder="ad Description" id="description" rows="3" cols="45" path="description" name="description" required="required"/>
							<p id="error_description"></p>
						</div>
						<div class="form-row">
							<label class="col-form-label">Price</label>
							<form:input type="text" class="form-control" placeholder="Price" name="price" path="price" id="price" required="required"/>
							<p id="error_price"></p>
						</div>
						
						
						<div class="form-row">
							<label class="col-form-label">Location</label>
					
					 <form:select class="form-control" placeholder="ad location" id="location" rows="3" cols="45" name="location" path="location" required="required">
					  <option>Pune</option>
				      <option>Mumbai</option>
				      <option>Hyderabad</option>
				      <option>Banglore</option>
				      <option>Delhi</option>
				    </form:select>
				    <p id="error_location"></p>
						</div>
						
						<div class="form-row">
							<label class="col-form-label">Category</label>
					
					 <form:select class="form-control" placeholder="ad category" path="category" id="category" rows="3" cols="45" name="category" required="required">
					  <option value="1">Electronics</option>
				      <option value="2">Mobiles</option>
				      <option value="3">Cars</option>
				      <option value="4">Bikes</option>
				      <option value="5">Furniture</option>
				      <option value="6">Fashion</option>
				      <option value="7">Books</option>
				      <option value="8">Sports</option>
				    </form:select>
				    <p id="error_category"></p>
						</div>
						
				
						<div class="card-footer">
							<button type="submit" class="btn btn--radius-2 btn--blue-2 form-control">Update</button>
							
						</div>
						</div>
						</div>
						</form:form>
</body>
</html>