package org.o7planning.simplewebapp.utils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import UserAccount.TaiKhoaNguoiDung;
public class DBUtils {
	public static List<TaiKhoaNguoiDung> queryProduct(Connection conn) throws SQLException {
	      String sql = "Select a.username, a.pass, a.fullname, a.email, a.telephone, a.nationaly, a.date_of_birth, a.user_role, a.ativation_date, a.avatar, a.active, a.public_time from users a ";
	 
	      PreparedStatement pstm = conn.prepareStatement(sql);
	 
	      ResultSet rs = pstm.executeQuery();
	      List<TaiKhoaNguoiDung> list = new ArrayList<TaiKhoaNguoiDung>();
	      while (rs.next()) {
	    	  String fullName = rs.getString("fullname");
	    	  String userName =rs.getString("username");
	          String email = rs.getString("email");
	          String password =rs.getString("pass");
	          String telephone =rs.getString("telephone");
	          String nationaly = rs.getString("nationaly");
	          String dateOfBirth = rs.getString("date_of_birth");
	          String userRole = rs.getString("user_role");
	          String ativationDate = rs.getString("ativation_date");
	          String avatar = rs.getString("avatar");
	          String active = rs.getString("active");
	          String publicDate = rs.getString("public_time");
	          TaiKhoaNguoiDung user = new TaiKhoaNguoiDung();
	          user.setUserName(userName);
	          user.setPassword(password);
	          user.setFullName(fullName);
	          user.setEmail(email);
	          user.setTelephone(telephone);
	          user.setNationaly(nationaly);
	          user.setDateOfBirth(dateOfBirth);
	          user.setUserRole(userRole);
	          user.setAtivationDate(ativationDate);
	          user.setAvatar(avatar);
	          user.setActive(active);
	          user.setPublicDate(publicDate);
	          list.add(user);
	      }
	      return list;
	  }
	  public static TaiKhoaNguoiDung findUser(Connection conn, String userName, String password) throws SQLException {
		  
	      String sql = "Select a.username, a.pass, a.fullname, a.email, a.telephone, a.nationaly, a.date_of_birth, a.user_role, a.ativation_date, a.avatar, a.active, a.public_time from users a "
	              + " where a.username = ? and a.pass= ?";
	 
	      PreparedStatement pstm = conn.prepareStatement(sql);
	      pstm.setString(1, userName);
	      pstm.setString(2, password);
	      ResultSet rs = pstm.executeQuery();
	 
	      if (rs.next()) {
	          String fullName = rs.getString("fullname");
	          String email = rs.getString("email");
	          String telephone =rs.getString("telephone");
	          String nationaly = rs.getString("nationaly");
	          String dateOfBirth = rs.getString("date_of_birth");
	          String userRole = rs.getString("user_role");
	          String ativationDate = rs.getString("ativation_date");
	          String avatar = rs.getString("avatar");
	          String active = rs.getString("active");
	          String publicDate = rs.getString("public_time");
	          TaiKhoaNguoiDung user = new TaiKhoaNguoiDung();
	          user.setUserName(userName);
	          user.setPassword(password);
	          user.setFullName(fullName);
	          user.setEmail(email);
	          user.setTelephone(telephone);
	          user.setNationaly(nationaly);
	          user.setDateOfBirth(dateOfBirth);
	          user.setUserRole(userRole);
	          user.setAtivationDate(ativationDate);
	          user.setAvatar(avatar);
	          user.setActive(active);
	          user.setPublicDate(publicDate);
	          return user;
	      }
	      return null;
	  }
	  public static TaiKhoaNguoiDung checkActiveUser(Connection conn, String userName, int flag) throws SQLException{
		  String sql ="Select a.username from users a"
		  		+ " where a.username = ? and a.active = ?";
		  PreparedStatement pstm = conn.prepareStatement(sql);
		  pstm.setString(1, userName);
		  pstm.setInt(2, flag);
		  ResultSet rs = pstm.executeQuery();
		  if(rs.next()){
			  String username = rs.getString("username");
			  TaiKhoaNguoiDung user =new TaiKhoaNguoiDung();
			  user.setUserName(username);
			  return user;
		  }
		  return null;
	  }
	  public static TaiKhoaNguoiDung checkUniqueEmail(Connection conn, String emailRegis)throws SQLException{
		  String sql ="Select a.email from users a"
		  		+ " where a.email = ?";
		  PreparedStatement pstm = conn.prepareStatement(sql);
		  pstm.setString(1,emailRegis);
		  ResultSet rs = pstm.executeQuery();
		  if(rs.next()){
			  String Email = rs.getString("email");
			  TaiKhoaNguoiDung user = new TaiKhoaNguoiDung();
			  user.setEmail(Email);
			  return user;
		  }
		  return null;
	  }
	  public static TaiKhoaNguoiDung checkUniqueUserName(Connection conn, String userNameRegis)throws SQLException{
		  String sql ="Select a.username from users a"
		  		+ " where a.username = ?";
		  PreparedStatement pstm = conn.prepareStatement(sql);
		  pstm.setString(1,userNameRegis);
		  ResultSet rs = pstm.executeQuery();
		  if(rs.next()){
			  String username = rs.getString("username");
			  TaiKhoaNguoiDung user =new TaiKhoaNguoiDung();
			  user.setUserName(username);
			  return user;
		  }
		  return null;
	  }
	  public static TaiKhoaNguoiDung findUser(Connection conn, String userName) throws SQLException {
		  
		  String sql = "Select a.user_id, a.username, a.pass, a.fullname, a.email, a.telephone, a.nationaly, a.date_of_birth, a.user_role, a.ativation_date, a.avatar, a.active, a.public_time from users a "
		              + " where a.username = ?";
	 
	      PreparedStatement pstm = conn.prepareStatement(sql);
	      pstm.setString(1, userName);
	 
	      ResultSet rs = pstm.executeQuery();
	 
	      if (rs.next()) {
	    	  String user_id = rs.getString("user_id");
	          String password = rs.getString("pass");
	          String fullName = rs.getString("fullname");
	          String email = rs.getString("email");
	          String telephone =rs.getString("telephone");
	          String nationaly = rs.getString("nationaly");
	          String dateOfBirth = rs.getString("date_of_birth");
	          String userRole = rs.getString("user_role");
	          String ativationDate = rs.getString("ativation_date");
	          String avatar = rs.getString("avatar");
	          String active = rs.getString("active");
	          String publicDate = rs.getString("public_time");
	          TaiKhoaNguoiDung user = new TaiKhoaNguoiDung();
	          user.setIdUser(user_id);
	          user.setUserName(userName);
	          user.setPassword(password);
	          user.setPassword(password);
	          user.setFullName(fullName);
	          user.setEmail(email);
	          user.setTelephone(telephone);
	          user.setNationaly(nationaly);
	          user.setDateOfBirth(dateOfBirth);
	          user.setUserRole(userRole);
	          user.setAtivationDate(ativationDate);
	          user.setAvatar(avatar);
	          user.setActive(active);
	          user.setPublicDate(publicDate);
	          return user;
	      }
	      return null;
	  }

	  public static void insertUser(Connection conn, TaiKhoaNguoiDung user) throws SQLException {
		  String sql = "Insert into users(fullname,username, email, pass, user_role, ativation_date, active, public_time) values (?,?,?,?,?,?,?,?)";
		  PreparedStatement pstm = conn.prepareStatement(sql);
		  pstm.setString(1, user.getFullName());
		  pstm.setString(2, user.getUserName());
		  pstm.setString(3, user.getEmail());
		  pstm.setString(4, user.getPassword());
		  pstm.setString(5, user.getUserRole());
		  pstm.setString(6, user.getAtivationDate());
		  pstm.setString(7, user.getActive());
		  pstm.setString(8, user.getPublicDate());
		  pstm.executeUpdate();
	}
	 public static void updatePublicDateUser(Connection conn, TaiKhoaNguoiDung user) throws SQLException{
		 String sql = "Update users set public_time = ? where username = ?";
		 PreparedStatement pstm = conn.prepareStatement(sql);
		 pstm.setString(1, user.getPublicDate());
		 pstm.setString(2, user.getUserName());
		 pstm.executeUpdate();
	 }	 
}
