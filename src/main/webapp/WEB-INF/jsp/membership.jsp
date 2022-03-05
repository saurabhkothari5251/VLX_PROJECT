<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
  <head>
      <meta charset="utf-8">
      <title>VLX</title>

      <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
      <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
      <link rel="stylesheet" href="/resources/css/style.css">
      <link rel="stylesheet" href="/resources/css/membership.css"> 
  </head>

  <body>
  <div><a href="/"> <img src="/resources/image/images.png" height="50" width="120"
				alt="CoolBrand">
			</a></div>
     <div class="card-heading text-center">
                    <h2 class="title float-center">Select your membership plan</h2>
  </div>
  
    <div class="card-container">
    <div class="card-one card-width">
      <div class="img-one">
        
      </div>

      <div class="content">
        <p>
          Get Basic membership features for 30 days. 
         <h4 style="align:center"> <strong >Rs.100</strong></h4>
        </p>
      
      </div>
    </div>
    <div class="card-two card-width">
      <div class="img-two">
        
      </div>

      <div class="content">
        <p>
            Get Standard membership features for 60 days.
         <h4 style="align:center"> <strong >Rs.175</strong></h4>
        </p>
      </div>
    </div>
    <div class="card-three card-width">
      <div class="img-three">
        
      </div>

      <div class="content">
        <p> Get Gold membership features for 180 days.
         <h4 style="align:center"> <strong >Rs.300</strong></h4></p>
      </div>
    </div>
    <div class="card-four card-width">
      <div class="img-four">
        
      </div>

      <div class="content">
        <p>
           Get Premium membership features for  1 Year.
         <h4 style="align:center"> <strong >Rs.500</strong></h4>
        </p>
      </div>
    </div>
  </div>

    <div class="container">
    
    <div class="contact py-sm-5 py-4">
		<div class="container py-xl-4 py-lg-2">
		<div class="page-wrapper bg-dark p-t-100 p-b-50">
		        <div class="wrapper wrapper--w900">
    
				
			<form:form method="POST" modelAttribute="memberForm" class="form-signin">
			<div class="card-body">
							<div class="contact-grids1 w3agile-6">
			
			 	<spring:bind path="type">
			 	<div class="form-group" >
    			<form:select path="type" name="type"  class="form-control">  
        		<form:option value="Basic" label="Basic"/>  
        		<form:option value="Standard" label="Standard"/>  
        		<form:option value="Gold" label="Gold"/>  
        		<form:option value="Premium" label="Premium"/>  
        		</form:select>  
        		</div>
        		</div>
        		</br>

						<div class="card-footer">
            <button class="btn btn-lg btn-success btn-block" type="submit">Payment</button>
							
						</div>                    
						</spring:bind>
						</div>
        
    		</form:form>  
    
</div>
</div>
</div>
</div>

        
        

    </div>-->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
  </body>
</html>