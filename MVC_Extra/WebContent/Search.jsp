<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href=css/bootstrap.min.css rel="stylesheet">
<link href=css/bootstrap-theme.min.css rel="stylesheet">
<title>Register Yourself</title>
<style>
</style>
</head>
<body>
<form action="mvc_extra" method="post">
<div class="container">
	<h1>Search by Firstname</h1>
	<div class="form-group">
		<div class="form-group">
	    	<label for="FirstName">First Name</label>
	    	<input type="text" class="form-control" name="FirstName" id="FirstName" placeholder="First Name">
	    	<div class="form-group">
	  		<input type="hidden" name="Op" value="Search">
	    	<input type="Submit" class="form-control" name="Submit">
	  		</div>
	  	</div>
	</div>
</div>
</form>
</body>
</html>