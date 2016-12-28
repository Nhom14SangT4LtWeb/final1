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

import org.o7planning.simplewebapp.utils.DeUtils;
import org.o7planning.simplewebapp.utils.MyUtils;

import UserAccount.Diem;
import UserAccount.TaiKhoaNguoiDung;

@WebServlet("/cham_bai")
public class ChamBaiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public ChamBaiServlet() {
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
	      //----------------PHAN THUC HIEN CHINH-----------------------
	      String idDe = request.getParameter("idDe");
	      String cau1 = request.getParameter("cau1");
	      String cau2 = request.getParameter("cau2");
	      String cau3 = request.getParameter("cau3");
	      String cau4 = request.getParameter("cau4");
	      String cau5 = request.getParameter("cau5");
	      String cau6 = request.getParameter("cau6");
	      String cau7 = request.getParameter("cau7");
	      String cau8 = request.getParameter("cau8");
	      String cau9 = request.getParameter("cau9");
	      String cau10 = request.getParameter("cau10");
	      String cau11 = request.getParameter("cau11");
	      String cau12 = request.getParameter("cau12");
	      String cau13 = request.getParameter("cau13");
	      String cau14 = request.getParameter("cau14");
	      String cau15 = request.getParameter("cau15");
	      String [] dayDA = {cau1, cau2, cau3, cau4, cau5,cau6,cau7,cau8,cau9,cau10,cau11,cau12,cau13,cau14,cau15};
	      Connection conn = MyUtils.getStoredConnection(request);
   	   	  String idUser = loginedUser.getIdUser();
   	   	  String DADung = null;;
   	   	  int diem =0;
	      for(int i=0;i<dayDA.length;i++){
	    	   	try {
	    	   		DADung=DeUtils.timDA(conn, idUser, ""+i, idDe).getdapAn();
					if(dayDA[i].equalsIgnoreCase(DADung)){
						diem++;
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	      }
	      // them thong tin diem vao bang diem cua nguoi dung
	      Date dateCurrent = new Date();
		  DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		  String ngay = dateFormat.format(dateCurrent);
	      String diemtong = String.valueOf(diem);
	      Diem Diem = new Diem(idUser, diemtong,ngay);
	      try {
	    	  DeUtils.insertDiem(conn, Diem);
	      } catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
	      }
	      response.sendRedirect(request.getContextPath() + "/userHome");
   	      return;
	      
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
