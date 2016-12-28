package org.o7planning.simplewebapp.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.o7planning.simplewebapp.utils.*;
import UserAccount.*;

@WebServlet("/Xoa")
public class Xoa extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Xoa() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		//String url = "";
		String user_id  = request.getParameter("user_id");
		DBUtils db = new DBUtils();
		db.DeleteUser(Integer.parseInt(user_id));
		response.sendRedirect("ListUser.jsp");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
	}

}
