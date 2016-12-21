package org.o7planning.simplewebapp.utils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import UserAccount.TaiLieu;
public class TaiLieuUtils {
	public static List<TaiLieu> queryTaiLieu(Connection conn) throws SQLException {
	      String sql = "Select a.doc_id, a.doc_name, a.doc_categ, a.doc_guid, a.upload_date, a.user_id, a.fold_id, a.shared, a.downloaded from documents a ";
	 
	      PreparedStatement pstm = conn.prepareStatement(sql);
	 
	      ResultSet rs = pstm.executeQuery();
	      List<TaiLieu> list = new ArrayList<TaiLieu>();
	      while (rs.next()) {
	    	  String doc_id = rs.getString("doc_id");
	    	  String doc_name =rs.getString("doc_name");
	          String doc_categ = rs.getString("doc_categ");
	          String doc_guid =rs.getString("doc_guid");
	          String upload_date =rs.getString("upload_date");
	          String user_id = rs.getString("user_id");
	          String fold_id = rs.getString("fold_id");
	          String shared = rs.getString("shared");
	          String downloaded = rs.getString("downloaded");

	          TaiLieu Docs = new TaiLieu();
	          Docs.setdoc_id(doc_id);
	          Docs.setdoc_name(doc_name);
	          Docs.setdoc_categ(doc_categ);
	          Docs.setdoc_guid(doc_guid);
	          Docs.setupload_date(upload_date);
	          Docs.setuser_id(user_id);
	          Docs.setfold_id(fold_id);
	          Docs.setshared(shared);
	          Docs.setdownloaded(downloaded);
	          list.add(Docs);
	      }
	      return list;
	  }
	public static List<TaiLieu> queryTaiLieu(Connection conn, String danhmuc, String user_id) throws SQLException {
	      String sql = "Select a.doc_id, a.doc_name, a.doc_categ, a.doc_guid, a.upload_date, a.user_id, a.fold_id, a.shared, a.downloaded from documents a "
	      		+ " where a.doc_guid LIKE ? and a.user_id = ? ";
	      PreparedStatement pstm = conn.prepareStatement(sql);
	      pstm.setString(1, danhmuc);
	      pstm.setString(2, user_id);
	      ResultSet rs = pstm.executeQuery();
	      List<TaiLieu> list = new ArrayList<TaiLieu>();
	      while (rs.next()) {
	    	  String doc_id = rs.getString("doc_id");
	    	  String doc_name =rs.getString("doc_name");
	          String doc_categ = rs.getString("doc_categ");
	          String doc_guid =rs.getString("doc_guid");
	          String upload_date =rs.getString("upload_date");
	          String fold_id = rs.getString("fold_id");
	          String shared = rs.getString("shared");
	          String downloaded = rs.getString("downloaded");

	          TaiLieu Docs = new TaiLieu();
	          Docs.setdoc_id(doc_id);
	          Docs.setdoc_name(doc_name);
	          Docs.setdoc_categ(doc_categ);
	          Docs.setdoc_guid(doc_guid);
	          Docs.setupload_date(upload_date);
	          Docs.setuser_id(user_id);
	          Docs.setfold_id(fold_id);
	          Docs.setshared(shared);
	          Docs.setdownloaded(downloaded);
	          list.add(Docs);
	      }
	      return list;
	  }
	  public static TaiLieu findDocs(Connection conn, String doc_name) throws SQLException {
		  
	      String sql = "Select a.doc_name, a.doc_categ, a.doc_guid, a.upload_date from documents a "
	              + " where a.doc_name = ?";
	 
	      PreparedStatement pstm = conn.prepareStatement(sql);
	      pstm.setString(1, doc_name);
	      ResultSet rs = pstm.executeQuery();
	 
	      if (rs.next()) {
	          String doc_categ = rs.getString("doc_categ");
	          String doc_guid = rs.getString("doc_guid");
	          String upload_date =rs.getString("upload_date");
	          TaiLieu docs = new TaiLieu();
	          docs.setdoc_name(doc_name);
	          docs.setdoc_categ(doc_categ);
	          docs.setdoc_guid(doc_guid);
	          docs.setupload_date(upload_date);
	          return docs;
	      }
	      return null;
	  }
	  public static void insertDocs(Connection conn, TaiLieu docs) throws SQLException {
		  String sql = "Insert into documents(doc_name,doc_categ, doc_guid,  upload_date, user_id) values (?,?,?,?,?)";
		  PreparedStatement pstm = conn.prepareStatement(sql);
		  pstm.setString(1, docs.getdoc_name());
		  pstm.setString(2, docs.getdoc_categ());
		  pstm.setString(3, docs.getdoc_guid());
		  pstm.setString(4, docs.getupload_date());
		  pstm.setString(5, docs.getuser_id());
		  pstm.executeUpdate();
	}
	  public static void updateTimeShareDownload(Connection conn, TaiLieu docs) throws SQLException {
	      String sql = "Update documents set shared=? , downloaded=?where doc_id=? ";
	 
	      PreparedStatement pstm = conn.prepareStatement(sql);
	 
	      pstm.setString(1, docs.getshared());
	      pstm.setString(2, docs.getdownloaded());
	      pstm.setString(3, docs.getdoc_id());
	      pstm.executeUpdate();
	  }
	  public static boolean findExtendFile(String fname, String extendFile ) {
		  return fname.contains("extendFile");
	  }
	public static void deleteDocs(Connection conn, String doc_id) throws SQLException{
		String sql = "delete from documents where doc_id = ?";
		 PreparedStatement pstm = conn.prepareStatement(sql);
	      pstm.setString(1, doc_id);
	      pstm.executeUpdate();
	  }
} 