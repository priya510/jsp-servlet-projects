<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- Directive Tag -->
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>edit</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
		<form action="UpdateServlet" method="post" class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
			<div class="form-group">
				<label>Enter Hotel Id</label>
				<input type="text" name="hotelid" value="${param.hi}" placeholder="Enter Hotel Id" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Enter Hotel Name</label>
				<input type="text" name="hotelname" value="${param.hn}" placeholder="Enter hotel Name" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label>Enter Price</label>
				<input type="text" name="hotelprice" value="${param.hp}" placeholder="Enter Price" class="form-control"/>
			</div>
			
			<div class="form-group">
				<input type="submit" value="Update hotel" class="btn btn-primary btn-block"/>
				<input type="reset" value="Reset" class="btn btn-danger btn-block"/>
			</div>
		</form>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>