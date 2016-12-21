package org.o7planning.simplewebapp.servlet;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
import UserAccount.*;
import org.o7planning.simplewebapp.utils.*;
@WebServlet(urlPatterns = { "/doDanhMuc" })
public class DoDanhMucServlet extends HttpServlet {
	  private static final long serialVersionUID = 1L;
	 
	  public DoDanhMucServlet() {
	      super();
	  }
	  @Override
	  protected void doGet(HttpServletRequest request, HttpServletResponse response)
	          throws ServletException, IOException {
	      HttpSession session = request.getSession();
	 
	      // Kiểm tra người dùng login chưa
	      TaiKhoaNguoiDung loginedUser = MyUtils.getLoginedUser(session);
	      // Chưa login.
	      if (loginedUser == null) {
	          // Chuyển hướng về trang login.
	          response.sendRedirect(request.getContextPath() + "/login");
	          return;
	      }
	      // Ghi thông tin vào request trước khi forward.
	      request.setAttribute("user", loginedUser);
	      //
	      String danhmuc = request.getParameter("danhmuc");
	      String danhmucxet = danhmuc + "%";
	      //
	      //
	      Connection conn = MyUtils.getStoredConnection(request);
	      String userName = loginedUser.getUserName();
	      String idUser="";
	      try {
			idUser= DBUtils.findUser(conn,userName).getIdUser();
	      } catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
	      }	      
	      //
	      List<TaiLieu> list = null;
	      try {
	          list = TaiLieuUtils.queryTaiLieu(conn,danhmucxet,idUser);
	      } catch (SQLException e) {
	          e.printStackTrace();
	      }
	      // Lưu thông tin vào request attribute trước khi forward sang views.
	      request.setAttribute("docList", list);
	      request.setAttribute("danhmuchienhanh", danhmuc);
	      //
	      RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/MyFile.jsp");
	      dispatcher.forward(request, response);
	 
	  }
	 
	  @Override
	  protected void doPost(HttpServletRequest request, HttpServletResponse response)
	          throws ServletException, IOException {
	      doGet(request, response);
	  }
	 
	}
