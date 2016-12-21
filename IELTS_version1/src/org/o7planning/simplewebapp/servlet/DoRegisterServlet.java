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
 
@WebServlet(urlPatterns = { "/doRegister" })
public class DoRegisterServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
 
  public DoRegisterServlet() {
      super();
  }
 
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
	  Connection conn = MyUtils.getStoredConnection(request);
	  String userRole = "user";
	  String ativationDate = null;
	  String active ="1";
	  String fullNameRegis = request.getParameter("fullNameRegis");
      String userNameRegis = request.getParameter("userNameRegis");
      String passwordRegis = request.getParameter("passwordRegis");
      String emailRegis = request.getParameter("emailRegis");
      String rememberMeStrRegis = request.getParameter("rememberRigis");
      boolean remember = "Y".equals(rememberMeStrRegis);
      String errorString = null;
      
     TaiKhoaNguoiDung user = new TaiKhoaNguoiDung(fullNameRegis,userNameRegis,emailRegis,passwordRegis,userRole,ativationDate,active);
      try {
    	  DBUtils.insertUser(conn, user);
      } catch (SQLException e) {
    	  e.printStackTrace();
    	  errorString = e.getMessage();
      }

      request.setAttribute("errorfullNameRegis", errorString);
      if (errorString != null) {
    	  RequestDispatcher dispatcher //
          = this.getServletContext().getRequestDispatcher("/Register.jsp");
 
          dispatcher.forward(request, response);
      }
      // Nếu mọi thứ tốt đẹp.
      // Redirect sang trang danh sách sản phẩm.
      else {
    	// Nếu người dùng chọn lưu thông tin đăng nhập vào Cookie
          if(remember)  {
              MyUtils.storeUserCookie(response,user);
          }
          // Ngược lại xóa Cookie
          else  {
              MyUtils.deleteUserCookie(response);
          }            
          
          // Rồi chuyển hướng sang trang /userInfo.
          response.sendRedirect(request.getContextPath() + "/login");
      }
    }
  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
      doGet(request, response);
  }
 
}
