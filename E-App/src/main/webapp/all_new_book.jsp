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
#toast.display {
	visibility: visible;
	animation: fadeIn 0.5, fadeOut 0.5s 2.5s;
}

@keyframes fadeIn {from { bottom:0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@keyframes fadeOut {form { bottom:30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}
}

</style>
<body>
<%
	
	User u=(User)session.getAttribute("userobj");
	%>

<c:if test="${not empty addCart }">

<div id="toast"> ${addCart} </div>

<script type="text/javascript">
		showToast();
		function showToast(content)
		{
		    $('#toast').addClass("display");
		    $('#toast').html(content);
		    setTimeout(()=>{
		        $("#toast").removeClass("display");
		    },2000)
		}	
</script>

<c:remove var="addCart" scope="session"/>
</c:if>

<%@include file="all_component/navbar.jsp" %>

<div class="container-fluid">
	<div class="row">
		
		<%
				BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
				List<BookDtls>list = dao.getAllNewBook();
				for(BookDtls b : list)
				{ %>
				<div class="col-md-3 ">
				<div class="card crd-ho mt-2">
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
							}else
							{
							%>
								<a href="cart?bid=<%=b.getBookId() %>&&uid=<%=u.getId() %>" class="btn btn-danger btn-sm ml-2" ><i class="fas fa-cart-plus"></i>Add To Cart</a>
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
				 </div>
			  
		
		
	
		
		
				  
			  
		
		<!--  <div class="text-center mt-1">
			<a href="" class="btn btn-danger btn-sm text-white">View All Books</a>
		
		</div>-->
		
	</div>
	<hr>
		
		
	
	



<%@include file="all_component/footer.jsp" %>
</body>
</html>