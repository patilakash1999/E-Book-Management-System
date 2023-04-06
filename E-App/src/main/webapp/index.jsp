
<%@page import="java.sql.Connection"%>
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
<title>E-Index Page</title>
<%@include file="all_component/allCss.jsp" %>
<link href='https://fonts.googleapis.com/css?family=Didact Gothic' rel='stylesheet'>
<style type="text/css">

.container .row{
 font-family: 'Didact Gothic';font-size: 16px;
}


.back-img{
background:url("img/b.jpg");
height:50vh;
width:100%;
background-size:cover;
background-repeat:no-repeat;
opacity:0.6;
}
.container-fluid .text-center{
	padding-top:180px;
	color:dark;
	font-size:30px;
	font-family:impact;
	
	
	

}
.crd-ho:hover{
	background-color:#e8e9eb;

}
.container .row .btn{

width:80px;
font-size:10px;
margin-left:12px;

}

.about-section {
  padding: 100px;
  text-align: center;
  background-color: #464e5d;
  color: white;
  margin-top:50px;
 
}
.footer{

margin-top:-10px;

}


</style>
</head>
<body style="background-color:#e6eefa">

	<%
	
	User u=(User)session.getAttribute("userobj");
	%>


	<%@include file="all_component/navbar.jsp" %>
	<div class="container-fluid back-img">
	<h2 class="text-center"><strong>EBook Management System<strong></strong></h2>
	</div>
	
	<%--Connection conn=DBConnect.getConn();
	
		out.println(conn);
	--%>
	
	
	<%-- Start Recent Book--%>
	<hr>
	<div class="container">
		<h3 class="text-center">Recent Books</h3>
		<div class=row>
		<%
		BookDAOImpl dao2= new BookDAOImpl(DBConnect.getConn());
		List<BookDtls> list2= dao2.getRecentBook();
		for(BookDtls b: list2)
		{%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName() %>" style=width:150px;height:200px class="img-thumblin">
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
		<div class="text-center mt-4">
			<a href="all_recent_book.jsp" class="btn btn-danger btn-sm text-white">View All Books</a>
		
		</div>
		
	</div>
	<hr>
		   
	<!-- End Recent Book -->
	
		
		<!--Start New  Book  -->
		
		<div class="container">
		<h3 class="text-center">New Books</h3>
		<div class=row>
		
			
			
				<%
				BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
				List<BookDtls>list = dao.getNewBook();
				for(BookDtls b : list)
				{ %>
				<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="hello" src="book/<%=b.getPhotoName() %>" style=width:150px;height:200px class="img-thumblin">
							<p><%=b.getBookName() %></p>
							<p><%=b.getAuthor() %></p>
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
							
								
						
								
								
								
								
								<a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-dark text-white btn-sm ml-2">View Details</a>
								<a href="" class="btn btn-info btn-sm ml-2"><i class="fa fa-inr" aria-hidden="true"></i> <%=b.getPrice() %></a>
							</div>
					 </div>
				 </div>	
			  </div>
				
				<% 
				}
				%>	 
			
		</div>
		<div class="text-center mt-4">
			<a href="all_new_book.jsp" class="btn btn-danger btn-sm text-white">View All Books</a>
		
		</div>
		
	</div>
	<hr>
		<!-- End New Book -->
		
		<!-- Start Old Book  -->
		<div class="container">
		<h3 class="text-center">Old Books</h3>
		<div class=row>
		
		<%
		BookDAOImpl dao3= new BookDAOImpl(DBConnect.getConn());
		List<BookDtls> list3= dao3.getOldBook();
		for(BookDtls b: list3)
		{%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName()%>" style=width:150px;height:200px class="img-thumblin">
							<p><%=b.getBookName() %></p>
							<p><%=b.getAuthor() %></p>
							<p><%=b.getBookCategory() %></p>
							
							<div class="row">
						
								<a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-dark text-white btn-sm ml-2">View Details</a>
								<a href="" class="btn btn-info btn-sm ml-2"><i class="fa fa-inr" aria-hidden="true"></i> <%=b.getPrice() %></a>
							</div>
					</div>
			  </div>	
	    </div>
		<%
         }
		%>
			
			  
			  
		</div>
		<div class="text-center mt-4">
			<a href="all_old_book.jsp" class="btn btn-danger btn-sm text-white">View All Books</a>
		
		</div>
		
	</div>
	<hr>
		
		<!-- End Old Book -->
		
<%--About Us Page --%>

 <h2 class="text-dark text-center" >About Us</h2>
<div class="about-section">

 
  <h2 class="text-center"> eBook Management System </h2>
  <p>It is an e-commerce website which helps user to buy all type of books and sell old books from this website.
   The website provides the visitor, customer, and administrator a easy and efficient way to buy and manage books
    in online. It provides functional requirements like register, login, search, payment and non functional requirements 
    are categories like new, old and recent books, carting use to mark and select multiple books.</p>
 
</div>
	<div class="footer">
	<%@include file="all_component/footer.jsp" %>
	</div>
	<%--End About Us --%>
</body>
</html>