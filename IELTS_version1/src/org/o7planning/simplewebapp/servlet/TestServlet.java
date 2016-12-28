package org.o7planning.simplewebapp.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.o7planning.simplewebapp.utils.DBUtils;
import org.o7planning.simplewebapp.utils.DeUtils;
import org.o7planning.simplewebapp.utils.MyUtils;

import UserAccount.De;
import UserAccount.TaiKhoaNguoiDung;

@WebServlet("/test")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public TestServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		  HttpSession session = request.getSession();
	      // Kiểm tra người dùng login chưa
	      TaiKhoaNguoiDung loginedUser = MyUtils.getLoginedUser(session);
	      // Chưa login.
	      if (loginedUser == null) {
	          // Chuyển hướng về trang login.
	          response.sendRedirect(request.getContextPath() + "/login");
	          return;
	      }
	      //------------------------PHAN THUC HIEN CHINH------------------------
	      boolean hasError = false;
	      String idUser = loginedUser.getIdUser();
	      De de = null;
	      Connection conn = MyUtils.getStoredConnection(request);
	      try {
	    	  de = DeUtils.timDe(conn, idUser);
	    	  if (de == null) {
                  hasError = true;
              }
	      } catch (SQLException e){
	    	  e.printStackTrace();
	      }
	      if(hasError){
	    	  response.sendRedirect(request.getContextPath() + "/thong_bao_chua_tao_de");
	          return;
	      }
	      else{
	    	  request.setAttribute("user", loginedUser);
		      request.setAttribute("de", de);
		      RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/TEST.jsp");
		      dispatcher.forward(request, response);
	      }
	      
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
