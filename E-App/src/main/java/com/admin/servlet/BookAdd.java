package com.admin.servlet;

import java.io.File;
import java.io.IOException;

import com.DAO.BookDAOImpl;
import com.DB.DBConnect;
import com.entity.BookDtls;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
@WebServlet("/add_books")
@MultipartConfig
public class BookAdd extends HttpServlet
{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			
			String bookName=req.getParameter("bname");
			String author=req.getParameter("author");
			String price = req.getParameter("price");
			String categories=req.getParameter("categories");
			String status=req.getParameter("status");
			Part part=req.getPart("bimg");
			String fileName=part.getSubmittedFileName();
			
			
			BookDtls b = new BookDtls(bookName,author,price,categories,status,fileName,"admin");
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			
			
		
		
			boolean f = dao.addBooks(b);
			 HttpSession session = req.getSession();
			 
			 
			 if(f)
			 {
			 	String path =	getServletContext().getRealPath("")+"book";
		
				File file = new File(path);
				part.write(path+File.separator+fileName);
				 
				 session.setAttribute("succMsg","Book Add Successfully");
				 resp.sendRedirect("admin/add_books.jsp");
			 }
			 else
			 {
				 session.setAttribute("failedMsg","Something wrong on server");
				 resp.sendRedirect("admin/add_books.jsp");
			 }
			 
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	

}
	


