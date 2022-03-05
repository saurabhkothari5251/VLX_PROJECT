<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>VLX</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  
    <link rel="stylesheet" href="/resources/css/main.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<br><br>

<div><a href="/"> <img src="/resources/image/images.png" height="50" width="120"
				alt="CoolBrand">
			</a></div>

<div class="contact py-sm-5 py-4">
		<div class="container py-xl-4 py-lg-2">
		<div class="page-wrapper bg-dark p-t-100 p-b-50">
		        <div class="wrapper wrapper--w900">
		                    <div class="card card-6">
		                    <div class="card-heading">
                    <h2 class="title ">Post Your Ad</h2>
                </div>
		        
		
		<!-- form -->
		<form id="form">
				<div class="card-body">
		
				<div class="contact-grids1 w3agile-6">
						<div class="form-row">
							<label class="col-form-label">Name</label>
							<input type="text" class="form-control" placeholder="ad Name" id="name" name="name" required="required">
							<p id="error_name"></p>
						</div>
						<div class="form-row">
							<label class="col-form-label">Description</label>
							<textarea class="form-control" placeholder="ad Description" id="description" rows="3" cols="45" name="description" required="required"></textarea>
							<p id="error_description"></p>
						</div>
						<div class="form-row">
							<label class="col-form-label">Image</label>
							<input type="file" class="form-control" placeholder="" name="image" id="image" required="required">
							<p id="error_file"></p>
						</div>
						<div class="form-row">
							<label class="col-form-label">Price</label>
							<input type="text" class="form-control" placeholder="Price" name="price" id="price" required="required">
							<p id="error_price"></p>
						</div>
						
						
						<div class="form-row">
							<label class="col-form-label">Location</label>
					
					 <select class="form-control" placeholder="ad location" id="location" rows="3" cols="45" name="location" required="required">
					  <option>Pune</option>
				      <option>Mumbai</option>
				      <option>Hyderabad</option>
				      <option>Banglore</option>
				      <option>Delhi</option>
				    </select>
				    <p id="error_location"></p>
						</div>
						
						<div class="form-row">
							<label class="col-form-label">Category</label>
					
					 <select class="form-control" placeholder="ad category" id="category" rows="3" cols="45" name="category" required="required">
					  <option value="1">Electronics</option>
				      <option value="2">Mobiles</option>
				      <option value="3">Cars</option>
				      <option value="4">Bikes</option>
				      <option value="5">Furniture</option>
				      <option value="6">Fashion</option>
				      <option value="7">Books</option>
				      <option value="8">Sports</option>
				    </select>
				    <p id="error_category"></p>
						</div>
						
					
						<div class="card-footer">
							<input type="button" id="submit" class="btn btn--radius-2 btn--blue-2 form-control" value="Submit">
							
						</div>
						
						<div class="card-footer" >
						<a class= "btn btn--radius-2 btn--blue-2 form-control" href="${pageContext.request.contextPath}/ad/show">Show All</a>
						</div>
				</div>
				<br>
				<div id="success" class="text-center" style="color:green;"></div>
				<div id="error" class="text-center" style="color:red;"></div>
				</div>
			</form>
		</div>
		</div>
		</div>
	</div>
	</div>
	
<p class="text-center">
	<script src="${pageContext.request.contextPath}/resources/js/ad.js"></script>
</body>
</html>