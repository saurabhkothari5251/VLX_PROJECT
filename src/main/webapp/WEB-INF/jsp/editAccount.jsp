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
  </head>

  <body>
<div><a href="/"> <img src="/resources/image/images.png" height="50" width="120"
				alt="CoolBrand">
			</a></div>
    <div class="container">

        <form:form method="POST" action="${contextPath}/edit" modelAttribute="editForm" class="form-signin">
            <h2 class="form-signin-heading">Edit your details</h2>
            <spring:bind path="name">
                <label>Name:</label>
                    <form:input type="text" path="name" class="form-control" placeholder="${sessionScope.name}"
                                autofocus="true"></form:input>
                               
               
            </spring:bind>
             <spring:bind path="emailId">
                 <label>Email:</label>
                    <form:input type="text" path="emailId" class="form-control" placeholder="${sessionScope.email}"
                                autofocus="true"></form:input>
                               
               
            </spring:bind>
             <spring:bind path="mobileNumber">
                 <label>Phone Number:</label>
                    <form:input type="text" path="mobileNumber" class="form-control" placeholder="${sessionScope.contact}"
                                autofocus="true"></form:input>
                               
            </spring:bind>
             
          

            <button class="btn btn-lg btn-success btn-block" type="submit">Submit</button>
        </form:form>

    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
  </body>
</html>