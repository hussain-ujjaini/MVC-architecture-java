<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/bootstrap-theme.min.css" rel="Stylesheet">
<link href="css/bootstrap.min.css" rel="Stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert Data</title>
<script type="text/javascript">
function submitDelete()
{
	tag.submit();
}
</script>
</head>
<body>
<!-- <form action="mvc" method="post" id="tag"> -->
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jstl/sql_rt" %>
<%-- <c:set var="Op" value="Delete"></c:set> --%>
<div class="container">
<div class="row">
<div class="col-md-1">Id</div>
<div class="col-md-2">Firstname</div>
<div class="col-md-2">Surname</div>
<div class="col-md-3">Email</div>
<div class="col-md-2">Mobile</div>
<div class="col-md-2">Delete</div>
</div>
<c:forEach items="${sessionScope.sessionlist}" var="LoopVar">
<div class="row">
<div class="col-md-1">${LoopVar.user_id}</div>
<input type="hidden" name="id" value="${LoopVar.user_id}">
<div class="col-md-2">${LoopVar.firstName}</div>
<div class="col-md-2">${LoopVar.surName}</div>
<div class="col-md-3">${LoopVar.email}</div>
<div class="col-md-2">${LoopVar.mobile}</div>
<%-- <div class="col-md-2"><a href="Update.jsp?Op=Update&id=${LoopVar.user_id}&un=${LoopVar.}&ln=${LoopVar.ln}">Update</a></div> --%>
<div class="col-md-2"><a href="mvc_extra?Op=Delete&id=${LoopVar.user_id}">Delete</a></div>
<%-- <div class="col-md-2"><a onclick="submitDelete()">Delete</a></div> --%>
<input type="hidden" name="Op" value="Delete">
</div>
</c:forEach>	
</div>
<!-- </form> -->
</body>
</html>