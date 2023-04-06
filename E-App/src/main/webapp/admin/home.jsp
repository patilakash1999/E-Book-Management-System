<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
<%@include file="allCss.jsp" %>

<style type="text/css">
a{
	text-decoration:none;
	color:black;

}
a:hover{
text-decoration:none;
color:black;
}


</style>
</head>
<body style="background-color:#f0f1f1;">
<%@include file="navbar.jsp" %>

<c:if test="${empty userobj}">

	<c:redirect url="../login.jsp" />

</c:if>


<div class="container" style="padding-top:100px">
	<div class="row p-5">
		<div class="col-md-3">
			<a href="add_books.jsp">
			<div class="card">
				<div class="card-body text-center">
					<i class="fas fa-plus-square fa-3x text-primary"></i><br>
					<h4>Add Books</h4>
					    -----------
				</div>
		
			</div>
			</a>
		</div>
		
			<div class="col-md-3">
			<a href="all_books.jsp">
			<div class="card">
				<div class="card-body text-center">
					<i class="fas fa-book-open fa-3x text-danger"></i><br>
					<h4>All Books</h4>
					    -----------
				</div>
		
			</div>
			</a>
		
		</div>
		
		
			<div class="col-md-3">
			<a href="orders.jsp">
			<div class="card">
				<div class="card-body text-center">
					<i class="fas fa-box-open fa-3x text-warning"></i><br>
					<h4>Orders</h4>
					    -----------
				</div>
		
			</div>
			</a>
		
		</div>
		
		<!--  	<div class="col-md-3">
			<a href="../login.jsp">
			<div class="card">
				<div class="card-body text-center">
					<i class="fas fa-sign-out-alt fa-3x"></i><br>
					<h4>LogOut</h4>
					    -----------
				</div>
		
			</div>
			</a>
		</div>-->
		
<div class="col-md-3 row text-center">	
<div class="card">	
<div class="card-body text-center">		<!-- Button trigger modal -->
<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">
  <i class="fas fa-sign-out-alt fa-3x"></i>Log Out
</button>
</div>
</div>
</div>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="text-center">
        <h4>Do You Want Logout</h4>
         <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
         <a href="../logout" type="button" class="btn btn-primary text-white">Log Out</a>
        
        </div>
      </div>
      <div class="modal-footer">
       
      </div>
    </div>
  </div>
</div>
	
	</div>

				


</div>
<div style="margin-top:280px">
<%@include file="footer.jsp" %></div>
</body>
</html>