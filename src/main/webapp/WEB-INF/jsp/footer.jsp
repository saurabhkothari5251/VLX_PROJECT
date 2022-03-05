<%@ page language="java" 
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
   
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>VLX</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/style.css" > </c:url> "/>
  
</head>
<body>
<footer id="footer">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <!-- footer widget -->
            <div class="col-md-3 col-sm-6 col-xs-6">
                <div class="footer">
                    <!-- footer logo -->
 <div class="footer-logo">
                        <a class="logo" href="#">
                        
                            <img height=60 width=100 src="/resources/image/images.png" alt="">
                        </a>
                    </div>
                    
                     <ul class="footer-social">
                        <li><a href="https://www.facebook.com/"><em class="fa fa-facebook"></em></a></li>
                        <li><a href="https://m.twitter.com/login"><em class="fa fa-twitter"></em></a></li>
                        <li><a href="https://www.instagram.com/accounts/login"><em class="fa fa-instagram"></em></a></li>
                        <li><a href="#"><em class="fa fa-google-plus"></em></a></li>
                        <li><a href="#"><em class="fa fa-pinterest"></em></a></li>
                    </ul>
</div>
</div>

				<div class="col-md-3 col-sm-6 col-xs-6">
					<div class="footer">
						<h3 class="footer-header"><spring:message code="header.MyAccount" /></h3>
						<ul class="list-links">
							<li><a href="#"><spring:message code="header.MyAccount" /></a></li>
							<li><a href="#"><spring:message code="footer.Compare" /></a></li>
							<li><a href="#"><spring:message code="footer.Checkout" /></a></li>
							<li><a href="/login"><spring:message code="header.Login" /></a></li>
						</ul>
					</div>
				</div>

				<!-- /footer widget -->

            <div class="clearfix visible-sm visible-xs"></div>

            <!-- footer widget -->
            <div class="col-md-3 col-sm-6 col-xs-6">
                <div class="footer">
                    <h3 class="footer-header"><spring:message code="footer.CustomerService" /></h3>
                    <ul class="list-links">
                        <li><a href="#"><spring:message code="footer.aboutus" /></a></li>
                        <li><a href="#"><spring:message code="footer.faq" /></a></li>
                    </ul>
                </div>
            </div>
            
             <!-- footer subscribe -->
            <div class="col-md-3 col-sm-6 col-xs-6">
                <div class="footer">
                    <h3 class="footer-header"><spring:message code="footer.StayConnected" /></h3>
                    <form>
                       <div class="form-group">
                            <input class="input" placeholder="Enter Email Address">
                        </div>
                        <button class="btn btn-primary"><spring:message code="footer.JoinNewsletter" /></button>
                    </form>
                </div>
            </div>
</div>
</div>
</footer>
</body>
<script src="<c:url value="/resources/js/jquery.min.js" > </c:url>"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"></c:url>"></script>
<script src="<c:url value="/resources/js/slick.min.js"></c:url> " ></script>
<script src="<c:url value="/resources/js/nouislider.min.js"> </c:url> " ></script>
<script src="<c:url value="/resources/js/jquery.zoom.min.js"></c:url> "></script>
<script src="<c:url value="/resources/js/main.js"></c:url> "></script>

</html>