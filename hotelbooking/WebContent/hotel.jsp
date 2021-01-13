
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>hotel</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<sql:setDataSource driver="com.mysql.jdbc.Driver"
					   url="jdbc:mysql://localhost:3306/hotel"
					   user="root"
					   password="root"
					   var="con"/> 
					    
	<c:if test="${param.hotelname!=null}">
		<sql:query var="rs" dataSource="${con}">
			select * from books where hotelname like '%' ? '%'
			<sql:param>${param.hotelname}</sql:param>
		</sql:query>
	</c:if>
	
	<c:if test="${param.hotelname==null}">
		<sql:query var="rs" dataSource="${con}">
			select * from hotel
		</sql:query>
	</c:if>
	
	<div class="container">
			<div class="row">
			<c:forEach items="${rs.rows}" var="row">
				<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 text-center" style="border:1px solid black;">
					<img src="ImageServlet?hotelid=${row.hotelid}" height="300px" class="col-lg-12"/>
					
					<h3>${row.hotelname}</h3>
					
					<p>${row.hotelprice}</p>
					<p>
						<c:if test="${row.hotelprice>0}">
							<a href="buy.jsp"  class="btn btn-primary btn-block">Buy</a>
						</c:if>
					
						
					</p>
					
				<p>
						<c:if test="${role=='admin'}">
							<a class="btn btn-primary btn-block" href="edit.jsp?hi=${row.hotelid}&hn=${row.hotelname}&hp=${row.hotelprice}">Edit</a> <a class="btn btn-danger btn-block" href="DeleteServlet?hotelid=${row.hotelid}">Delete</a>
						</c:if>
				</p>
				</div>
		</c:forEach>
		</div>
	</div><br>
	<jsp:include page="footer.jsp"></jsp:include>
 
</body>
</html>