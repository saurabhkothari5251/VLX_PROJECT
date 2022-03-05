<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="ISO-8859-1">
<title>VLX</title>
</head>
<body>
	<hr />
<h1>Ad Details</h1>
	<form:form action="saveProcess" modelAttribute="ad" method="POST">
		<table>
			<caption> Fill the details</caption>
			
			<tr>
				<th scope="col"><strong>Ad Name:</strong></th>
				<td><form:input path="name" /></td>
			</tr>
			<tr>
				<td><strong>Description:</strong></td>
				<td><form:input path="description" /></td>
			</tr>
			<tr>
				<td><strong>Price::</strong></td>
				<td><form:input path="price" /></td>
			</tr>
			
			<tr>
				<td><strong>location:</strong></td>
				<td><form:select path="location">
						<form:option value="0">--Select--</form:option>
						<form:option value="Pune">Pune</form:option>
						<form:option value="Mumbai">Mumbai</form:option>
						<form:option value="Nagppur">Nagppur</form:option>
						<form:option value="Nashik">Nashik</form:option>
						

					</form:select></td>
			</tr>
			<tr>
				<td><strong>category_id:</strong></td>
				<td><form:textarea path="category_id" /></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Save" /> </td>
			</tr>
		</table>
	</form:form>

	<hr />

	
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	
</body>
</html>