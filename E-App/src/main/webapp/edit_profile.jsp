<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>edit profile</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body style="background-color:#e6eefa">
<%@include file="all_component/navbar.jsp" %>

	<div class="container mt-5">

	<div class="row">
		<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
					<h4 class="text-center text-info">Edit Profile</h4>
					
					<c:if test="${not empty failedMsg }">
      		<h5 class="text-center text-danger">${failMsg}</h5>
      		<c:remove var="failedMsg" scope="session"/>
      		</c:if>
      		
     	 <c:if test="${not empty succMsg }">
						<p class="alert  alert-success text-center">${succMsg }</p>
						<c:remove var="succMsg" scope="session"/>
						</c:if>
					<form action="update_profile" method="post">

					<input type="hidden" value="${userobj.id}">	

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="text" id="form3Example1c" class="form-control" required="required" name="fname" value="${userobj.name }">
                      <label class="form-label" for="form3Example1c">Your Name</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="email" id="form3Example3c" class="form-control" required="required" name="email" value="${userobj.email }">
                      <label class="form-label" for="form3Example3c">Your Email</label>
                    </div>
                  </div>
                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-phone fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="number" id="form3Example3c" class="form-control" required="required" name="phno" value="${userobj.phno}">
                      <label class="form-label" for="form3Example3c">Mobile No</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="password" id="form3Example4c" class="form-control" required="required" name="password">
                      <label class="form-label" for="form3Example4c">Password</label>
                    </div>
                  </div>

                 <!--   <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="password" id="form3Example4cd" class="form-control" />
                      <label class="form-label" for="form3Example4cd">Repeat your password</label>
                    </div>
                  </div>-->

                  
				
                 <!--  <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                    <button type="button" class="btn btn-primary btn-lg">Register</button>
                  </div> -->
                  
                  <div>
                  	<input type="submit" value="update" class="btn btn-primary" >
                  
                  </div>
	           
                </form>
					
					
					</div>
					</div>
					</div>
					</div>
					</div>
					
</body>
</html>