package org.o7planning.simplewebapp.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import UserAccount.TaiKhoaNguoiDung;
import org.o7planning.simplewebapp.utils.DBUtils;
import org.o7planning.simplewebapp.utils.MyUtils;

/**
 * Servlet implementation class DoLogoutServlet
 */
@WebServlet("/doLogout")
public class DoLogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoLogoutServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		TaiKhoaNguoiDung loginedUser = MyUtils.getLoginedUser(session);
		if (loginedUser == null) {
	          // Chuyển hướng về trang login.
	          response.sendRedirect(request.getContextPath() + "/login");
	          return;
	    }
		String userName = loginedUser.getUserName();
		Date dateCurrent = new Date();
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String publicTime = dateFormat.format(dateCurrent);

		TaiKhoaNguoiDung user = new TaiKhoaNguoiDung (userName,publicTime);
		Connection conn = MyUtils.getStoredConnection(request);
		try {
	    	  DBUtils.updatePublicDateUser(conn, user);
	      } catch (SQLException e) {
	      }
		//vô hiệu hóa session người dùng
		session.invalidate();
		// Rồi chuyển hướng sang trang /userInfo.
	    response.sendRedirect(request.getContextPath() + "/web");
		}
		
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
