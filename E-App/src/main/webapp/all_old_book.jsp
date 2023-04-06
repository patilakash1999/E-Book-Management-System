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
<title>all old book</title>
<%@include file="all_component/allCss.jsp" %>

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
.footer{
margin-top:222px;

}

</style>
</head>
<body>
<%@include file="all_component/navbar.jsp" %>


	<div class="container-fluid">
		<div class=row>
		
		<%
		BookDAOImpl dao3= new BookDAOImpl(DBConnect.getConn());
		List<BookDtls> list3= dao3.getAllOldBook();
		for(BookDtls b: list3)
		{%>
			<div class="col-md-3">
				<div class="card crd-ho mt-2">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName() %>" style=width:150px;height:200px class="img-thumblin">
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
			  
			  
		</div>
<div class="footer">
<%@include file="all_component/footer.jsp" %>
</div>
</body>
</html>