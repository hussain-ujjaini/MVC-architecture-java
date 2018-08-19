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
	<h1>Insert Details</h1>
	<div class="form-group">
		<div class="form-group" id="div">
	    	<label for="FirstName">First Name</label>
	    	<input type="text" class="form-control" name="FirstName" id="FirstName" placeholder="First Name">
	  	</div>
	  	<div class="form-group">
	    	<label for="SurName">Surname</label>
	    	<input type="text" class="form-control" name="SurName" id="SurName" placeholder="Surname">
	  	</div>
		<div class="form-group">
	    	<label for="Email">Email address</label>
	    	<input type="email" class="form-control" name="Email" id="Email" placeholder="Email">
	  	</div>
	  	<div class="form-group">
	    	<label for="Mobile">Mobile Number</label>
	    	<input type="text" class="form-control" name="Mobile" id="Mobile" placeholder="Mobile Number">
	  	</div>
	  	<div class="form-group">
	  		<input type="hidden" name="Op" value="Insert">
	    	<input type="Submit" class="form-control" name="Submit">
	  	</div>
	</div>
</div>
</form>
</body>
</html>