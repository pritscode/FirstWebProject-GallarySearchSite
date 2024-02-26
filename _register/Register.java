package individual_project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Register {
	
	private static final String URL = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	private static final String DB_ID = "java";
	private static final String DB_PW = "oracle";
	
	public static boolean updateUser(String id, String password) {
				Connection conn = null;
				PreparedStatement ps = null;
				try {
					Class.forName("oracle.jbdc.driver.OracleDriver");
					conn = DriverManager.getConnection(URL, DB_ID, DB_PW);
					System.out.println("Driver registration successful");
					StringBuffer query = new StringBuffer();
					query.append("INSERT INTO user_inform(id, password)");
					query.append("VALUES (?,?)");
					ps = conn.prepareStatement(query.toString());
					ps.setString(1, ##);
					ps.setString(2, ##);
					int cnt = ps.executeUpdate();
					return cnt > 0;
				} catch (SQLException | ClassNotFoundException e) {
					e.printStackTrace();
					return false;
				} finally {
					if (ps != null) {
						try {
							ps.close();
						} catch (SQLException e) {
							e.printStackTrace();
						}
					}
					if (conn != null) {
						try {
							conn.close();
						} catch (SQLException e) {
							e.printStackTrace();
						}
					}
				}
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		boolean result = updateUser(id, password);
		if(result) {
			System.out.println("Registration successful");
		}else {
			System.out.println("Registration failed");
		}
	}

}
