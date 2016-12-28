package org.o7planning.simplewebapp.utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.o7planning.simplewebapp.conn.DBConnect;

import UserAccount.TaiKhoaNguoiDung;

public class Taikhoan {
	
 Connection conn=DBConnect.getConnection();
	
	
	
	public  ArrayList<TaiKhoaNguoiDung> Listuser() throws SQLException {
	        //String sql = "Select a.username, a.pass, a.fullname, a.email, a.telephone, a.nationaly, a.date_of_birth, a.user_role, a.ativation_date, a.avatar, a.active, a.public_time from users a ";
	 	  String sql="select * from users";
	 
	 	 PreparedStatement pstm=conn.prepareCall(sql);
	 
	      ResultSet rs = pstm.executeQuery();
	      ArrayList<TaiKhoaNguoiDung> list = new ArrayList<>();
	      while (rs.next()) {
	    	
	          TaiKhoaNguoiDung user = new TaiKhoaNguoiDung();
	          user.setFullName(rs.getString("fullname"));
	          user.setUserName(rs.getString("username"));
	          user.setEmail(rs.getString("email"));
	          user.setTelephone(rs.getString("telephone"));
	          user.setNationaly(rs.getString("nationaly"));
	          user.setDateOfBirth(rs.getString("date_of_birth"));
	          user.setUserRole(rs.getString("user_role"));
	          user.setAtivationDate(rs.getString("activation_date"));
	          user.setAvatar(rs.getString("avatar"));
	          user.setActive(rs.getString("active"));
	        
	         
	          user.setPublicDate(rs.getString("public_time"));
	          
	          
	          list.add(user);
	      }
	      return list;}
	     
	  }


