<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
  <%@page import="com.DAO.*" %>
    <%@page import="com.DB.DBConnect"%>
    <%@page import="com.DB.*" %>
     <%@page import="com.entity.*" %>
      <%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>old book</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body>
<%@include file="all_component/navbar.jsp" %>

	<c:if test="${not empty succMsg }">
				
				<p class="alert  alert-success text-center"> ${succMsg }</p>
				<c:remove var="succMsg" scope="session"/>
				</c:if>
				
<div class="container p-1">
<h4 class="text-center text-dark pt-3">Update Old Books</h4>
<table class="table table-info table-hover mt-4 ">
  <thead class="table-warning">
    <tr>
      
      <th scope="col"> book name</th>
     
      <th scope="col">author</th>
      <th scope="col">price</th>
       <th scope="col">Category</th>
      <th scope="col">action</th>
    </tr>
  </thead>
  
  <tbody>
  <%
  	User u = (User)session.getAttribute("userobj");
    String email = u.getEmail();
  	BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn()) ;
  	
    List<BookDtls>list=	dao.getBookByOld(email, "Old");
    
    for(BookDtls b : list)
    {%>
    
    <tr>
      <td><%=b.getBookName() %></td>
      <td><%=b.getAuthor() %></td>
      <td><%=b.getPrice() %></td>
       <td><%=b.getBookCategory() %></td>
      <td><a href="delete_old_book?em=<%=email%> &&id=<%=b.getBookId() %>" class="btn btn-sm btn-danger">Delete</a></td>
    </tr>
    <%
    }
    
    
    %>
  
  
    
  
   
  </tbody>
</table>
</div>

</body>
</html>