<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.DAO.*" %>
    <%@page import="com.DB.DBConnect"%>
    <%@page import="com.DB.*" %>
     <%@page import="com.entity.*" %>
      <%@page import="com.entity.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin:add books</title>
<%@include file="allCss.jsp" %>
</head>
<body style="background-color:#f0f2f1">
<%@include file="navbar.jsp" %>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
					<h4 class="text-center">--- Edit Books ---</h4>
					
				<!--  	<c:if test="${not empty succMsg }">
						<p class="text-center text-success">${succMsg }</p>
						<c:remove var="succMsg" scope="session"/>
						</c:if>
						
						<c:if test="${not empty failedMsg }">
						<p class="text-center text-danger">${failedMsg }</p>
						<c:remove var="failedMsg" scope="session"/>
						</c:if> -->
					
					    <% 
					      int id = Integer.parseInt(request.getParameter("id")); 
					    
					    	BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
					    	BookDtls b = dao.getBookById(id);
					    	
					    %>
					
					<form action="../editbooks" method="post">
					
					<input type="hidden" name="id" value="<%=b.getBookId()%>">
					<div class="form-group p-2">
						<label for="exampleInputEmail1">Book Name*</label><input name="bname" type="text" class="form-control"
                        id="exampleInputEmail1" aria-describedby="emailHelp" value="<%=b.getBookName()%>">
					</div>
					
					<div class="form-group p-2">
						<label for="exampleInputEmail1">Author Name*</label><input name="author" type="text" class="form-control"
                        id="exampleInputEmail1" aria-describedby="emailHelp" value="<%=b.getAuthor() %>">
					</div>
					
					<div class="form-group">
						<label for="exampleInputEmail1">Price*</label><input name="price" type="number" class="form-control"
                        id="exampleInputEmail1" aria-describedby="emailHelp" value="<%=b.getPrice()%>">
					</div>
					
					<!-- <div class="form-group p-2">
						<label for="inputState">Book Categories*</label><select id="inputState" name="categories" class="form-control">
						
						<option selected>--select--</option>
						<option value="Active">New Book</option>
						
						
						</select>
					</div>  -->
					
					
					<div class="form-group p-2">
						<label for="inputState">Book Status*</label><select id="inputState" name="status" class="form-control">
						
						<% if("Active".equals(b.getStatus())){%>
							
							<option value="Active">Active</option>
							
							<%
							
							}else{
							%>
							<option value="Inactive">Inactive</option>
							<%
							}
							%>
					</select>
					</div>
					
					 <input type="Submit" value="Update" class="btn btn-primary">
					
					</form>
					
					
					
					</div>
				
				
				</div>
			
			</div>
		
		
		</div>
	
	
	</div>


<div style="margin-top:280px">
<%@include file="footer.jsp" %></div>
</body>
</html>