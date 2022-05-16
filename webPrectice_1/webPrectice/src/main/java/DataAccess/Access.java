package DataAccess;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Access {
	String protocol = "jdbc:mysql://";
	String ip = "127.0.0.1";
	String port = "3307";
	String db = "othercock";
	/*
	 * 		mariaDB와 연동, driver org.Driver
	 * 		protocol url, id, pw
	 */
	private Connection conn;
	private String driver = "com.mysql.cj.jdbc.Driver";
	private String url = String.format("%s%s:%s/%s", protocol, ip, port, db);
	private String user = "root";
	private String password = "qmfflwkem2";
	
	public Access(){
		try {
			
			Class.forName(driver);
			//		db연동 Connect
			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
