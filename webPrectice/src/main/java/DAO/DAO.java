package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


public class DAO {
	String protocol = "jdbc:mysql://";
	String ip = "127.0.0.1";
	String port = "3307";
	String db = "member";
	
	Connection con;
	Statement stmt;
	ResultSet rs;
	String sql;
	
	private String driver = "com.mysql.cj.jdbc.Driver";
	private String url = String.format("%s%s:%s/%s", protocol, ip, port, db);
	private String user = "root";
	private String password = "qmfflwkem2";
	
	public DAO(){
		try {
			
			Class.forName(driver);
			//		db연동 Connect
			con = DriverManager.getConnection(url, user, password);
			
			stmt = con.createStatement();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<Member_DTO> list(int marriage){
		ArrayList<Member_DTO> res = new ArrayList<Member_DTO>();
		sql = "SELECT * FROM member WHERE marriage = " + marriage;

		try {
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				Member_DTO dto = new Member_DTO();
				dto.setPid(rs.getString("pid"));
				dto.setPname(rs.getString("pname"));
				dto.setAge(rs.getInt("age"));
				dto.setMarriage(rs.getInt("marriage"));
				dto.setReg_date(rs.getTimestamp("reg_date"));
				System.out.println(dto);
				res.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return res;
	}
	
	public void close() {
		if(rs!=null)  try {rs.close();}   catch (SQLException e) {e.printStackTrace();}
		if(stmt!=null)try {stmt.close();} catch (SQLException e) {e.printStackTrace();}
		if(con!=null) try {con.close();}  catch (SQLException e) {e.printStackTrace();}
	}
}
