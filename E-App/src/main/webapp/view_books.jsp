<%@page import="com.entity.BookDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body style="background-color:#f0f1f2;">
<%@include file="all_component/navbar.jsp" %>

<%
int bid=Integer.parseInt(request.getParameter("bid"));
BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
BookDtls b = dao.getBookById(bid);

%>



<div class="container p-3 mt-5">
	<div class="row">
		<div class="col-md-6 text-center p-5 border bg-white">
			<img src="book/<%=b.getPhotoName() %>" style="height:230px;width:180px"><br>
			<h4 class="mt-3">Book Name:<span class="text-success"><%=b.getBookName() %></span></h4>
			<h5>Author:<span class="text-primary"><%=b.getAuthor() %></span></h5>
			<h4>Category:<span class="text-warning"><%=b.getBookCategory() %></span></h4>
		</div>
		
		<div class="col-md-6">
		<h2 class="text-center"><%=b.getBookName() %></h2>
		
		<%
		if("Old".equals(b.getBookCategory()))
		{%>
		<h5 class="text-center">Contact To Seller</h5>
		<h5 class="text-primary text-center"><i class="far fa-envelope"></i>Email: <%=b.getEmail() %></h5>
		<%}
		%>
		
		
		
		
		<div class="row mt-5">
		<div class="col-md-4 text-warning text-center p-2">
		<i class="fas fa-money-bill-wave fa-2x"></i>
		<p class="text-dark">Cash On Delivery</p> 
		</div>
		<div class="col-md-4 text-danger text-center p-2">
		
		<i class="fas fa-undo-alt fa-2x"></i>
		<p>Return Available</p>
		</div>
		<div class="col-md-4 text-info text-center p-2">
		<i class="fas fa-truck-moving fa-2x"></i>
		<p class="text-dark">Free Shipping</p>
		</div>
			
			
			
		</div>
		
		<%
		if("Old".equals(b.getBookCategory())){
		%>
		<div class="text-center p-3">
		
		<a href="index.jsp" class="btn btn-primary"><i class="fas fa-cart-plus"></i> Add Cart</a>
		
		<a href="" class="btn btn-warning"><i class="fa fa-inr" aria-hidden="true"></i> <%=b.getPrice() %></a>
		
		</div>
		<%
		} else {
		%>
		
		<div class="text-center p-3">
		
		<a href="" class="btn btn-primary"><i class="fas fa-cart-plus"></i> Add Cart</a>
		
		<a href="" class="btn btn-warning"><i class="fa fa-inr" aria-hidden="true"></i> <%=b.getPrice() %></a>
		
		</div>
		<%
		}
		%>
		
		</div>
	
	</div>


</div>
</body>
</html>