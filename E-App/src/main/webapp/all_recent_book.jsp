<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="com.DAO.*" %>
    <%@page import="com.DB.DBConnect"%>
    <%@page import="com.DB.*" %>
     <%@page import="com.entity.*" %>
      <%@page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All recent book</title>
<%@include file="all_component/allCss.jsp" %>
</head>

<style>

.container-fluid .row{

padding-left:10px;
padding-right:40px;

}

.crd-ho:hover{
	background-color:#e8e9eb;

}
.container-fluid .row .btn{

width:80px;
font-size:10px;
margin-left:14px;

}

</style>
<body>
<%@include file="all_component/navbar.jsp" %>
<%
	
	User u=(User)session.getAttribute("userobj");
	%>
<div class="container-fluid">
	<div class="row">
		
		<%
		BookDAOImpl dao2= new BookDAOImpl(DBConnect.getConn());
		List<BookDtls> list2= dao2.getAllRecentBook();
		for(BookDtls b: list2)
		{%>
			<div class="col-md-3">
				<div class="card crd-ho mt-2">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName() %>" style=width:150px;height:190px class="img-thumblin">
							<p><%=b.getBookName() %></p>
							<p><%=b.getAuthor() %></p>
							
							<p>
							<%
							if(b.getBookCategory().equals("Old"))
							{%>
								Category:<%=b.getBookCategory() %></p>
							<div class="row">
								
								<a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-warning " >View Details</a>
								<a href="" class="btn btn-info btn-sm ml-2 p-2"><i class="fa fa-inr" aria-hidden="true"></i> <%=b.getPrice() %></a>
							</div>
								
							<% }else
							{
							%>
							<p> Category:<%=b.getBookCategory() %></p>
							<div class="row">
							<%
							if(u==null)
							{%>
								<a href="login.jsp" class="btn btn-danger btn-sm ml-2"><i class="fas fa-cart-plus"></i>Add To Cart</a>
							<%
							}else{
							%>
								<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>" class="btn btn-danger btn-sm ml-2"><i class="fas fa-cart-plus"></i>Add To Cart</a>
							<%
							}
							%>
								<%-- <a href="" class="btn btn-danger btn-sm ml-2"><i class="fas fa-cart-plus"></i>Add To Cart</a>--%>
								<a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-warning btn-sm ml-2">View Details</a>
								<a href="" class="btn btn-info btn-sm ml-2"><i class="fa fa-inr" aria-hidden="true"></i> <%=b.getPrice() %></a>
							</div>
								
							<%
							}
							%>
							
							
							
					 </div>
				 </div>
			  </div>
			
		<%}
		
		
		%>
		
		
				  
			  
		</div>
		<!--  <div class="text-center mt-1">
			<a href="" class="btn btn-danger btn-sm text-white">View All Books</a>
		
		</div>-->
		
	</div>
	<hr>
		
		
	
	



<%@include file="all_component/footer.jsp" %>
</body>
</html>