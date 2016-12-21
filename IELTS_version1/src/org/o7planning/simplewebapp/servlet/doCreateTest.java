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
 
import UserAccount.TaiKhoaNguoiDung;
import UserAccount.TaiLieu;
import org.o7planning.simplewebapp.utils.TaiLieuUtils;
import org.o7planning.simplewebapp.utils.MyUtils;

/**
 * Servlet implementation class doCreateTest
 */
@WebServlet("/doCreateTest")
public class doCreateTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public doCreateTest() {
        super();
        // TODO Auto-generated constructor stub
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
	      // Ghi thông tin vào request trước khi forward.
	      request.setAttribute("user", loginedUser);
	 
	      // Đã login rồi thì chuyển tiếp sang /WEB-INF/views/userInfoView.jsp
	      RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/CreateTest.jsp");
	      dispatcher.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
