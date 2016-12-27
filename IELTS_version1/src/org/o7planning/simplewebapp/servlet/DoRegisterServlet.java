package org.o7planning.simplewebapp.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import UserAccount.TaiKhoaNguoiDung;
import org.o7planning.simplewebapp.utils.DBUtils;
import org.o7planning.simplewebapp.utils.MyUtils;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;
import javax.swing.border.EmptyBorder;
@WebServlet(urlPatterns = { "/doRegister" })
public class DoRegisterServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
 
  public DoRegisterServlet() {
      super();
  }
 
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
	  String userRole = "user";
	  
	  Date dateCurrent = new Date();
	  SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	  String ativationDate = dateFormat.format(dateCurrent);
	  String active ="1";
	  String publicTime = dateFormat.format(dateCurrent);
	  String fullNameRegis = request.getParameter("fullNameRegis");
      String userNameRegis = request.getParameter("userNameRegis");
      String passwordRegis = request.getParameter("passwordRegis");
      String re_enterRegis = request.getParameter("re_enterRegis");
      String emailRegis = request.getParameter("emailRegis");
      String rememberMeStrRegis = request.getParameter("rememberRegis");
      boolean remember = "Y".equals(rememberMeStrRegis);
      
      TaiKhoaNguoiDung user = null;
      boolean hasserror = false;
      String erroruserNameRegis = null;
      String errorfullNameRegis = null;
      String erroremailRegis =null;
      String errorpasswordRegis =null;
      String errorre_enterRegis = null;
      
      Connection conn = MyUtils.getStoredConnection(request);
      
      if (fullNameRegis == null || fullNameRegis.length() == 0  ){
    	  hasserror = true;
    	  errorfullNameRegis = "Required fullname!";
      }
      if (userNameRegis == null || userNameRegis.length() == 0  ){
    	  hasserror = true;
    	  erroruserNameRegis  = "Required username!";
      }
      else try {
	      user = DBUtils.checkUniqueUserName(conn, userNameRegis);
	      if (user != null ){
	    	  hasserror =true;
	    	  erroruserNameRegis = "User name are existed!";
	      }
      } catch (SQLException e){
    	  e.printStackTrace();
    	  erroruserNameRegis = e.getMessage();
      }
      if (passwordRegis == null || passwordRegis.length() == 0  ){
    	  hasserror = true;
    	  errorpasswordRegis  = "Required password!";
      }
      if (re_enterRegis == null || re_enterRegis.length()==0){
    	  hasserror = true;
    	  errorre_enterRegis = "Required re-enter password!";
      }
      else {
    	  if (!re_enterRegis.equals(passwordRegis )){
    		  hasserror = true;
    	  errorre_enterRegis = "Password does not match the confirm password!";
    	  }
      }
      if (emailRegis == null || emailRegis.length() == 0){
    	  hasserror = true;
    	  erroremailRegis  = "Required email!";
      } 
      else  try {
    	  user = DBUtils.checkUniqueEmail(conn, emailRegis);
	      if (user != null){
	    	  hasserror = true;
	    	  erroremailRegis = "Email are existed!";
	      }
      } catch (SQLException e){
    	  e.printStackTrace();
    	  erroremailRegis = e.getMessage();
      }
      
      if (hasserror){
    	  user = new TaiKhoaNguoiDung();
          user.setUserName(userNameRegis);
          user.setPassword(passwordRegis);
          user.setFullName(fullNameRegis);
          user.setEmail(emailRegis);
          // Ghi các thông tin vào request trước khi forward.
          request.setAttribute("errorfullNameRegis", errorfullNameRegis);
    	  request.setAttribute("erroruserNameRegis", erroruserNameRegis);
    	  request.setAttribute("errorpasswordRegis", errorpasswordRegis);
    	  request.setAttribute("errorre_enterRegis", errorre_enterRegis);
    	  request.setAttribute("erroremailRegis", erroremailRegis);
    	  request.setAttribute("user", user);
    	  // Chuyển tới trang Register.jsp
    	  RequestDispatcher dispatcher //
          = this.getServletContext().getRequestDispatcher("/Register.jsp");
          dispatcher.forward(request, response);
      }
      else{
    	  user = new TaiKhoaNguoiDung(fullNameRegis,userNameRegis,emailRegis,passwordRegis,userRole,ativationDate,active,publicTime);
	      try {
	    	  DBUtils.insertUser(conn, user);
	      } catch (SQLException e) {
	      }
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
