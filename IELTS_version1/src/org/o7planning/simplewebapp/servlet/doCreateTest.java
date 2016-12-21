package org.o7planning.simplewebapp.servlet;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import UserAccount.*;
import org.o7planning.simplewebapp.utils.*;
@WebServlet("/doCreateTest")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 4, // 2MB
maxFileSize = 1024 * 1024 * 20, // 10MB
maxRequestSize = 1024 * 1024 * 90) // 50MB
public class doCreateTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static String SAVE_DIRECTORY = "TEST";
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
	 
	      // Đã login rồi thì chuyển tiếp
	      try {
			   String userName = loginedUser.getUserName();
			   Connection conn = MyUtils.getStoredConnection(request);
				//
	           String tende = request.getParameter("tende");
	           SAVE_DIRECTORY = SAVE_DIRECTORY + tende;
	  
	           // Đường dẫn tuyệt đối tới thư mục gốc của web app.
	           String appPath = request.getServletContext().getRealPath("");
	           appPath = appPath.replace('\\', '/');
	 
	  
	           // Thư mục để save file tải lên.
	           String fullSavePath = null;
	           if (appPath.endsWith("/")) {
	               fullSavePath = appPath + SAVE_DIRECTORY;
	           } else {
	               fullSavePath = appPath + "/" + SAVE_DIRECTORY;
	           }
	 
	  
	           // Tạo thư mục nếu nó không tồn tại.
	           File fileSaveDir = new File(fullSavePath);
	           if (!fileSaveDir.exists()) {
	               fileSaveDir.mkdir();
	           }
	           //
	           String idUser = "";
	           // Danh mục các phần đã upload lên (Có thể là nhiều file).
	           for (Part part : request.getParts()) {
	               String fileName = extractFileName(part);
	               if (fileName != null && fileName.length() > 0) {
	                   String filePath = fullSavePath + File.separator + fileName;	  
	                   // Ghi vào file.
	                   part.write(filePath);
	                   // ----------------------Ghi vao CSDL----------------------------
	                   //Ngay upload
	    	           Date dateCurrent = new Date();
	    			   DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	    			   String uploadDate = dateFormat.format(dateCurrent);
	    			   // lấy đuôi file
	    			   String extension = "";
	    			   int i = fileName.lastIndexOf('.');
	    			   if (i > 0) {
	    			       extension = fileName.substring(i+1);
	    			   }
	    			   //
	    			   String guid = SAVE_DIRECTORY + File.separator + fileName;
	    			   String idFolder="";
	    			   idUser= DBUtils.findUser(conn,userName).getIdUser();
	    	           TaiLieu doc = new TaiLieu(fileName,extension,guid,uploadDate,idUser,idFolder);
	    	           
	    	           try {
	                       TaiLieuUtils.insertDocs(conn, doc);
	                   } catch (SQLException e) {
	                       e.printStackTrace();
	                       System.out.println("File upload failed" + e );
	                   }
	               }
	           }
	           // Upload thành công.
	           
	            List<TaiLieu> list = null;
	 	      	try {
	 	          list = TaiLieuUtils.queryTaiLieu(conn,"TEST"+tende+"%",idUser);
	 	      	} catch (SQLException e) {
	 	          e.printStackTrace();
	 	      	}
	 		   request.setAttribute("docList", list);
	           request.setAttribute("tende", tende);
	           RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/TEST.jsp");
	 	       dispatcher.forward(request, response);
	       } catch (Exception e) {
	           e.printStackTrace();
	       }
	   }
	   private String extractFileName(Part part) {
	       String contentDisp = part.getHeader("content-disposition");
	       String[] items = contentDisp.split(";");
	       for (String s : items) {
	           if (s.trim().startsWith("filename")) {
	               String clientFileName = s.substring(s.indexOf("=") + 2, s.length() - 1);
	               clientFileName = clientFileName.replace("\\", "/");
	               int i = clientFileName.lastIndexOf('/');
	               return clientFileName.substring(i + 1);
	           }
	       }
	       return null;
	   }
	     

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 doGet(request, response);
	}
}