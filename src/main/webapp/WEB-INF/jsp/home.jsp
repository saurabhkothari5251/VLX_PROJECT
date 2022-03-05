<%@ page import="org.springframework.security.config.annotation.web.builders.HttpSecurity" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <title>VLX</title>


    <!-- Bootstrap -->
    <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"> </c:url> " />

    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="<c:url value="/resources/css/font-awesome.min.css"> </c:url> "/>

    <!-- Custom stlylesheet -->
    <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/style.css" > </c:url> "/>
    <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/main.css" > </c:url> "/>
    

</head>

<body>
<!-- HEADER -->
<%@include file="header.jsp"%>
<!-- /NAVIGATION -->
  <div class="container">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="/resources/image/vlx4.jpg" alt="image" style="width:100%;">
        <div class="carousel-caption">
          <h6><spring:message code="home.carouseltitle" /></h6>
        </div>
      </div>

      <div class="item">
        <img src="/resources/image/vlx10.png" alt="image" style="width:100%;">
        <div class="carousel-caption">
         
        </div>
      </div>
    
      <div class="item">
        <img src="/resources/image/banner13.jpg" alt="image" style="width:100%;">
        <div class="carousel-caption">
         
        </div>
      </div>
  
    </div>
    

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only"><spring:message code="home.Previous" /></span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only"><spring:message code="home.Next" /></span>
    </a>
  </div>
  <br>
  <br>
      <!--carousel section ends-->
<!-- section -->
      <div class="row">
        <div class="col-lg-4 col-md-6 mb-4">
          <div class="card h-100">
            <a href ="/products/1" ><img class="card-img-top img-responsive"  src="/resources/image/electronics.jpg" alt="image"></a>
            <div class="card-body">
              <h2 class="card-title text-center">              
                <a  href ="/products/1"><spring:message code="home.electronics" /></a>
              </h2>
              
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 mb-4">
          <div class="card h-100">
            <a href ="/products/2" ><img class="card-img-top img-responsive"  src="/resources/image/mobile.jpg" alt="image"></a>
            <div class="card-body">
              <h2 class="card-title text-center">              
                <a href ="/products/2"><spring:message code="home.mobile" /></a>
              </h2>
              
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 mb-4" >
          <div class="card h-100">
            <a href ="/products/3" ><img class="card-img-top img-responsive"  src="/resources/image/car1.jpg" alt="image"></a>
            <div class="card-body">
              <h2 class="card-title text-center">              
                <a href ="/products/3"><spring:message code="home.cars" /></a>
              </h2>
              
            </div>
          </div>
        </div>
  
      </div>

  <div class="row">
        <div class="col-lg-4 col-md-6 mb-4">
          <div class="card h-100">
            <a href ="/products/4" ><img class="card-img-top img-responsive"  src="/resources/image/bike.jpg" alt="image"></a>
            <div class="card-body">
              <h2 class="card-title text-center">              
                <a  href ="/products/4"><spring:message code="home.bike" /></a>
              </h2>
              
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 mb-4">
          <div class="card h-100">
            <a href ="/products/5" ><img class="card-img-top img-responsive"  src="/resources/image/furniture1.jpg" alt="image"></a>
            <div class="card-body">
              <h2 class="card-title text-center">              
                <a href ="/products/5"><spring:message code="home.furniture" /></a>
              </h2>
              
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 mb-4" >
          <div class="card h-100">
            <a href ="/products/6" ><img class="card-img-top img-responsive"  src="/resources/image/fashion.jpg" alt="image"></a>
            <div class="card-body">
              <h2 class="card-title text-center">              
                <a href ="/products/6"><spring:message code="home.fashion" /></a>
              </h2>
              
            </div>
          </div>
        </div>
  
      </div>
  
    </div>

        <!-- section -->
        



        

<!-- section -->
<div class="section section-grey">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <!-- banner -->
            <div class="col-md-8">
                <div class="banner banner-1">
                    <img src="<c:url value="/resources/image/banner13.jpg"/>" alt="">
                    <div class="banner-caption text-center">
                        <h1 class="primary-color"><spring:message code="home.hotdeal" /><br>
                        <span class="white-color font-weak"><spring:message code="home.50off" /></span></h1>
                        <button class="primary-btn"><spring:message code="home.shopnow" /></button>
                    </div>
                </div>
            </div>
            <!-- /banner -->

            <!-- banner -->
            <div class="col-md-4 col-sm-6">
                <a class="banner banner-1" href="#">
                    <img src="<c:url value="/resources/image/banner11.jpg"/>" alt="">
                    <div class="banner-caption text-center">
                        <h2 class="white-color"><spring:message code="home.newcollection" /></h2>
                    </div>
                </a>
            </div>
            <!-- /banner -->

            <!-- banner -->
            <div class="col-md-4 col-sm-6">
                <a class="banner banner-1" href="#">
                    <img src="<c:url value="/resources/image/banner12.jpg"/>" alt="">
                    <div class="banner-caption text-center">
                        <h2 class="white-color"><spring:message code="home.newcollection" /></h2>
                    </div>
                </a>
            </div>
            <!-- /banner -->
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /section -->
<!-- footer -->
<%@include file="footer.jsp"%>
<!-- section -->


</body>

</html>
