<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>VLX</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="/resources/css/style.css">
    <link rel="stylesheet" href="/resources/css/main.css">
    <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
</head>
<body>
<div><a href="/"> <img src="/resources/image/images.png" height="50" width="120"
				alt="CoolBrand">
			</a></div>
<div class="card">
	          
		        <div class="card-heading text-center">
                    <h2>Welcome ${sessionScope.name}!!!</h2>
                </div>
                </br>
                <div class="card-body text-center">
                
                <h3 class="body">My Details</h3>
                </br>
                <h5><p>Name: ${sessionScope.name} </p></h5>
                <h5><p>Email: ${sessionScope.email}</p></h5>
                <h5><p>Mobile Number: ${sessionScope.contact}</p></h5>
                
               </br>
                <h3 class="body">Edit Your Details</h3>
            		  <a href="/update/${sessionScope.userId}" class="convert">Edit</a>
            		  
            		  </br>
				</div>
				</br>
	</div>



</body>
</html>