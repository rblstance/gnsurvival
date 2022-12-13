package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBManager {
	
	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","c##system","1234");
			System.out.println("DB success");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("DB fail");
		}
		return conn;
	}

}
