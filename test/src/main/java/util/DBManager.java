package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBManager {
	
	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://34.64.56.162:3306/test";
			conn = DriverManager.getConnection(url, "root", "PGZn-8f?\\#GrI\"6h");
			System.out.println("DB success");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("DB fail");
		}
		return conn;
	}

}
