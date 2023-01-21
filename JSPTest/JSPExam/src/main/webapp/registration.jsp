
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	 <!-- Latest compiled and minified CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
	
	<!-- Latest compiled JavaScript -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script> 
<title>Register </title>
</head>
<body>

      <h1>Welcome User</h1>
	
	<form class="container mt-5 pt-2" action="result.jsp" method="POST">
	<table>
		<tr> 
			<td><b> Full Name : </b></td> 
			<td><input name="name" type="text" placeholder="Full name"/></td> 
			</tr>
		<tr> 
			<td><b>Email Id : </b></td> 
			<td><input name="emailId" type="email" placeholder="Email Id"/></td> 
		</tr> 
		<tr> 
			<td><b>Mobile No : </b> </td> 
			<td><input name="mobile" type="text" placeholder="Mobile no"/></td> 
		</tr>
		<tr>
			<td><b>Address : </b></td> 
			<td><textarea  name="address" placeholder="Address"></textarea></td> 
		</tr> 
		<tr>
			<td><b>Password : </b></td> 
			<td><input name="password" type="password" placeholder="Password"/></td> 
		</tr> 
		<tr> 
			<td><b>Confirm Password : </b></td> 
			<td><input name="cPassword" type="password" placeholder="Confirm Password"/></td> 
		</tr> 
		<tr><td><button class="btn btn-success "  type="submit" name="submit" value="submit">Register Me</button></td></tr>
	</table>
	</form>
	
</body>
</html>