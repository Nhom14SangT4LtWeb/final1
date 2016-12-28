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

import UserAccount.Diem;
import UserAccount.TaiKhoaNguoiDung;
import UserAccount.TaiLieu;

import org.o7planning.simplewebapp.utils.DeUtils;
import org.o7planning.simplewebapp.utils.MyUtils;
import org.o7planning.simplewebapp.utils.TaiLieuUtils;
@WebServlet(urlPatterns = { "/userHome" })
public class UserHomeServlet extends HttpServlet {
	  private static final long serialVersionUID = 1L;
	 
	  public UserHomeServlet() {
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
	      //-----------------------PHAN THUC HIEN--------------------
	      String idUser = loginedUser.getIdUser();
	      Connection conn = MyUtils.getStoredConnection(request);
	      //
	      List<Diem> list = null;
	      try {
	          list = DeUtils.queryDiem(conn, idUser);
	      } catch (SQLException e) {
	          e.printStackTrace();
	      }
	      // Ghi thông tin vào request trước khi forward.
	      request.setAttribute("user", loginedUser);
	      request.setAttribute("diemList", list);
	      // Đã login rồi thì chuyển tiếp sang 
	      RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/Home.jsp");
	      dispatcher.forward(request, response);
	 
	  }
	 
	  @Override
	  protected void doPost(HttpServletRequest request, HttpServletResponse response)
	          throws ServletException, IOException {
	      doGet(request, response);
	  }
	 
	}
