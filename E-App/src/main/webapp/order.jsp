

<%@page import="com.entity.Book_order"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.User"%>
<%@page import="com.DAO.BookOrderImpl"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>order</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body  style="background-color:#eff66fo">
<c:if test="${empty userobj}">

<c:redirect url="login.jsp"></c:redirect>

</c:if>
<%@include file="all_component/navbar.jsp" %>
<div class="container p-1">
<h4 class="text-center text-dark pt-3">Your Orders</h4>
<table class="table table-info table-hover mt-4 ">
  <thead class="table-warning">
    <tr>
      <th scope="col">Order id</th>
      <th scope="col">name</th>
      <th scope="col">book name</th>
      <th scope="col">author</th>
      <th scope="col">price</th>
      <th scope="col">payment type</th>
    </tr>
  </thead>
  <tbody>
  
  <%
  		User u=(User)session.getAttribute("userobj");
  		BookOrderImpl dao = new BookOrderImpl(DBConnect.getConn());
  		List<Book_order> blist =dao.getBook(u.getEmail());
  		for(Book_order b : blist)
  		{%>
  		
  		<tr>
      <th scope="row"><%=b.getOrderId() %></th>
      <td><%=b.getUserName() %></td>
      <td><%=b.getBookName() %></td>
      <td><%=b.getAuthor() %></td>
      <td><%=b.getPrice() %></td>
      <td><%=b.getPaymentType() %></td>
    </tr>
  		<% 	
  		}
  
  %>
    
  
   
  </tbody>
</table>
</div>
</body>
</html>