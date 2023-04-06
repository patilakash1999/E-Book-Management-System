<%@page import="com.entity.Cart"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.CartDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart</title>
<%@include file="all_component/allCss.jsp" %>

</head>
<body style="background-color:#e6eefa">
<%@include file="all_component/navbar.jsp" %>

<c:if test="${empty userobj}">

<c:redirect url="login.jsp"></c:redirect>

</c:if>

<c:if test="${not empty succMsg }">

<div class="alert alert-success text-center" role="alert">
  ${succMsg}
</div>
<c:remove var="succMsg" scope="session"/>

</c:if>

<c:if test="${not empty failedMsg }">

<div class="alert alert-danger text-center" role="alert">
  ${failedMsg}
</div>
<c:remove var="failedMsg" scope="session"/>

</c:if>


<div class="container mt-4 ">
	<div class=row p-2>
		<div class="col-md-6">
		
				
				<div class="card bg-white">
				<div class="card-body">
				<h3 class="text-center text-danger">YOUR SELECTED ITEM</h3>
				
				
<table class="table table-hover table-dark text-white">
  <thead>
    <tr>
      <th scope="col">Book Name</th>
      <th scope="col">Author</th>
      <th scope="col">Prize</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  
  <%
  	User u=(User)session.getAttribute("userobj");
  
  	CartDAOImpl dao = new CartDAOImpl(DBConnect.getConn());
  
  	List<Cart> cart = dao.getBookByUser(u.getId());
  	Double totalPrice=0.00;
  	for(Cart c:cart)
  	{
  		totalPrice=c.getTotalPrice();
  	
  	%>
  	
  	 <tr>
      <th scope="row"><%=c.getBookName() %></th>
      <td><%=c.getAuthor() %></td>
      <td><%=c.getPrice() %></td>
      <td>
      <a href="remove_book?bid=<%=c.getBid()%>&&uid=<%=c.getUserId()%>&&cid=<%=c.getCid() %>" class="btn btn-sm btn-danger">Remove</a>
      
      </td>
    </tr>
  	<% }
  
  %>
  <tr>
  
  <td>Total Price </td>
  
  <td></td>
  <td></td>
  <td><%=totalPrice %></td>
  
  </tr>
  
  
    
   
  </tbody>
</table>
				
				</div>
				
				
				</div>
		
		</div>
		
		
		
		<div class="col-md-6 mt-5">
		<div class="card bg-grey text-dark">
				<div class="card-body">
				<h3 class="text-center text-dark">Your Details For Order </h3>
				<form action="order" method="post">
					<input type="hidden" value="${userobj.id}" name="id">
						<div class="row">
						<div class="col-md-6">
                            <label for="inputEmail4" class="form-label">Name</label>
                                <input type="text"  name="username" class="form-control" id="inputEmail4" value="${userobj.name }" required>
                         </div>
                         <div class="col-md-6">
                               <label for="inputPassword4" class="form-label">Email</label>
                                    <input type="email" name="email" class="form-control" id="inputPassword4" value="${userobj.email }" required>
                          </div>
                          </div>
                          <div class="row">
                          <div class="col-md-6">
                             <label for="inputEmail4" class="form-label">Phone Number</label>
                                      <input type="number" name="phno" class="form-control" id="inputEmail4"value="${userobj.phno }" required>
                              </div>
                           <div class="col-md-6">
                                  <label for="inputPassword4" class="form-label">Address</label>
                                   <input type="text" name="address" class="form-control" id="inputPassword4" required>
                           </div>
                           </div>
                           <div class="row">
                           <div class="col-md-6">
                                <label for="inputEmail4" class="form-label">Landmark</label>
                                       <input type="text" name ="landmark" class="form-control" id="inputEmail4" required>
                           </div>
                            <div class="col-md-6">
                                      <label for="inputPassword4" class="form-label">City</label>
                                      <input type="text" name="city" class="form-control" id="inputPassword4">
                              </div>
                              </div>
                              <div class="row">
                              <div class="col-md-6">
                                  <label for="inputEmail4" class="form-label">state</label>
                                       <input type="text" name="state" class="form-control" id="inputEmail4" required>
                              </div>
                                <div class="col-md-6">
                                      <label for="inputPassword4" class="form-label">Pin Code</label>
                                               <input type="text"  name="pincode" class="form-control" id="inputPassword4" required>
                                 </div>
									</div>
									
									<div class="form-group">
										<label>Payment Mode</label>
											<select class="form-control" name="payment">
											<option value="noselect">--Select--</option>
											<option value="COD">Cash On Delivery</option>
											</select>	
									
									
									
									</div>
									
									<div class="text-center mt-2 p-2">
									<button class="btn btn-warning g-3">Order Now</button>
									<a href="index.jsp" class="btn btn-success ml-3">Continue Shopping</a>
									</div>
									
									
				</form>
		
		</div>
	</div>
</div>



</body>
</html>