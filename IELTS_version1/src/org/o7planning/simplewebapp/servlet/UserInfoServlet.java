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
 
import UserAccount.TaiKhoaNguoiDung;

import org.o7planning.simplewebapp.utils.DBUtils;
import org.o7planning.simplewebapp.utils.MyUtils;
 
@WebServlet(urlPatterns = { "/userInfo" })
public class UserInfoServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
 
  public UserInfoServlet() {
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
      Connection conn = MyUtils.getStoredConnection(request);
      try {
      TaiKhoaNguoiDung user = DBUtils.findUser(conn, loginedUser.getUserName());
      request.setAttribute("user", user);
      // Đã login rồi thì chuyển tiếp sang /WEB-INF/views/userInfoView.jsp
      RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/MyProfile.jsp");
      dispatcher.forward(request, response);
      } catch (SQLException e){}
 
  }
 
  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
      doGet(request, response);
  }
 
}
