<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Weather API!</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
crossorigin="anonymous">

</head>
<body>

	<!-- Search weather -->

	<div id = "weather_search" class = "card-body" align = "center">
	
		<h3>Weather API: Get the current weather for your city.</h3><br/>
	
		<div class = "col-4">
			
			<form action = "weather" method = "get">
				<input class = "form-control" name = "city" type = "text"  placeholder = "Your city" required/><br/>
				<input class = "form-control" name = "country" type = "text" value = "" placeholder = "Your country's ISO code (not required)"/><br/>
				<button type = "submit" class = "btn btn-success btn-sm">Find out the weather!</button>
			</form>
			
		</div>
	
	</div>
	
	<!-- ISO codes -->
		
	<div id = "iso_codes" class = "card-body" align = "center">
	
		<h3 style = "text-decoration: underline;">Countries and their ISO codes</h3>
		
		<div class = "col-4">
		
			<input class = "form-control" id = "iso" name = "iso" type = "text" placeholder = "Search your countries ISO code"/>
			<button type = "submit" class = "btn btn-outline-success btn-sm" onclick = "scrollCountry()">Find ISO code</button>
			
		</div><br/>
	
		<table class = "table table-striped table-sm">
			
			<thead style = "background-color: #000000; color: #ffffff">
				<tr>
					<td>
						Country
					</td>
					<td>
						ISO Code
					</td>
				</tr>
			</thead>
			
			<tbody>
				<c:forEach items="${codes}" var="list">
					
					<tr>
						<td>
							${list.key}
						</td>
						<td>
							${list.value}
						</td>
						<td>
							<button id = "iso_code" class = "btn btn-outline-info btn-sm" onclick = "addISOCode('${list.value}')">Choose</button>
						</td>
					</tr>
					
				</c:forEach>
			</tbody>
			
		</table>
		
	</div>
	
	<script src = "js/search-iso-codes.js"></script>

</body>
</html>