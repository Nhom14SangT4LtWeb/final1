package org.o7planning.simplewebapp.servlet;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.o7planning.simplewebapp.utils.*;

import UserAccount.*;
 
@WebServlet("/CapNhatActive")
public class CapNhatActive extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CapNhatActive() {
        super();
      
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
	      //------------------PHAN THUC HIEN CHINH-------------------
	      String userName = request.getParameter("userName");
	      Connection conn = MyUtils.getStoredConnection(request);
	      TaiKhoaNguoiDung user = null;
	      //tim thong tin nguoi dung trong datebase
	      try {
	    	  user =DBUtils.checkActiveUser(conn, userName, 0);
	    	  if(user==null){ // tai khoa chua khoa
	    		  DBUtils.updateactive(conn, userName, 0);
	    	  }
	    	  if(user!=null){// tai khoan da khoa
	    		   // chuyen sang kích hoat khoa tai khoa
	    		  DBUtils.updateactive(conn, userName, 1);
	    	  }
	      } catch (SQLException e) {
              e.printStackTrace();
          }
	      response.sendRedirect(request.getContextPath() + "/listUser");
	      
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
