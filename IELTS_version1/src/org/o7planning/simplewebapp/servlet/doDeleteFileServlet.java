package org.o7planning.simplewebapp.servlet;

import java.io.File;
import java.io.FileInputStream;
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

import org.o7planning.simplewebapp.utils.*;

import UserAccount.TaiKhoaNguoiDung;
import UserAccount.TaiLieu;

@WebServlet("/doDeleteFile")
public class doDeleteFileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public doDeleteFileServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String doc_id = (String) request.getParameter("doc_id");
		String doc_guid = request.getParameter("doc_guid");
		String danhmuchienhanh = request.getParameter("danhmuchienhanh");
		String filePath = getServletContext().getRealPath("") + doc_guid;
		Connection conn = MyUtils.getStoredConnection(request);
		//Lấy id người dùng để lọc lấy dữ liệu Tài liệu theo người dùng
		HttpSession session = request.getSession();
		TaiKhoaNguoiDung loginedUser = MyUtils.getLoginedUser(session);
		String idUser= loginedUser.getIdUser();
		System.out.println("Delete operation is failed.");
		try{
			File deleteFile = new File(filePath);
			if(deleteFile.delete()){
                try {
      	          TaiLieuUtils.deleteDocs(conn,doc_id);
      	      	} catch (SQLException e) {
      	          e.printStackTrace();
      	      	}
                /*--------LOAD LAI DANH SACH FILE CUA DANH MUC HIEN HANH------------*/
                List<TaiLieu> list = null;
	 	      	try {
	 	          list = TaiLieuUtils.queryTaiLieu(conn,danhmuchienhanh+"%",idUser);
	 	      	} catch (SQLException e) {
	 	          e.printStackTrace();
	 	      	}
	 		   request.setAttribute("docList", list);
	           request.setAttribute("danhmuchienhanh", danhmuchienhanh);
	           RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/MyFile.jsp");
	 	       dispatcher.forward(request, response);
            }else{
                System.out.println("Delete operation is failed.");
            }
  
        }catch(Exception e){
  
            e.printStackTrace();
  
        }
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
