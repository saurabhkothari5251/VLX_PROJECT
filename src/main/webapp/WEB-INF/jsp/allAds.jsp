<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>VLX</title>


    <!-- Bootstrap -->
    <link type="text/css" rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"> </c:url> " />

    <!-- Slick -->
    <link type="text/css" rel="stylesheet" href="<c:url value="/css/slick.css" > </c:url>" />
    <link type="text/css" rel="stylesheet" href="<c:url value="/css/slick-theme.css" > </c:url>"/>

    <!-- nouislider -->
    <link type="text/css" rel="stylesheet" href="<c:url value="/css/nouislider.min.css" > </c:url>"/>

    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="<c:url value="/css/font-awesome.min.css"> </c:url> "/>

    <!-- Custom stlylesheet -->
    <link type="text/css" rel="stylesheet" href="<c:url value="/css/style.css" > </c:url> "/>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


<script>

  function showAlert() {
    var myText = "User removed successfully!";
    alert (myText);
  }
 </script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <%
        int tot = 0;
    %>

</head>

<body>
<!-- HEADER -->
<div><a href="/"> <img src="/resources/image/images.png" height="50" width="120"
				alt="CoolBrand">
			</a></div>
        <!-- row -->
 <table class="table">
 <caption>Ads Table</caption>
  <thead class="thead-dark">
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Name</th>
      <th scope="col">Description</th>
      <th scope="col">location</th>
       <th scope="col">category</th>
        <th scope="col">image</th>
    </tr>
  </thead>
  <tbody>
   <c:forEach items="${ads}" var="ad" varStatus="loop">
  
    <tr>
      <th scope="row">${ad.id}</th>
      <td>${ad.name}</td>
      <td>${ad.description}</td>
       <td>${ad.location}</td>
       <td>${ad.category}</td>
       <td><img  class="card-img-top" src="${pageContext.request.contextPath}/ad/display/${ad.id}" alt="images" height="200px"  width="10px"/></td>
      <td>
      <a href="/delete/ad/${ad.getId()}" class="deleteData" onclick="showAlert()"><em class="fa fa-trash"></em></a></td>
 
    </tr>

 </c:forEach>
 </tbody>
 </table>
</body>

</html>
