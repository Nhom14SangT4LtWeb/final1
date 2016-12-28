package org.o7planning.simplewebapp.conn;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
 
public class MySQLConnUtils {
	public static Connection getMySQLConnection()
	        throws ClassNotFoundException, SQLException {
	    
	    // Chú ý: Thay đổi các thông số kết nối cho phù hợp.
	    String hostName = "localhost";
	    String dbName = "ielts";
	    String userName = "root";
	    String password = "12345678";
	    return getMySQLConnection(hostName, dbName, userName, password);
	}
	 
	public static Connection getMySQLConnection(String hostName, String dbName,
	        String userName, String password) throws SQLException,
	        ClassNotFoundException {
	    // Khai báo class Driver cho DB MySQL
	    Class.forName("com.mysql.jdbc.Driver");
	 
	    // Cấu trúc URL Connection dành cho MySQL
	    String connectionURL = "jdbc:mysql://localhost:3306/ielts?useUnicode=true&characterEncoding=UTF-8";
	 
	    Connection conn = DriverManager.getConnection(connectionURL, userName, password);
	    return conn;
	}
}
