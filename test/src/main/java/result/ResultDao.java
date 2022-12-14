package result;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;

import util.DBManager;

public class ResultDao {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private String[] vehicle = {"지하철", "버스", "기차", "비행기"};
	private String[] weapon_out = {"쇠파이프", "나무 막대기", "술병", "개업 홍보 물티슈", "플라스틱 음료컵", "변신 마법봉"};
	private String[] weapon_in = {"500쪽짜리 문제집", "형광펜", "보온병"};
	
	private ResultDao() {};
	private static ResultDao instance = new ResultDao();
	public static ResultDao getInstance() {
		return instance;
	}
	
	// CREATE
	public void addResult(int code, String name) {
		String sql = "insert into result(code, name, vehicle, regdate) values(?,?,?,?)";
		try {
			this.conn = DBManager.getConnection();
			this.pstmt = this.conn.prepareStatement(sql);
			
			int rNum = (int)(Math.random()*vehicle.length);
			String vehi = vehicle[rNum];
			LocalDate now = LocalDate.now();
			String regdate = String.valueOf(now);
			
			this.pstmt.setInt(1, code);
			this.pstmt.setString(2, name);
			this.pstmt.setString(3, vehi);
			this.pstmt.setString(4, regdate);
			this.pstmt.execute();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				this.pstmt.close();
				this.conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	// create num
	public int getNum() {
		int result = 0;
		String sql = "select max(code) from result";
		try {
			this.conn = DBManager.getConnection();
			this.pstmt = this.conn.prepareStatement(sql);
			this.rs = this.pstmt.executeQuery();
			if(this.rs.next()) {
				result = this.rs.getInt(1) + 1;
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
	// READ
	public ResultDto getResult(String code) {
		int c = Integer.parseInt(code);
		ResultDto result = null;
		String sql = "select * from result where code=?";
		try {
			this.conn = DBManager.getConnection();
			this.pstmt = this.conn.prepareStatement(sql);
			this.pstmt.setInt(1, c);
			this.rs = this.pstmt.executeQuery();
			if(this.rs.next()) {
				String name = this.rs.getString(2);
				String vehicle = this.rs.getString(3);
				String name2 = this.rs.getString(4);
				String weapon = this.rs.getString(5);
				String question = this.rs.getString(6);
				String character = this.rs.getString(7);
				String regdate = this.rs.getString(8);
				String inout = this.rs.getString(9);
				int q_1 = this.rs.getInt(10);
				int q_2 = this.rs.getInt(11);
				int q_3 = this.rs.getInt(12);
				int q_4 = this.rs.getInt(13);
				int q_5 = this.rs.getInt(14);
				int q_6 = this.rs.getInt(15);
				int q_7 = this.rs.getInt(16);
				int q_8 = this.rs.getInt(17);
				int q_9 = this.rs.getInt(18);
				
				result = new ResultDto(c, name, vehicle, name2, weapon, question, character, regdate, inout, q_1, q_2, q_3, q_4, q_5, q_6, q_7, q_8, q_9);
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
	
	// UPDATE
	// q_1
	public void updateQ1(String code, int answer) {
		int c = Integer.parseInt(code);
		String sql = "update result set q_1=? where code=?";
		try {
			this.conn = DBManager.getConnection();
			this.pstmt = this.conn.prepareStatement(sql);
			this.pstmt.setInt(1, answer);
			this.pstmt.setInt(2, c);
			this.pstmt.execute();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				this.pstmt.close();
				this.conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	// q_2
	public void updateQ2(String code, int answer) {
		int c = Integer.parseInt(code);
		String sql = "update result set q_2=? where code=?";
		try {
			this.conn = DBManager.getConnection();
			this.pstmt = this.conn.prepareStatement(sql);
			this.pstmt.setInt(1, answer);
			this.pstmt.setInt(2, c);
			this.pstmt.execute();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				this.pstmt.close();
				this.conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	// q_3
	public void updateQ3(String code, int answer) {
		int c = Integer.parseInt(code);
		String sql = "update result set q_3=? where code=?";
		try {
			this.conn = DBManager.getConnection();
			this.pstmt = this.conn.prepareStatement(sql);
			this.pstmt.setInt(1, answer);
			this.pstmt.setInt(2, c);
			this.pstmt.execute();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				this.pstmt.close();
				this.conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	// name2
	public void updateName2(String code, String answer) {
		int c = Integer.parseInt(code);
		String sql = "update result set name2=? where code=?";
		try {
			this.conn = DBManager.getConnection();
			this.pstmt = this.conn.prepareStatement(sql);
			this.pstmt.setString(1, answer);
			this.pstmt.setInt(2, c);
			this.pstmt.execute();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				this.pstmt.close();
				this.conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	// q_4
	public void updateQ4(String code, int answer, int inout) {
		int c = Integer.parseInt(code);
		String weapon = null;
		if(inout == 1) {
			int rNum = (int)(Math.random()*weapon_out.length);
			weapon = weapon_out[rNum];
		} else {
			int rNum = (int)(Math.random()*weapon_in.length);
			weapon = weapon_in[rNum];
		}
		String sql = "update result set q_4=?, inoutt=?, weapon=? where code=?";
		try {
			this.conn = DBManager.getConnection();
			this.pstmt = this.conn.prepareStatement(sql);
			this.pstmt.setInt(1, answer);
			this.pstmt.setInt(2, inout);
			this.pstmt.setString(3, weapon);
			this.pstmt.setInt(4, c);
			this.pstmt.execute();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				this.pstmt.close();
				this.conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	// q_5
	public void updateQ5(String code, int answer) {
		int c = Integer.parseInt(code);
		String sql = "update result set q_5=? where code=?";
		try {
			this.conn = DBManager.getConnection();
			this.pstmt = this.conn.prepareStatement(sql);
			this.pstmt.setInt(1, answer);
			this.pstmt.setInt(2, c);
			this.pstmt.execute();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				this.pstmt.close();
				this.conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	// q_6
	public void updateQ6(String code, int answer) {
		int c = Integer.parseInt(code);
		String sql = "update result set q_6=? where code=?";
		try {
			this.conn = DBManager.getConnection();
			this.pstmt = this.conn.prepareStatement(sql);
			this.pstmt.setInt(1, answer);
			this.pstmt.setInt(2, c);
			this.pstmt.execute();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				this.pstmt.close();
				this.conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	// q_7
	public void updateQ7(String code, int answer) {
		int c = Integer.parseInt(code);
		String sql = "update result set q_7=? where code=?";
		try {
			this.conn = DBManager.getConnection();
			this.pstmt = this.conn.prepareStatement(sql);
			this.pstmt.setInt(1, answer);
			this.pstmt.setInt(2, c);
			this.pstmt.execute();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				this.pstmt.close();
				this.conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	// q_8
	public void updateQ8(String code, int answer) {
		int c = Integer.parseInt(code);
		String sql = "update result set q_8=? where code=?";
		try {
			this.conn = DBManager.getConnection();
			this.pstmt = this.conn.prepareStatement(sql);
			this.pstmt.setInt(1, answer);
			this.pstmt.setInt(2, c);
			this.pstmt.execute();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				this.pstmt.close();
				this.conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	// q_9
	public void updateQ9(String code, int answer) {
		int c = Integer.parseInt(code);
		String sql = "update result set q_9=? where code=?";
		try {
			this.conn = DBManager.getConnection();
			this.pstmt = this.conn.prepareStatement(sql);
			this.pstmt.setInt(1, answer);
			this.pstmt.setInt(2, c);
			this.pstmt.execute();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				this.pstmt.close();
				this.conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	// question & character
	public void updateResult(String code, String question, String character) {
		int c = Integer.parseInt(code);
		String sql = "update result set question=?, characterr=? where code=?";
		try {
			this.conn = DBManager.getConnection();
			this.pstmt = this.conn.prepareStatement(sql);
			this.pstmt.setString(1, question);
			this.pstmt.setString(2, character);
			this.pstmt.setInt(3, c);
			this.pstmt.execute();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				this.pstmt.close();
				this.conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
}
