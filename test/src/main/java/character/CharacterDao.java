package character;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import util.DBManager;

public class CharacterDao {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private CharacterDao() {};
	private static CharacterDao instance = new CharacterDao();
	public static CharacterDao getInstance() {
		return instance;
	}
	
	// READ
	public CharacterDto getCharacter(String code) {
		CharacterDto result = null;
		String sql = "select * from character where code=?";
		try {
			this.conn = DBManager.getConnection();
			this.pstmt = this.conn.prepareStatement(sql);
			this.pstmt.setString(1, code);
			this.rs = this.pstmt.executeQuery();
			
			if(this.rs.next()) {
				code = this.rs.getString(1);
				String name = this.rs.getString(2);
				String quote = this.rs.getString(3);
				String explain = this.rs.getString(4);				
				result = new CharacterDto(code, name, quote, explain);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				this.rs.close();
				this.pstmt.close();
				this.conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}

}
