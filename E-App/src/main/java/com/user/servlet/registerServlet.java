package com.user.servlet;

import jakarta.servlet.http.*;

import java.io.IOException;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
@WebServlet("/register")
public class registerServlet extends HttpServlet 
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/html");
		try {
			
			String name=req.getParameter("fname");
			String email=req.getParameter("email");
			String phno=req.getParameter("phno");
			String password=req.getParameter("password");
			String check=req.getParameter("check");
			
			//System.out.println(name+""+email+" "+phno+" "+password+" "+check);
			User us = new User();
			us.setName(name);
			us.setEmail(email);
			us.setPhno(phno);
			us.setPassword(password);
			
			HttpSession session=req.getSession();
			if(check!=null)
			{
				UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
				
				boolean f2=dao.checkUser(email);
				if(f2)
				{
					boolean f = dao.userRegister(us);
					
					if(f)
					{
						//System.out.println("User Register Success....");
						session.setAttribute("succMsg","Registration Successfully...");
						resp.sendRedirect("register.jsp");
					}else
					{
						//System.out.println("Something wrong on server...");
						session.setAttribute("faildMsg","Something wrong on server...");
						resp.sendRedirect("register.jsp");
						
					}
				
				
				
			}else {
				session.setAttribute("failedMsg","User Already Exists Try Another Email Id");
				resp.sendRedirect("register.jsp");
				//System.out.println("please check and agree condition");
			}
		}
			else {
				session.setAttribute("failedMsg","please check and agree condition");
				resp.sendRedirect("register.jsp");
				//System.out.println("please check and agree condition");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
		
	
	
}
