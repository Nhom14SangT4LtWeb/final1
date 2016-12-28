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
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> origin/master
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 4, // 4MB
maxFileSize = 1024 * 1024 * 20, // 20MB
maxRequestSize = 1024 * 1024 * 90) // 90MB
public class doCreateTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static String SAVE_DIRECTORY = "TEST";
    public doCreateTest() {
        super();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  HttpSession session = request.getSession();
<<<<<<< HEAD
=======
=======
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
>>>>>>> origin/master
>>>>>>> origin/master
		 
	      // Kiểm tra người dùng login chưa
	      TaiKhoaNguoiDung loginedUser = MyUtils.getLoginedUser(session);
	 
	      // Chưa login.
	      if (loginedUser == null) {
	          // Chuyển hướng về trang login.
	          response.sendRedirect(request.getContextPath() + "/login");
	          return;
	      }
<<<<<<< HEAD
	      ///-----------PHAN THUC HIEN CHINH --------------------------------------
	      String mp3Guid ="";
	      String docGuid ="";
=======
<<<<<<< HEAD
	      ///-----------PHAN THUC HIEN CHINH --------------------------------------
	      String mp3Guid =null;
	      String docGuid =null;
>>>>>>> origin/master
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
	      boolean hasError = false;
<<<<<<< HEAD
	      String errorStringUpload ="";
	      String errorString = "";
=======
	      String errorStringUpload =null;
	      String errorString = null;
>>>>>>> origin/master
	       // Đường dẫn tuyệt đối tới thư mục gốc của web app.
	       String appPath = request.getServletContext().getRealPath("");
	       appPath = appPath.replace('\\', '/');
	 
	  
	           // Thư mục để save file tải lên.
	       String fullSavePath = null;
	       if (appPath.endsWith("/")) {
	           fullSavePath = appPath + SAVE_DIRECTORY;
	       } else {
	           fullSavePath = appPath + "/" + SAVE_DIRECTORY;
<<<<<<< HEAD
=======
=======
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
>>>>>>> origin/master
>>>>>>> origin/master
	           }
	 
	  
	           // Tạo thư mục nếu nó không tồn tại.
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> origin/master
	       File fileSaveDir = new File(fullSavePath);
	       if (!fileSaveDir.exists()) {
	           fileSaveDir.mkdir();
	       }
	       // Danh mục các phần đã upload lên (Có thể là nhiều file).
	       for (Part part : request.getParts()) {
	           String fileName = extractFileName(part);
	           if (fileName != null && fileName.length() > 0) {
	               String filePath = fullSavePath + File.separator + fileName;	
	               // lấy đuôi file
				   String extension = "";
				   int i = fileName.lastIndexOf('.');
				   if (i > 0) {
				       extension = fileName.substring(i+1);
				   }
				   if(extension.equals("pdf")){
					   docGuid = SAVE_DIRECTORY + File.separator + fileName;
				   }else {
					   if (extension.equals("mp3")){
						   mp3Guid = SAVE_DIRECTORY + File.separator + fileName;
<<<<<<< HEAD
					   }
				   }
	               // Ghi vào file.
	               part.write(filePath);
	           }   
	       }
	       if(docGuid.equals("") ||  mp3Guid.equals("")){
	    	   hasError = true;
   	   		   errorStringUpload = "khong duoc de trong"; 
	       }
	       String [] dayDA = {cau1, cau2, cau3, cau4, cau5,cau6,cau7,cau8,cau9,cau10,cau11,cau12,cau13,cau14,cau15};
	       for(int i=0;i<dayDA.length;i++){
	    	   	if (dayDA[i].equals("")){
	    	   		hasError = true;
	    	   		errorString = "kiem tra lai phan dien dap an";
	    	   		break;
	    	   	}
	       }

	       if(hasError==true){
	    	   request.setAttribute("docGuid", docGuid);
	    	   request.setAttribute("mp3Guid", mp3Guid);
=======
					   }else {
						   hasError = true;
						   errorStringUpload = "File.pdf , audio.mp3";
					   }
				   }
				   if(!hasError){
	               // Ghi vào file.
	               part.write(filePath);
				   }
				   
	           }
	       }
	       String [] dayDA = {cau1, cau2, cau3, cau4, cau5,cau6,cau7,cau8,cau9,cau10,cau11,cau12,cau13,cau14,cau15};
	       for(int i=0;i<dayDA.length;i++){
	    	   	if (dayDA[i]==null){
	    	   		hasError = true;
	    	   		errorString = "kiem tra lai phan dien dap an";
	    	   		return;
	    	   	}
	       }
	       if(hasError){
>>>>>>> origin/master
	    	   request.setAttribute("errorString", errorString);
	    	   request.setAttribute("errorStringUpload", errorStringUpload);
	           request.setAttribute("user", loginedUser);
	           RequestDispatcher dispatcher //
<<<<<<< HEAD
	           = this.getServletContext().getRequestDispatcher("/CreateTest.jsp");
=======
	           = this.getServletContext().getRequestDispatcher("/CreatTest.jsp");
>>>>>>> origin/master
	           dispatcher.forward(request, response);
	       }else {
	    	   Connection conn = MyUtils.getStoredConnection(request);
	    	   String idUser = loginedUser.getIdUser();
	    	   try {
	    		   De de = new De(idUser,docGuid, mp3Guid);
	    		   DeUtils.insertDe(conn, de);
	    	   }catch(SQLException e){
	    		// TODO Auto-generated catch block
					e.printStackTrace();  
	    	   }
	    	   String idDe=null;
				try {
					idDe = DeUtils.timDe(conn, idUser, docGuid).getidDe();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
<<<<<<< HEAD
	    	   }
=======
				}
>>>>>>> origin/master
	    	   for(int i=0;i<dayDA.length;i++){
	    		   DapAn DA = new DapAn(idUser,""+i,dayDA[i],idDe);
		    	   try {
		    		   DeUtils.insertDA(conn, DA);
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
		       }
	    	   response.sendRedirect(request.getContextPath() + "/test");
	    	   return;
	       }
	   }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 doGet(request, response);
	}

<<<<<<< HEAD
=======
=======
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
>>>>>>> origin/master
>>>>>>> origin/master
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
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
	     

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 doGet(request, response);
	}
>>>>>>> origin/master
>>>>>>> origin/master
}