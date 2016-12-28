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
 
@WebServlet(urlPatterns = { "/doLogin" })
public class DoLoginServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
 
  public DoLoginServlet() {
      super();
  }
 
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
 
      String userName = request.getParameter("userName");
      String password = request.getParameter("password");
      String rememberMeStr = request.getParameter("rememberMe");
      boolean remember= "Y".equals(rememberMeStr);
 
      
      TaiKhoaNguoiDung 	 user = null;
      boolean hasError = false;
      String errorString = null;
      int flag = 1;
      if (userName == null || password == null
               || userName.length() == 0 || password.length() == 0) {
          hasError = true;
          errorString = "Required username and password!";
      } else {
          Connection conn = MyUtils.getStoredConnection(request);
          try {
              // Tìm user trong DB.
              user = DBUtils.findUser(conn, userName, password);
              
              if (user == null) {
                  hasError = true;
                  errorString = "User Name or password invalid";
              }
              else {
            	  user =DBUtils.checkActiveUser(conn, userName, flag);
            	  if(user == null){
            		  hasError =true;
            		  errorString ="Your account are deactived!";
            	  }
              }
          } catch (SQLException e) {
              e.printStackTrace();
              hasError = true;
              errorString = e.getMessage();
          }
      }
      // Trong trường hợp có lỗi, forward về trang login.jsp
      if (hasError) {
          user = new TaiKhoaNguoiDung();
          user.setUserName(userName);
          user.setPassword(password);
          
          // Ghi các thông tin vào request trước khi forward.
          request.setAttribute("errorString", errorString);
          request.setAttribute("user", user);
          // Chuyển tiếp tới trang login.jsp
          RequestDispatcher dispatcher //
          = this.getServletContext().getRequestDispatcher("/Login.jsp");
 
          dispatcher.forward(request, response);
      }
      // Trường hợp không có lỗi.
      // Lưu thông tin người dùng vào Session.
      // Và chuyển hướng sang trang userInfo.
      else {
          HttpSession session = request.getSession();
          MyUtils.storeLoginedUser(session, user);

          // Nếu người dùng chọn lưu thông tin đăng nhập vào Cookie
          if(remember)  {
              MyUtils.storeUserCookie(response,user);
          }
          // Ngược lại xóa Cookie
          else  {
              MyUtils.deleteUserCookie(response);
          } 
          System.out.println(user.getUserRole());
          if(user.getUserRole().equals("admin"))  {
	          // Rồi chuyển hướng sang trang admin
	          response.sendRedirect(request.getContextPath() + "/adminHome");
	          return;
          }
          if (user.getUserRole().equals("user")){
        	// Rồi chuyển hướng sang trang home cua user
	          response.sendRedirect(request.getContextPath() + "/userHome");
	          return;
          }
      }
  }
 
  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
      doGet(request, response);
  }
 
}