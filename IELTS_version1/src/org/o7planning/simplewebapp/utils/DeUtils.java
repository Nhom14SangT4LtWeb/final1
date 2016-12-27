package org.o7planning.simplewebapp.utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import UserAccount.De;
import UserAccount.Diem;
import UserAccount.TaiLieu;
import UserAccount.DapAn;

public class DeUtils {
	public static De timDe(Connection conn, String idUser) throws SQLException {
		  
	      String sql = "Select a.doc_guid, a.id_de , a.mp3_guid from de a "
	              + " where a.user_id = ? ORDER BY RAND() LIMIT 1";
	 
	      PreparedStatement pstm = conn.prepareStatement(sql);
	      pstm.setString(1, idUser);
	      ResultSet rs = pstm.executeQuery();
	 
	      if (rs.next()) {
	          String idDe = rs.getString("id_de");
	          String docGuid = rs.getString("doc_guid");
	          String mp3Guid = rs.getString("mp3_guid");
	          De de = new De();
	          de.setdocGuid(docGuid);
	          de.setidDe(idDe);
	          de.setidUser(idUser);
	          de.setmp3Guid(mp3Guid);
	          return de;
	      }
	      return null;
	  }
	public static De timDe(Connection conn, String idUser, String docGuid) throws SQLException {
		String sql = "Select a.doc_guid, a.id_de , a.mp3_guid from de a "
	              + " where a.user_id = ? and a.doc_guid = ?";
	 
	      PreparedStatement pstm = conn.prepareStatement(sql);
	      pstm.setString(1, idUser);
	      pstm.setString(2, docGuid);
	      ResultSet rs = pstm.executeQuery();
	 
	      if (rs.next()) {
	          String idDe = rs.getString("id_de");
	          String mp3Guid = rs.getString("mp3_guid");
	          De de = new De();
	          de.setdocGuid(docGuid);
	          de.setidDe(idDe);
	          de.setidUser(idUser);
	          de.setmp3Guid(mp3Guid);
	          return de;
	      }
	      return null;
	}
	 public static void insertDe(Connection conn, De de) throws SQLException {
		  String sql = "Insert into de(user_id, doc_guid, mp3_guid) values (?,?,?)";
		  PreparedStatement pstm = conn.prepareStatement(sql);
		  pstm.setString(1, de.getidUser());
		  pstm.setString(2, de.getdocGuid());
		  pstm.setString(3, de.getmp3Guid());
		  pstm.executeUpdate();
	}
	 public static void updateDe(Connection conn, De de) throws SQLException {
	      String sql = "Update de set doc_guid = ? , mp3_guid = ?  where user_id = ? ";
	 
	      PreparedStatement pstm = conn.prepareStatement(sql);
	 
	      pstm.setString(1, de.getdocGuid());
	      pstm.setString(2,de.getmp3Guid());
	      pstm.setString(3, de.getidUser());
	      pstm.executeUpdate();
	  }
	 public static DapAn timDA(Connection conn, String idUser, String causo, String idDe ) throws SQLException {
		  
	      String sql = "Select a.causo, a.dapan_id, a.user_id, a.dapan, a.id_de from dapantest a "
	              + " where a.user_id = ? and a.causo = ? and a.id_de = ? ";
	 
	      PreparedStatement pstm = conn.prepareStatement(sql);
	      pstm.setString(1, idUser);
	      pstm.setString(2, causo);
	      pstm.setString(3, idDe);
	      ResultSet rs = pstm.executeQuery();
	 
	      if (rs.next()) {
	          String idDA = rs.getString("dapan_id");
	          String dapan = rs.getString("dapan");
	          DapAn DA = new DapAn();
	          DA.setidDA(idDA);
	          DA.setidDe(idDe);
	          DA.setidUse(idUser);
	          DA.setcauSo(causo);
	          DA.setdapAn(dapan);
	          return DA;
	      }
	      return null;
	  }
	 public static void insertDA(Connection conn, DapAn DA) throws SQLException {
		 String sql = "Insert into dapantest(user_id, causo, dapan, id_de) values (?,?,?,?)";
		 PreparedStatement pstm = conn.prepareStatement(sql);
		 pstm.setString(1, DA.getidUser());
		 pstm.setString(2, DA.getcauSo());
		 pstm.setString(3, DA.getdapAn());
		 pstm.setString(4, DA.getidDe());
		 pstm.executeUpdate();
	 }
	 public static void updateDA(Connection conn, DapAn DA) throws SQLException {
		 String sql = "Update dapantest set dapan = ? where causo = ? and user_id = ? and id_de = ? ";
		 PreparedStatement pstm = conn.prepareStatement(sql);
		 pstm.setString(1, DA.getdapAn());
		 pstm.setString(2, DA.getcauSo());
		 pstm.setString(3, DA.getidUser());
		 pstm.setString(4, DA.getidDe());
		 pstm.executeUpdate();
	 }
	 public static List<Diem> queryDiem(Connection conn, String idUser) throws SQLException {
	      String sql = "Select * from bangdiem a "
	      		+ " where a.user_id = ?";
	      PreparedStatement pstm = conn.prepareStatement(sql);
	      pstm.setString(1, idUser);
	      ResultSet rs = pstm.executeQuery();
	      List<Diem> list = new ArrayList<Diem>();
	      while (rs.next()) {
	    	  String idDiem = rs.getString("id_diem");
	          String diem = rs.getString("diem");
	          String ngay =rs.getString("ngaythi");

	          Diem Diems = new Diem();
	          Diems.setidDiem(idDiem);
	          Diems.setdiem(diem);
	          Diems.setidUser(idUser);
	          Diems.setngay(ngay);
	          list.add(Diems);
	      }
	      return list;
	  }
	 public static void insertDiem(Connection conn, Diem Diem) throws SQLException {
		 String sql = "Insert into bangdiem(id_diem, user_id, diem, ngaythi) values (?,?,?,?)";
		 PreparedStatement pstm = conn.prepareStatement(sql);
		 pstm.setString(1, Diem.getidDiem());
		 pstm.setString(2, Diem.getidUser());
		 pstm.setString(3, Diem.getdiem());
		 pstm.setString(4, Diem.getngay());
		 pstm.executeUpdate();
	 }
}
