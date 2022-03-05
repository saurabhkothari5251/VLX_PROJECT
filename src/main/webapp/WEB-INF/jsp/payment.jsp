<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>VLX</title>
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700"
	rel="stylesheet">
<style>
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <style>
      html, body {
      display: flex;
      justify-content: center;
      font-family: Roboto, Arial, sans-serif;
      font-size: 15px;
      }
      form {
      border: 5px solid #f1f1f1;
      }
      input[type=text], input[type=password] {
      width: 100%;
      padding: 16px 8px;
      margin: 8px 0;
      display: inline-block;
      border: 1px solid #ccc;
      box-sizing: border-box;
      }
      button {
      background-color: #8ebf42;
      color: white;
      padding: 14px 0;
      margin: 10px 0;
      border: none;
      cursor: grabbing;
      width: 100%;
      }
      h1 {
      text-align:center;
      fone-size:18;
      }
      button:hover {
      opacity: 0.8;
      }
      .formcontainer {
      text-align: left;
      margin: 24px 50px 12px;
      }
      .container {
      padding: 16px 0;
      text-align:left;
      }
      span.psw {
      float: right;
      padding-top: 0;
      padding-right: 15px;
      }
      .form
      {
      margin-left:450px;
      margin-right:450px;
   }
      /* Change styles for span on extra small screens */
      @media screen and (max-width: 300px) {
      span.psw {
      display: block;
      float: none;
      }
</style>
</head>
<body>
 <div class="main">
	  <form class="form" method="post"  action="/pay">
		<div class="formcontainer">
		<h4>Payment</h4>
			<hr />
			<div class="container">
				<label for="price">Total</label> <input type="text" id="price"
					name="price" value="${price}"> <label for="currency">Currency</label>
				<input type="text" id="currency" name="currency"
					placeholder="Enter Currency">
                     <label for="method">Payment Method</label>
                    <input type="text" id="method" name="method" placeholder="Payment Method">
                  <label for="intent">Intent</label>
                    <input type="text" id="intent" name="intent" value="sale"> 
                     <label for="description">Payment Description</label>
                    <input type="text" id="description" name="description" placeholder="Payment Description">  
                 
			</div>
			<button type="submit">Payment</button>
			<div class="container" style="background-color: #eee">
				
				
			</div>
		
	</form> 
	</div>
	


</body>
</html>
