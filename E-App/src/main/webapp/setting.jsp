<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_component/allCss.jsp" %>

<style type="text/css">
a{
	text-decoration:none;
	color:black;

}



</style>
</head>
<body style="background-color:#e6eefa">

<c:if test="${empty userobj }">
<c:redirect url="login.jsp"></c:redirect>


</c:if>
<%@include file="all_component/navbar.jsp" %>


<div class="container">


	<h2 class="text-center mt-4" >HELLO,${userobj.name}</h2>
	
<div class="row p-5">
	<div class="col-md-4">
	
	<a href="sell_book.jsp">
		<div class="card">
		<div class="card-body text-center">
		
			<div class="text-primary">
			<i class="fas fa-book-open fa-3x"></i>
			</div>
		       
					<h3>Old Book</h3>
		</div>
		
		</div>
	
	</a>
	
	
	
	</div>
	<div class="col-md-4">
	
	<a href="old_book.jsp">
		<div class="card">
		<div class="card-body text-center">
		
			<div class="text-primary">
			<i class="fas fa-book-open fa-3x"></i>
			</div>
		       
					<h4>Update Old Books</h4>
		</div>
		
		</div>
	
	</a>
	
	
	
	</div>
	<div class="col-md-4 mt-1">
	<a href="edit_profile.jsp">
	<div class="card">
		<div class="card-body text-center">
		
			<div class="text-info">
			<i class="fas fa-edit fa-3x"></i>
			</div>
		       
					<h4>Login & Security(Edit Profile)</h4>
		</div>
		
		</div>
		</a>
	</div>
	
	
	
	<div class="col-md-6 mt-5">
	<a href="order.jsp">
	<div class="card">
		<div class="card-body text-center">
		
			<div class="text-warning">
					<i class="fa-solid fa-box-open fa-3x"></i>
			</div>
		       
					<h3>My Order</h3>
					<p class="text-danger">Track Your Order</p>
		</div>
		
		</div>
		</a>
	</div>
	
	<div class="col-md-6 mt-5">
	<a href="helpline.jsp">
	<div class="card">
		<div class="card-body text-center">
		
			<div class="text-dark">
					<i class="fa-solid fa-user-circle fa-3x"></i>
			</div>
		       
					<h3 class="text-primary">Help Center</h3>
					<p class="text-danger">24/7 Service</p>
		</div>
		
		</div>
		</a>
	</div>
</div>
</div>
<div style="margin-top:120px;">
<%@include file="all_component/footer.jsp" %>
</div>
</body>
</html>