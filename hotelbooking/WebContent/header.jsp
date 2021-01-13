
<html>
<head>
<meta charset="ISO-8859-1">
<title>header</title>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
	<nav class="navbar navbar-expand-lg navbar-light bg-dark navbar-expand-xl">
  	<a class="navbar-brand text-light" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link text-light" href="home.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <c:if test="${role==null}">
      	<li class="nav-item">
	        <a class="nav-link text-light" href="login.jsp">Login</a>
      	</li>
      	<li class="nav-item">
        	<a class="nav-link text-light" href="register.jsp">Register</a>
      	</li>
      </c:if>
      <li class="nav-item">
        <a class="nav-link text-light" href="hotel.jsp">Hotels</a>
      </li>
      <c:if test="${role!=null}">
			<c:if test="${role=='admin'}">
      			<li class="nav-item">
        			<a class="nav-link text-light" href="Addhotel.jsp">Add Hotels</a>
      			</li></c:if>
      			<li class="nav-item">
        			<a class="nav-link text-light" href="login.jsp">Logout</a>
      			</li>
      		</c:if>
      
      
    </ul>
    <form class="form-inline my-2 my-lg-0" action="hotel.jsp">
      <input class="form-control mr-sm-2 " name="hotelname" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0 text-light" type="submit">Search</button>
    </form>
  </div>
</nav>
		
	<br>
	</div>
</body>
</html>