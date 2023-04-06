<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>user address</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body style="background-color:#e6eefa">
<%@include file="all_component/navbar.jsp" %>

<div class="container mt-5">

	<div class="row">
		<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
					<h3 class="text-center text-info">Add Address</h3>
					
					<form action="">
					
					<div class="form-row">
                          <div class="row-md-6">
                             <label for="inputEmail4" class="form-label">Address</label>
                                      <input type="number" class="form-control" id="inputEmail4">
                              </div>
                           <div class="row-md-6">
                                  <label for="inputPassword4" class="form-label">Landmark</label>
                                   <input type="text" class="form-control" id="inputPassword4">
                           </div>
                           
                           <div class="row-md-4">
                                      <label for="inputPassword4" class="form-label">City</label>
                                      <input type="text" class="form-control" id="inputPassword4">
                              </div>
                              <div class="row-md-4">
                                  <label for="inputEmail4" class="form-label">state</label>
                                       <input type="text" class="form-control" id="inputEmail4">
                              </div>
                               <div class="row-md-4">
                                      <label for="inputPassword4" class="form-label">Pin Code</label>
                                               <input type="text" class="form-control" id="inputPassword4">
                                 </div>
                           </div>
                           
                           
                           <button class="btn btn-warning g-3 text-center mt-3 ps-3 ms-auto">Add Address</button>
                      
					
					
					
					</form>
					
					</div>
					</div>
					</div>
					</div>
					</div>




</body>
</html>