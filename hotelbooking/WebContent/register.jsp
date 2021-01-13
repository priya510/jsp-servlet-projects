<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>register</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<center>
<form action="RegisterServlet" method="post" class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
  <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Enter Your Name</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputEmail3" name="username" placeholder="Enter Your Name">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Enter Your Email</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputEmail3" name="email" placeholder="Enter Your Email">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Enter Your Password</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputEmail3" name="password" placeholder="Enter Your Password">
    </div>
  </div>
  
  <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Enter Your Mobile</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputEmail3" name="mobile" placeholder="Enter Your Mobile">
    </div>
  </div>
   <div class="form-group row">
    <div class="col-sm-2"></div>
    <div class="col-sm-10">
    
      <button type="Submit" value="Login" class="btn btn-primary btn-block">Sign in</button>
  
      <button type="Reset"  value="reset" class="btn btn-danger btn-block">Reset</button>
    </div>
    </center>
  </div>
  
   </form>
   <jsp:include page="footer.jsp"></jsp:include>
 
</body>
</html>


		