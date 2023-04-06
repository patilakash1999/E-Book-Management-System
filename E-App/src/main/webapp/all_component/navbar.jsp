<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Main Page Navbar Bar</title>

<link href='https://fonts.googleapis.com/css?family=Didact Gothic' rel='stylesheet'>
<style>
.navbar .navbar-nav .nav-item{
 font-family: 'Didact Gothic';font-size: 30px;
}

</style>
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
        <a class="navbar-brand" style="color:gold" href="index.jsp" ><i class="fa-solid fa-shop me-2"></i> <strong>eBOOK SHOP</strong></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
   
       <div class="mx-auto my-3 d-lg-none d-sm-block d-xs-block">
          <div class="input-group">
            <span class="border-warning input-group-text bg-warning text-white"><i class="fa-solid fa-magnifying-glass"></i></span>
            <input type="text" class="form-control border-warning" name="ch" style="color:#7a7a7a">
            <button class="btn btn-warning text-white">Search</button>
          </div>
        </div>
         <form action="search.jsp">
        <div class=" collapse navbar-collapse" id="navbarNavDropdown">
           <div class="ms-auto d-none d-lg-block">
            <div class="input-group">
              <span class="border-warning input-group-text bg-warning text-white"><i class="fa-solid fa-magnifying-glass"></i></span>
              <input type="text" class="form-control border-warning" name="ch" style="color:#7a7a7a">
              <button class="btn btn-warning text-white">Search</button>
            </div>
          </div>
          </div>
       </form>   
        
          
          
          <ul class="navbar-nav ms-auto ">
            <li class="nav-item">
              <a class="nav-link mx-2 text-uppercase active" aria-current="page" href="index.jsp"><i class="fa-solid fa-house"></i>  Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link mx-2 text-uppercase" href="all_recent_book.jsp"><i class="fa-solid fa-book-open"></i>   RecentBook</a>
            </li>
            <li class="nav-item">
              <a class="nav-link mx-2 text-uppercase" href="all_new_book.jsp"><i class="fa-solid fa-book-open"></i>  NewBook</a>
            </li>
            <li class="nav-item">
              <a class="nav-link mx-2 text-uppercase" href="all_old_book.jsp"><i class="fa-solid fa-book-open"></i>  OldBook</a>
            </li>
            
           <!--   <li class="nav-item">
              <a class="nav-link mx-2 text-uppercase" href="#About">About</a>
            </li>-->
              <c:if test="${not empty userobj }">
          
          	
         	
            <li class="nav-item ">
              <a class="nav-link mx-2 text-uppercase " href="login.jsp"><i class="fa-solid fa-user fa-1x text-info" aria-hidden="true"></i>   ${userobj.name} </a>
              
            </li>
            <a href="checkout.jsp" class="mt-1 text-warning" id="toast"><strong> <i class="fas fa-cart-plus fa-2x"></i></strong> Cart</a>
          	
          	<li class="nav-item">
              <a class="nav-link mx-2 text-uppercase" href="logout">LogOut <i class="fa-solid fa-right-from-bracket"></i></a>
            </li>
          
          </c:if>
          
          <c:if test="${ empty userobj }">
          
          	<li class="nav-item">
              <a class="nav-link mx-2 text-uppercase" href="register.jsp"><i class="fa-solid fa-user-plus"></i>   Register</a>
            </li>
         
            <li class="nav-item">
              <a class="nav-link mx-2 text-uppercase" href="login.jsp"><i class="fa-solid fa-right-to-bracket"></i> Log In</a>
            </li>
          
          
          </c:if>
            
             <li class="nav-item">
              <a class="nav-link mx-2 text-uppercase" href="setting.jsp"><i class="fa fa-cog fa-2x" aria-hidden="true text-center"></i></a>
            </li>
          </ul>
          
        </div>
      </div>
     
    </nav>

<%--<i class="fa-solid fa-cart-shopping me-1"></i>
<i class="fa-solid fa-circle-user me-1"></i> --%>

</body>
</html>