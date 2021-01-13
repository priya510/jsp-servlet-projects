<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Addhotel</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
		<form action="AddhotelServlet" method="post" class="col-lg-6 col-md-6 col-sm-12 col-xs-12" enctype="multipart/form-data">
			<div class="form-group">
				<label>Enter hotel Name</label>
				<input type="text" name="hotelname" placeholder="Enter Hotel Name" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label>Enter Hotel Price</label>
				<input type="text" name="hotelprice" placeholder="Enter Hotel Price" class="form-control"/>
			</div>
			
			<div class="form-group">
			<label>Select File</label>
			<input type="file" name="image" accept="image/*" placeholder="Select Image" class="form-control"/>
			</div> 
			<div class="form-group">
				<input type="submit" value="Add hotel" class="btn btn-primary btn-block"/>
				<input type="reset" value="Reset" class="btn btn-danger btn-block"/>
			</div>
		</form>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
 
</body>
</html>