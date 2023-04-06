<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admin</title>
</head>
<body>

<%--<div class="superNav border-bottom py-2 bg-light">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 centerOnMobile">
            <select  class="me-3 border-0 bg-light">
              <option value="en-us">EN-US</option>
            </select>
            <span class="d-none d-lg-inline-block d-md-inline-block d-sm-inline-block d-xs-none me-3"><strong>info@eBook.com</strong></span>
            <span class="me-3"><i class="fa-solid fa-phone me-1 text-warning"></i> <strong>100-800-123-1234</strong></span>
          </div>--%>
          
        
 
    
    <nav class="navbar navbar-expand-lg bg-dark sticky-top navbar-light p-3 shadow-sm">
      <div class="container">
        <a class="navbar-brand" style="color:gold" href="#" ><i class="fa-solid fa-shop me-2"></i> <strong>eBOOK SHOP</strong></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
    
       <div class="mx-auto my-3 d-lg-none d-sm-block d-xs-block">
          <div class="input-group">
            <span class="border-warning input-group-text bg-warning text-white"><i class="fa-solid fa-magnifying-glass"></i></span>
            <input type="text" class="form-control border-warning" style="color:#7a7a7a">
            <button class="btn btn-warning text-white">Search</button>
          </div>
        </div>
        <div class=" collapse navbar-collapse" id="navbarNavDropdown">
          <div class="ms-auto d-none d-lg-block">
            <div class="input-group" style="padding-left:90px">
              <span class="border-warning input-group-text bg-warning text-white"><i class="fa-solid fa-magnifying-glass"></i></span>
              <input type="text" class="form-control border-warning" style="color:#7a7a7a">
              <button class="btn btn-warning text-white">Search</button>
            </div>
          </div>
          <ul class="navbar-nav ms-auto ">
          <c:if test="${empty userobj }">
            <li class="nav-item">
              <a class="nav-link mx-2 text-uppercase active" aria-current="page" href="../register.jsp"><i class="fa-solid fa-user-plus"></i>    Register </a>
            </li>
            </c:if>
          </ul>
          <ul class="navbar-nav ms-auto ">
          <c:if  test="${not empty userobj }">
          
           <li class="nav-item">
              <a class="nav-link mx-2 text-uppercase active" aria-current="page" href="../login.jsp"><i class="fa-solid fa-user" aria-hidden="true"></i>  ${userobj.name}</a>
            </li>
            
           <!--   <li class="nav-item">
              <a class="nav-link mx-2 text-uppercase active" aria-current="page" href="../login.jsp"><i class="fa fa-sign-in-alt" aria-hidden="true" ></i>   LogOut</a>
            </li>-->
            
            
            
          </c:if>
          <!--    <li class="nav-item">
              <a class="nav-link mx-2 text-uppercase active" aria-current="page" href="login.jsp"><i class="fa fa-sign-in " aria-hidden="true"></i>     Login </a>
            </li>  -->
            
          </ul>
          
          
          <ul class="navbar-nav ms-auto ">
            <li class="nav-item">
              <a class="nav-link mx-2 text-uppercase active" aria-current="page" href="home.jsp"><i class="fa fa-home fa-2x" aria-hidden="true"></i>  Home</a>
            </li>
            
          </ul>
          
          
        </div>
      </div>
      





     	
     
    </nav>

<%--<i class="fa-solid fa-cart-shopping me-1"></i>
<i class="fa-solid fa-circle-user me-1"></i> --%>

</body>
</html>