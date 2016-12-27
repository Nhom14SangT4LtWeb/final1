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

@WebServlet("/doAvatar")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 4, // 2MB
				maxFileSize = 1024 * 1024 * 20, // 10MB
				maxRequestSize = 1024 * 1024 * 90) // 50MB
public class doAvatarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static String SAVE_DIRECTORY = "AVATAR";
    public doAvatarServlet() {
        super();
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
<<<<<<< HEAD
=======
	      // Ghi thông tin vào request trước khi forward.
	      request.setAttribute("user", loginedUser);
	 
>>>>>>> origin/master
	      // ---------------------------PHAN THUC HIEN CHINH-----------------------------
	      String appPath = request.getServletContext().getRealPath("");
          appPath = appPath.replace('\\', '/');
          String fullSavePath = null;
          // Thư mục để save file tải lên.
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
<<<<<<< HEAD
          boolean erro= false;
          String errorString = null;
=======
>>>>>>> origin/master
          String filePath= "";
          String fileName="";
          try{
          for (Part part : request.getParts()) {
              fileName = extractFileName(part);
              if (fileName != null && fileName.length() > 0) {
                  filePath = fullSavePath + File.separator + fileName;	  
                  // Ghi vào file.
                  part.write(filePath);
              }
          }}catch (Exception e) {
	           e.printStackTrace();
<<<<<<< HEAD
	           erro = true;
	           errorString = "upload failed";
	 	       System.out.println("File upload failed" + e );
	       }
          // upload file thất bại
          if(erro==true){
        	// Ghi các thông tin vào request trước khi forward.
              request.setAttribute("errorString", errorString);
              request.setAttribute("user", loginedUser);
              RequestDispatcher dispatcher //
              = this.getServletContext().getRequestDispatcher("/MyProfile.jsp");
     
              dispatcher.forward(request, response);
          }
          else{ // upload file thanh cong
	          Connection conn = MyUtils.getStoredConnection(request);
	          //xoa avatar cu duong dan thu muc goc :getServletContext().getRealPath("")
	          File deleteFile = new File(getServletContext().getRealPath("")+File.separator+ loginedUser.getAvatar());
	          deleteFile.delete();
	          //
	          try {
		    	  DBUtils.updateAvatarUser(conn,loginedUser.getUserName(), SAVE_DIRECTORY+ File.separator + fileName);
		          //update lai thông tin user trong session
		    	  TaiKhoaNguoiDung user = DBUtils.findUser(conn, loginedUser.getUserName());
		    	  MyUtils.storeLoginedUser(session,user );
		    	// Rồi chuyển hướng sang trang profile
		          response.sendRedirect(request.getContextPath() + "/userInfo");
		          return;
	          } catch (SQLException e) {
	        	  System.out.println(e);
	          }	          
          }
=======
	 	       System.out.println("File upload failed" + e );
	       }
          request.setAttribute("avatar_guid",SAVE_DIRECTORY+ File.separator + fileName );
          System.out.println("File upload failed" +filePath );
          RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/MyProfile.jsp");
	       dispatcher.forward(request, response);
>>>>>>> origin/master
	}
	private String extractFileName(Part part) {
	       // form-data; name="file"; filename="C:\file1.zip"
	       // form-data; name="file"; filename="C:\Note\file2.zip"
	       String contentDisp = part.getHeader("content-disposition");
	       String[] items = contentDisp.split(";");
	       for (String s : items) {
	           if (s.trim().startsWith("filename")) {
	               // C:\file1.zip
	               // C:\Note\file2.zip
	               String clientFileName = s.substring(s.indexOf("=") + 2, s.length() - 1);
	               clientFileName = clientFileName.replace("\\", "/");
	               int i = clientFileName.lastIndexOf('/');
	               // file1.zip
	               // file2.zip
	               return clientFileName.substring(i + 1);
	           }
	       }
	       return null;
	   }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
